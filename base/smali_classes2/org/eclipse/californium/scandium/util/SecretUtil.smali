.class public Lorg/eclipse/californium/scandium/util/SecretUtil;
.super Ljava/lang/Object;
.source "SecretUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/eclipse/californium/scandium/util/SecretUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/util/SecretUtil;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 130
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 131
    new-instance v2, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0, v0}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;-><init>([BLjava/lang/String;Lorg/eclipse/californium/scandium/util/SecretUtil$1;)V

    .line 132
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public static create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7

    .line 117
    new-instance v6, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;-><init>([BIILjava/lang/String;Lorg/eclipse/californium/scandium/util/SecretUtil$1;)V

    return-object v6
.end method

.method public static create([BLjava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    .line 102
    new-instance v0, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/californium/scandium/util/SecretUtil$DestroyableSecretKeySpec;-><init>([BLjava/lang/String;Lorg/eclipse/californium/scandium/util/SecretUtil$1;)V

    return-object v0
.end method

.method public static createIv(Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;
    .locals 1

    if-eqz p0, :cond_0

    .line 146
    new-instance v0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;-><init>(Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static createIv([B)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;
    .locals 3

    .line 175
    new-instance v0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;-><init>([BII)V

    return-object v0
.end method

.method public static createIv([BII)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;
    .locals 1

    .line 163
    new-instance v0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;-><init>([BII)V

    return-object v0
.end method

.method public static destroy(Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 42
    instance-of v0, p0, Ljavax/security/auth/Destroyable;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Ljavax/security/auth/Destroyable;

    invoke-static {p0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    :cond_0
    return-void
.end method

.method public static destroy(Ljavax/security/auth/Destroyable;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lorg/eclipse/californium/scandium/util/SecretUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "Destroy on {} failed!"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static equals(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 195
    :cond_2
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 196
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 197
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 198
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    .line 199
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    :cond_3
    :goto_0
    return v0
.end method

.method public static isDestroyed(Ljavax/crypto/SecretKey;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 73
    instance-of v0, p0, Ljavax/security/auth/Destroyable;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Ljavax/security/auth/Destroyable;

    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDestroyed(Ljavax/security/auth/Destroyable;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 89
    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
