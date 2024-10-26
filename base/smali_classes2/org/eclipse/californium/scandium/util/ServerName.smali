.class public Lorg/eclipse/californium/scandium/util/ServerName;
.super Ljava/lang/Object;
.source "ServerName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/util/ServerName$NameType;
    }
.end annotation


# static fields
.field public static final CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private final hashCode:I

.field private final name:[B

.field private final type:Lorg/eclipse/californium/scandium/util/ServerName$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/eclipse/californium/elements/util/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/eclipse/californium/scandium/util/ServerName;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/eclipse/californium/scandium/util/ServerName;->type:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    .line 41
    iput-object p2, p0, Lorg/eclipse/californium/scandium/util/ServerName;->name:[B

    .line 42
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result p2

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lorg/eclipse/californium/scandium/util/ServerName;->hashCode:I

    return-void
.end method

.method public static from(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)Lorg/eclipse/californium/scandium/util/ServerName;
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 61
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    if-ne p0, v0, :cond_0

    .line 62
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p0}, Lorg/eclipse/californium/scandium/util/ServerName;->fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerName;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/scandium/util/ServerName;-><init>(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)V

    return-object v0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromHostName(Ljava/lang/String;)Lorg/eclipse/californium/scandium/util/ServerName;
    .locals 3

    if-eqz p0, :cond_1

    .line 82
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/StringUtil;->isValidHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lorg/eclipse/californium/scandium/util/ServerName;

    sget-object v1, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lorg/eclipse/californium/scandium/util/ServerName;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/eclipse/californium/scandium/util/ServerName;-><init>(Lorg/eclipse/californium/scandium/util/ServerName$NameType;[B)V

    return-object v0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a valid host name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "host name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 145
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 148
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/util/ServerName;

    .line 149
    iget-object v1, p0, Lorg/eclipse/californium/scandium/util/ServerName;->type:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    iget-object v2, p1, Lorg/eclipse/californium/scandium/util/ServerName;->type:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    if-eq v1, v2, :cond_3

    return v0

    .line 152
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerName;->name:[B

    iget-object p1, p1, Lorg/eclipse/californium/scandium/util/ServerName;->name:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getLength()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerName;->name:[B

    array-length v0, v0

    return v0
.end method

.method public getName()[B
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerName;->name:[B

    return-object v0
.end method

.method public getNameAsString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/util/ServerName;->name:[B

    sget-object v2, Lorg/eclipse/californium/scandium/util/ServerName;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getType()Lorg/eclipse/californium/scandium/util/ServerName$NameType;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/ServerName;->type:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/eclipse/californium/scandium/util/ServerName;->hashCode:I

    return v0
.end method
