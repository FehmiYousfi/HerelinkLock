.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;
.super Ljava/lang/Enum;
.source "PseudoRandomFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

.field public static final enum CLIENT_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

.field public static final enum EXTENDED_MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

.field public static final enum KEY_EXPANSION_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

.field public static final enum MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

.field public static final enum SERVER_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;


# instance fields
.field private final bytesValue:[B

.field private final length:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const-string v3, "MASTER_SECRET_LABEL"

    const-string v4, "master secret"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    .line 48
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    const/4 v3, 0x1

    const-string v4, "KEY_EXPANSION_LABEL"

    const-string v5, "key expansion"

    const/16 v6, 0x80

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->KEY_EXPANSION_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    .line 51
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    const/16 v4, 0xc

    const/4 v5, 0x2

    const-string v6, "CLIENT_FINISHED_LABEL"

    const-string v7, "client finished"

    invoke-direct {v0, v6, v5, v7, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->CLIENT_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    .line 54
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    const/4 v6, 0x3

    const-string v7, "SERVER_FINISHED_LABEL"

    const-string v8, "server finished"

    invoke-direct {v0, v7, v6, v8, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->SERVER_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    .line 57
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    const/4 v4, 0x4

    const-string v7, "EXTENDED_MASTER_SECRET_LABEL"

    const-string v8, "extended master secret"

    invoke-direct {v0, v7, v4, v8, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->EXTENDED_MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    .line 40
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->KEY_EXPANSION_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->CLIENT_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->SERVER_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->EXTENDED_MASTER_SECRET_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->value:Ljava/lang/String;

    .line 65
    sget-object p1, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->bytesValue:[B

    .line 66
    iput p4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->length:I

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;)[B
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private getBytes()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->bytesValue:[B

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;
    .locals 1

    .line 40
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;
    .locals 1

    .line 40
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    return-object v0
.end method


# virtual methods
.method public length()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->length:I

    return v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->value:Ljava/lang/String;

    return-object v0
.end method
