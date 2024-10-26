.class public Lorg/eclipse/californium/scandium/dtls/Random;
.super Lorg/eclipse/californium/elements/util/Bytes;
.source "Random.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Random;->createBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/Random;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([B)V

    .line 49
    array-length p1, p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Random bytes array\'s length must be 32"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createBytes()[B
    .locals 5

    .line 92
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;->createBytes(Ljava/util/Random;I)[B

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    shr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 96
    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 97
    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    .line 98
    aput-byte v2, v0, v3

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 99
    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/Random;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 7

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Random;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 58
    aget-byte v2, v1, v2

    const/4 v3, 0x1

    .line 59
    aget-byte v3, v1, v3

    const/4 v4, 0x2

    .line 60
    aget-byte v4, v1, v4

    const/4 v5, 0x3

    .line 61
    aget-byte v5, v1, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v5, 0xff

    or-int/2addr v2, v3

    int-to-long v2, v2

    .line 65
    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 67
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GMT Unix Time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/16 v3, 0x20

    .line 72
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Random Bytes: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
