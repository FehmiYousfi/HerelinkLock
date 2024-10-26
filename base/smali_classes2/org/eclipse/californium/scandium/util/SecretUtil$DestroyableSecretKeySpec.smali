.class Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;
.super Ljava/lang/Object;
.source "SecretUtil.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/util/SecretUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyableSecretKeySpec"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b4a98e3384847cdL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private volatile destroyed:Z

.field private final hashCode:I

.field private final key:[B


# direct methods
.method private constructor <init>([BIILjava/lang/String;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p4, :cond_3

    .line 237
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 240
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    if-ltz p3, :cond_0

    add-int/2addr p3, p2

    .line 246
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->key:[B

    .line 247
    iput-object p4, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->algorithm:Ljava/lang/String;

    .line 248
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->calcHashCode()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->hashCode:I

    return-void

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "len is negative"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid offset/length combination"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Algorithm missing"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key missing"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>([BIILjava/lang/String;Lorg/eclipse/californium/scandium/util/SecretUtil$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 227
    :cond_0
    array-length v1, p1

    :goto_0
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;Lorg/eclipse/californium/scandium/util/SecretUtil$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;-><init>([BLjava/lang/String;)V

    return-void
.end method

.method private calcHashCode()I
    .locals 1

    .line 252
    iget v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->hashCode:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->key:[B

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->destroyed:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 282
    :cond_0
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 285
    :cond_1
    check-cast p1, Ljavax/crypto/SecretKey;

    .line 286
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 289
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->destroyed:Z

    if-nez v0, :cond_3

    .line 292
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 293
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->key:[B

    invoke-static {v0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    .line 294
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return v0

    .line 290
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "secret destroyed!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 267
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->destroyed:Z

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "secret destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "RAW"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 275
    iget v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->hashCode:I

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;->destroyed:Z

    return v0
.end method
