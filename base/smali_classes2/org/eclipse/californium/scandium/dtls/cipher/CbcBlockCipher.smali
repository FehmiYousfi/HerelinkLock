.class public Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;
.super Ljava/lang/Object;
.source "CbcBlockCipher.java"


# static fields
.field private static final FILLUP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;->createBytes(Ljava/util/Random;I)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->FILLUP:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPadding(I[BI)Z
    .locals 6

    .line 256
    array-length v0, p1

    add-int/lit16 v1, p2, 0x101

    if-lt v0, v1, :cond_3

    int-to-byte v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-gt v2, p0, :cond_0

    add-int v4, p2, v2

    .line 263
    aget-byte v4, p1, v4

    xor-int/2addr v4, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    add-int/2addr p0, v2

    move v4, v1

    :goto_1
    const/16 v5, 0x100

    if-ge p0, v5, :cond_1

    add-int v5, p2, p0

    .line 266
    aget-byte v5, p1, v5

    xor-int/2addr v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 270
    :cond_1
    array-length p0, p1

    sub-int/2addr p0, v2

    aget-byte p2, p1, p0

    xor-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p1, p0

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 257
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data must contain 257 bytes from offset on!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    array-length v0, p4

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacMessageBlockLength()I

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 84
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    .line 86
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v4, 0x0

    invoke-direct {v3, p4, v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 87
    array-length p1, p4

    sub-int/2addr p1, v1

    invoke-virtual {v2, p4, v1, p1, v0}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p1

    .line 90
    sget-object p4, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->FILLUP:[B

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacMessageBlockLength()I

    move-result v1

    invoke-static {p4, v4, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result p4

    add-int/lit8 v1, p1, -0x1

    .line 93
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    sub-int v2, p1, v1

    if-gez v2, :cond_0

    move v2, p1

    move v1, v4

    :cond_0
    add-int v3, v2, p4

    .line 105
    invoke-static {v1, v0, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->checkPadding(I[BI)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move p1, v2

    .line 110
    :goto_0
    array-length v2, p3

    sub-int/2addr v2, v5

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 111
    aput-byte v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 112
    aput-byte v3, p3, v2

    .line 114
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalMacMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 116
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalMac()Ljavax/crypto/Mac;

    move-result-object v3

    invoke-static {v3, p2, p3, v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->getBlockCipherMac(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p2

    .line 122
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacMessageLengthBytes()I

    move-result v3

    .line 123
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacMessageBlockLength()I

    move-result p0

    .line 125
    array-length p3, p3

    add-int/2addr p3, p1

    add-int/2addr p3, v3

    add-int/2addr v1, p3

    .line 127
    div-int/2addr v1, p0

    .line 129
    div-int/2addr p3, p0

    sub-int/2addr v1, p3

    mul-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {v2, v0, p1, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 135
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    add-int/2addr p4, p1

    .line 136
    invoke-static {v0, p1, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 137
    invoke-static {p0, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p3

    .line 138
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 139
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    .line 142
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 144
    :cond_2
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    if-eqz p3, :cond_3

    return-object p0

    .line 146
    :cond_3
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;

    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;-><init>()V

    throw p0
.end method

.method public static encrypt(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;[B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    array-length v1, p4

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(IZ)V

    .line 187
    invoke-virtual {v0, p4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 190
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalMac()Ljavax/crypto/Mac;

    move-result-object v1

    array-length v3, p4

    invoke-static {v1, p2, p3, p4, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CbcBlockCipher;->getBlockCipherMac(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p2

    .line 191
    invoke-virtual {v0, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 192
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 195
    array-length p2, p4

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacLength()I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, v2

    .line 196
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getRecordIvLength()I

    move-result p3

    .line 197
    rem-int/2addr p2, p3

    if-lez p2, :cond_0

    sub-int/2addr p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/lit8 p2, p3, 0x1

    .line 201
    new-array p2, p2, [B

    int-to-byte p3, p3

    .line 202
    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([BB)V

    .line 203
    invoke-virtual {v0, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 204
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 206
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    .line 207
    invoke-virtual {v3, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 208
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    .line 209
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v4

    .line 210
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->close()V

    .line 212
    array-length p1, p0

    array-length p2, v4

    add-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/4 v5, 0x0

    .line 213
    array-length v6, v4

    array-length v8, p0

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    return-object p1
.end method

.method public static getBlockCipherMac(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[B[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 233
    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->update([B)V

    const/4 p1, 0x0

    .line 234
    invoke-virtual {p0, p3, p1, p4}, Ljavax/crypto/Mac;->update([BII)V

    .line 235
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    return-object p1
.end method
