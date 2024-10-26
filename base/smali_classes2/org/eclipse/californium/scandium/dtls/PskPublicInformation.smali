.class public final Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
.super Lorg/eclipse/californium/elements/util/Bytes;
.source "PskPublicInformation.java"


# static fields
.field public static final EMPTY:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

.field private static final MAX_LENGTH:I = 0xffff


# instance fields
.field private compliantEncoding:Z

.field private publicInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->EMPTY:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    const v1, 0xffff

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([BIZ)V

    .line 83
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->publicInfo:Ljava/lang/String;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->compliantEncoding:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    const v0, 0xffff

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([BIZ)V

    .line 104
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->publicInfo:Ljava/lang/String;

    .line 105
    sget-object v0, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->compliantEncoding:Z

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public static fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    if-eqz p0, :cond_1

    .line 169
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;-><init>([B)V

    return-object v0

    .line 170
    :cond_1
    :goto_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->EMPTY:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object p0
.end method


# virtual methods
.method public getPublicInfoAsString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->publicInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isCompliantEncoding()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->compliantEncoding:Z

    return v0
.end method

.method public normalize(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->publicInfo:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->getBytes()[B

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->compliantEncoding:Z

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public information must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "public information must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->compliantEncoding:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->publicInfo:Ljava/lang/String;

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->publicInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
