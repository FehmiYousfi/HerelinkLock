.class Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;
.super Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final mac:[B


# direct methods
.method private constructor <init>(Ljavax/crypto/Cipher;[B[B[BI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    invoke-direct {v0, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;-><init>(I)V

    .line 170
    iput-object v1, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->cipher:Ljavax/crypto/Cipher;

    .line 171
    array-length v6, v4

    .line 172
    array-length v7, v3

    .line 173
    array-length v8, v2

    .line 174
    iget v9, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    sub-int/2addr v9, v8

    const/4 v11, 0x2

    if-lt v9, v11, :cond_4

    const/16 v12, 0x8

    if-gt v9, v12, :cond_4

    const/4 v13, 0x0

    if-lez v7, :cond_0

    move v14, v10

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    add-int/lit8 v15, v5, -0x2

    .line 195
    div-int/2addr v15, v11

    sub-int/2addr v9, v10

    .line 207
    iget-object v11, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    mul-int/lit8 v14, v14, 0x40

    mul-int/2addr v15, v12

    add-int/2addr v14, v15

    add-int/2addr v14, v9

    int-to-byte v9, v14

    aput-byte v9, v11, v13

    .line 210
    iget-object v9, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    invoke-static {v2, v13, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v8, 0x1

    .line 213
    invoke-virtual {v0, v2, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->setIntAtEnd(II)I

    move-result v2

    if-nez v2, :cond_3

    .line 218
    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    iget v6, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    iget-object v8, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    invoke-virtual {v1, v2, v13, v6, v8}, Ljavax/crypto/Cipher;->update([BII[B)I

    if-lez v7, :cond_2

    const v1, 0xff00

    const/4 v11, 0x6

    if-ge v7, v1, :cond_1

    const/4 v1, 0x2

    .line 246
    invoke-virtual {v0, v13, v1, v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->xorInt(III)I

    move v11, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    const v2, 0xfffe

    .line 250
    invoke-virtual {v0, v13, v1, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->xorInt(III)I

    .line 251
    invoke-virtual {v0, v1, v11, v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->xorInt(III)I

    .line 255
    :goto_1
    invoke-direct {v0, v3, v11}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->update([BI)V

    .line 257
    :cond_2
    invoke-direct {v0, v4, v13}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->update([BI)V

    .line 258
    iget-object v1, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->mac:[B

    return-void

    .line 214
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " too large for nonce "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and blocksize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nonce length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " invalid for blocksize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (valid length ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljavax/crypto/Cipher;[B[B[BILorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 149
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;-><init>(Ljavax/crypto/Cipher;[B[B[BI)V

    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;)[B
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->getMac()[B

    move-result-object p0

    return-object p0
.end method

.method private getMac()[B
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->mac:[B

    return-object v0
.end method

.method private update([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 262
    array-length v0, p1

    const/4 v1, 0x0

    move v2, p2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_2

    .line 264
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    add-int/2addr v3, p2

    sub-int/2addr v3, v2

    if-le v3, v0, :cond_0

    move v3, v0

    :cond_0
    :goto_1
    if-ge p2, v3, :cond_1

    .line 269
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    aget-byte v5, v4, v2

    aget-byte v6, p1, p2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 272
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    iget v4, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->blockSize:I

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    invoke-virtual {v2, v3, v1, v4, v5}, Ljavax/crypto/Cipher;->update([BII[B)I

    move v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected xorInt(III)I
    .locals 3

    :goto_0
    if-le p2, p1, :cond_0

    .line 282
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$MacCipher;->block:[B

    add-int/lit8 p2, p2, -0x1

    aget-byte v1, v0, p2

    int-to-byte v2, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    ushr-int/lit8 p3, p3, 0x8

    goto :goto_0

    :cond_0
    return p3
.end method
