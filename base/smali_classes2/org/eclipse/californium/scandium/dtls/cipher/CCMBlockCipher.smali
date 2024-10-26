.class public Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;,
        Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;
    }
.end annotation


# static fields
.field private static final CIPHER:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

.field private static final CIPHER_NAME:Ljava/lang/String; = "AES/ECB/NoPadding"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    const-string v1, "AES/ECB/NoPadding"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->CIPHER:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decrypt(Ljavax/crypto/SecretKey;[B[B[BI)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 335
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->decrypt(Ljavax/crypto/SecretKey;[B[B[BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final decrypt(Ljavax/crypto/SecretKey;[B[B[BIII)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move/from16 v5, p6

    .line 359
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->CIPHER:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;->current()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    const/4 v0, 0x1

    move-object/from16 v2, p0

    .line 360
    invoke-virtual {v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sub-int v2, p5, v5

    .line 363
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 366
    new-array v7, v2, [B

    .line 368
    new-array v8, v5, [B

    .line 370
    new-instance v4, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;

    const/4 v6, 0x0

    move-object/from16 v9, p1

    invoke-direct {v4, v1, v9, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;-><init>(Ljavax/crypto/Cipher;[BLorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$1;)V

    const/4 v6, 0x0

    .line 373
    invoke-static {v4, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;I)[B

    move-result-object v10

    add-int v11, p4, v2

    move v12, v6

    :goto_0
    if-ge v12, v5, :cond_0

    add-int v13, v11, v12

    .line 376
    aget-byte v13, p3, v13

    aget-byte v14, v10, v12

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move v11, v0

    move v10, v6

    :goto_1
    if-ge v10, v2, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 380
    invoke-static {v4, v11}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;I)[B

    move-result-object v11

    add-int v13, v10, v3

    if-le v13, v2, :cond_1

    move v13, v2

    :cond_1
    move v14, v6

    :goto_2
    if-ge v10, v13, :cond_2

    add-int v15, p4, v10

    .line 386
    aget-byte v15, p3, v15

    aget-byte v16, v11, v14

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v14, v0

    goto :goto_2

    :cond_2
    move v11, v12

    goto :goto_1

    .line 394
    :cond_3
    new-instance v10, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;-><init>(Ljavax/crypto/Cipher;[B[B[BILorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$1;)V

    .line 395
    invoke-static {v10}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->access$300(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;)[B

    move-result-object v0

    .line 403
    invoke-static {v8, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v7

    .line 406
    :cond_4
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;

    invoke-direct {v1, v0, v8}, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;-><init>([B[B)V

    throw v1
.end method

.method public static final encrypt(ILjavax/crypto/SecretKey;[B[B[BI)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 447
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->CIPHER:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;->current()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljavax/crypto/Cipher;

    const/4 v10, 0x1

    move-object/from16 v0, p1

    .line 448
    invoke-virtual {v9, v10, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 449
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v11

    .line 450
    array-length v12, v7

    .line 456
    new-instance v13, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;

    const/4 v6, 0x0

    move-object v0, v13

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;-><init>(Ljavax/crypto/Cipher;[B[B[BILorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$1;)V

    .line 457
    invoke-static {v13}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->access$300(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;)[B

    move-result-object v0

    add-int v1, p0, v12

    add-int v2, v1, v8

    .line 463
    new-array v2, v2, [B

    .line 464
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;

    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-direct {v3, v9, v5, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;-><init>(Ljavax/crypto/Cipher;[BLorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$1;)V

    const/4 v4, 0x0

    .line 467
    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;I)[B

    move-result-object v5

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_0

    add-int v9, v6, v1

    .line 470
    aget-byte v13, v0, v6

    aget-byte v14, v5, v6

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    move v1, v10

    :goto_1
    if-ge v0, v12, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 473
    invoke-static {v3, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;I)[B

    move-result-object v1

    add-int v6, v0, v11

    if-le v6, v12, :cond_1

    move v6, v12

    :cond_1
    move v8, v4

    :goto_2
    if-ge v0, v6, :cond_2

    add-int v9, v0, p0

    .line 479
    aget-byte v13, v7, v0

    aget-byte v14, v1, v8

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v2, v9

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v8, v10

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public static final encrypt(Ljavax/crypto/SecretKey;[B[B[BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 425
    invoke-static/range {v0 .. v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->encrypt(ILjavax/crypto/SecretKey;[B[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMaxAllowedKeyLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES/ECB/NoPadding"

    .line 315
    invoke-static {v0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 301
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;->CIPHER:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCipher;->isSupported()Z

    move-result v0

    return v0
.end method
