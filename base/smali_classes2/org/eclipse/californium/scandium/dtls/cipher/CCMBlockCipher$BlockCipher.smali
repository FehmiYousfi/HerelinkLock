.class Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;
.super Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final nonceL:I

.field private final xblock:[B


# direct methods
.method private constructor <init>(Ljavax/crypto/Cipher;[B)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;-><init>(I)V

    .line 116
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->cipher:Ljavax/crypto/Cipher;

    .line 117
    array-length p1, p2

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->nonceL:I

    .line 118
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->nonceL:I

    sub-int/2addr p1, v1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    .line 124
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->xblock:[B

    .line 132
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->block:[B

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 134
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->block:[B

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->nonceL:I

    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Nonce length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->nonceL:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " invalid for blocksize "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (valid length ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljavax/crypto/Cipher;[BLorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;-><init>(Ljavax/crypto/Cipher;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->updateBlock(I)[B

    move-result-object p0

    return-object p0
.end method

.method private updateBlock(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->nonceL:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->setIntAtEnd(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->block:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->xblock:[B

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 145
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->xblock:[B

    return-object p1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too large for nonce "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->nonceL:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and blocksize "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$BlockCipher;->blockSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
