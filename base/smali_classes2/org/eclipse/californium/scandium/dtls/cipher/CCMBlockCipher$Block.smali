.class abstract Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Block"
.end annotation


# instance fields
.field protected final block:[B

.field protected final blockSize:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;->blockSize:I

    .line 67
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;->block:[B

    return-void
.end method


# virtual methods
.method protected setIntAtEnd(II)I
    .locals 3

    .line 98
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;->blockSize:I

    :goto_0
    if-le v0, p1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/CCMBlockCipher$Block;->block:[B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    ushr-int/lit8 p2, p2, 0x8

    goto :goto_0

    :cond_0
    return p2
.end method
