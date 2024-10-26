.class public Lorg/eclipse/californium/scandium/util/SecretSerializationUtil;
.super Ljava/lang/Object;
.source "SecretSerializationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readIv(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;
    .locals 1

    const/16 v0, 0x8

    .line 99
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    invoke-static {p0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->createIv([B)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    move-result-object v0

    .line 102
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readSecretKey(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljavax/crypto/SecretKey;
    .locals 3

    const/16 v0, 0x8

    .line 59
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 65
    :try_start_0
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    goto :goto_0

    .line 67
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must have algorithm!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 71
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    throw p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must not be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljavax/crypto/SecretKey;)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 40
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 44
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 45
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 46
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 41
    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    :goto_1
    return-void
.end method

.method public static write(Lorg/eclipse/californium/elements/util/DatagramWriter;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 84
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->isDestroyed(Ljavax/security/auth/Destroyable;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 88
    invoke-virtual {p1, p0}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    :goto_1
    return-void
.end method
