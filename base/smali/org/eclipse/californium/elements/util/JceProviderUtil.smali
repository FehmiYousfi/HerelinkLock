.class public Lorg/eclipse/californium/elements/util/JceProviderUtil;
.super Ljava/lang/Object;
.source "JceProviderUtil.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final ALGORITHM_ALIASES:[[Ljava/lang/String;

.field private static final BOUNCY_CASTLE_JCE_PROVIDER:Ljava/lang/String; = "org.bouncycastle.jce.provider.BouncyCastleProvider"

.field private static final BOUNCY_CASTLE_JSSE_PROVIDER:Ljava/lang/String; = "org.bouncycastle.jsse.provider.BouncyCastleJsseProvider"

.field private static final ED25519_ALIASES:[Ljava/lang/String;

.field private static final ED448_ALIASES:[Ljava/lang/String;

.field private static final JSSE_PROVIDER_BOUNCY_CASTLE:Ljava/lang/String; = "BCJSSE"

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NET_I2P_CRYPTO_EDDSA:Ljava/lang/String; = "net.i2p.crypto.eddsa"

.field private static final NET_I2P_CRYPTO_EDDSA_PROVIDER:Ljava/lang/String; = "net.i2p.crypto.eddsa.EdDSASecurityProvider"

.field private static volatile features:Lorg/eclipse/californium/elements/util/JceProviderUtil;


# instance fields
.field private final ec:Z

.field private final ed25519:Z

.field private final ed448:Z

.field private final providerVersion:Ljava/lang/String;

.field private final rsa:Z

.field private final strongEncryption:Z

.field private final useBc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    const-class v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "EdDSA"

    const-string v1, "Ed25519"

    const-string v2, "1.3.101.112"

    const-string v3, "OID.1.3.101.112"

    const-string v4, "Ed25519.v2"

    .line 94
    filled-new-array {v1, v2, v3, v0, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ED25519_ALIASES:[Ljava/lang/String;

    const-string v1, "Ed448"

    const-string v2, "1.3.101.113"

    const-string v3, "OID.1.3.101.113"

    const-string v4, "Ed448.v2"

    .line 102
    filled-new-array {v1, v2, v3, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ED448_ALIASES:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "DH"

    const-string v2, "DiffieHellman"

    .line 109
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EC"

    const-string v2, "EC.v2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ED25519_ALIASES:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ED448_ALIASES:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "X25519"

    const-string v2, "X25519.v2"

    const-string v3, "OID.1.3.101.110"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "X448"

    const-string v2, "X448.v2"

    const-string v3, "OID.1.3.101.111"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ALGORITHM_ALIASES:[[Ljava/lang/String;

    .line 153
    :try_start_0
    const-class v0, Ljava/security/AccessController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 154
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->doPrivileged()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    :try_start_1
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->setupJce()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 159
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "JCE:"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private constructor <init>(ZZZZZZLjava/lang/String;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->useBc:Z

    .line 589
    iput-boolean p2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->rsa:Z

    .line 590
    iput-boolean p3, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ec:Z

    .line 591
    iput-boolean p4, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed25519:Z

    .line 592
    iput-boolean p5, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed448:Z

    .line 593
    iput-boolean p6, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->strongEncryption:Z

    .line 594
    iput-object p7, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->providerVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 79
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->setupJce()V

    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 79
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private static configure(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-virtual {p0, p1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static doPrivileged()V
    .locals 1

    .line 165
    new-instance v0, Lorg/eclipse/californium/elements/util/JceProviderUtil$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static equalKeyAlgorithmSynonyms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 566
    :cond_0
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ALGORITHM_ALIASES:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 567
    invoke-static {v5, p0}, Lorg/eclipse/californium/elements/util/StringUtil;->containsIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5, p1}, Lorg/eclipse/californium/elements/util/StringUtil;->containsIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "EdDSA"

    .line 542
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 544
    :cond_0
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ED25519_ALIASES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/eclipse/californium/elements/util/StringUtil;->containsIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "OID.1.3.101.112"

    return-object p0

    .line 546
    :cond_1
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ED448_ALIASES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/eclipse/californium/elements/util/StringUtil;->containsIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "OID.1.3.101.113"

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static getProviderVersion()Ljava/lang/String;
    .locals 1

    .line 583
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-object v0, v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->providerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static hasStrongEncryption()Z
    .locals 1

    .line 505
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean v0, v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->strongEncryption:Z

    return v0
.end method

.method public static init()V
    .locals 0

    return-void
.end method

.method private static isBouncyCastle(Ljava/security/Provider;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNetI2PEdDsa(Ljava/security/Provider;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "net.i2p.crypto.eddsa.EdDSASecurityProvider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "EC"

    .line 515
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    sget-object p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean p0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ec:Z

    return p0

    :cond_0
    const-string v0, "RSA"

    .line 517
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    sget-object p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean p0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->rsa:Z

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 520
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->getEdDsaStandardAlgorithmName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID.1.3.101.112"

    .line 521
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    sget-object p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean p0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed25519:Z

    return p0

    :cond_2
    const-string v1, "OID.1.3.101.113"

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    sget-object p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean p0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed448:Z

    return p0

    :cond_3
    const-string v0, "EdDSA"

    .line 525
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 526
    sget-object p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean p0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed25519:Z

    if-nez p0, :cond_4

    sget-object p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean p0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed448:Z

    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method private static loadProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 3

    .line 229
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 231
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Loaded {}"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 234
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    const-string v2, "Loading {} failed!"

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setupJce()V
    .locals 18

    const-string v0, "EdDSA"

    const-string v1, "CALIFORNIUM_JCE_PROVIDER"

    .line 310
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->getConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 312
    sget-object v4, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "JCE setup: {}"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "SYSTEM"

    .line 313
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    move v5, v4

    move v6, v5

    move v1, v3

    goto :goto_0

    :cond_0
    const-string v4, "BC"

    .line 315
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    move v5, v1

    move v6, v5

    move v4, v3

    goto :goto_0

    :cond_1
    const-string v4, "BC_NON_BLOCKING_RANDOM"

    .line 317
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    move v6, v1

    move v4, v3

    move v5, v4

    goto :goto_0

    :cond_2
    const-string v4, "I2P"

    .line 320
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    move v4, v1

    move v5, v4

    move v6, v3

    goto :goto_0

    :cond_3
    move v1, v2

    move v4, v1

    move v5, v4

    move v6, v5

    goto :goto_0

    .line 325
    :cond_4
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "JCE default setup"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    move v4, v2

    move v5, v4

    move v1, v3

    move v6, v1

    :goto_0
    const/4 v7, 0x0

    .line 332
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 333
    invoke-virtual {v8}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_5

    .line 336
    :try_start_1
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v9, "EdDSA from default jce {}"

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1

    :catch_1
    move v1, v2

    move-object v8, v7

    :goto_1
    const/4 v9, 0x2

    if-nez v1, :cond_b

    if-eqz v4, :cond_b

    .line 341
    invoke-static {v8}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isBouncyCastle(Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 343
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "EdDSA from BC"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_4

    .line 345
    :cond_6
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->setupLoggingBridge()V

    if-eqz v5, :cond_7

    .line 346
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->setupNonBlockingSecureRandom()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v7

    :goto_2
    const-string v5, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 347
    invoke-static {v5}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->loadProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    const-string v10, "securerandom.strongAlgorithms"

    if-eqz v5, :cond_9

    .line 350
    :try_start_2
    invoke-static {v0, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 351
    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 352
    invoke-static {v5, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 356
    :try_start_3
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 357
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    .line 358
    invoke-static {v10}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "not available"

    .line 362
    :cond_8
    sget-object v8, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "StrongRandom: {}"

    invoke-interface {v8, v11, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "EdDSA added from BC"

    invoke-interface {v1, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move v1, v3

    goto :goto_3

    :catch_3
    move-object v5, v8

    :goto_3
    move-object v8, v5

    :cond_9
    if-eqz v4, :cond_a

    .line 370
    invoke-static {v10, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v1, :cond_b

    const-string v4, "BCJSSE"

    .line 372
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-nez v4, :cond_b

    const-string v4, "org.bouncycastle.jsse.provider.BouncyCastleJsseProvider"

    .line 374
    invoke-static {v4}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->loadProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v5, "PKIX"

    const-string v10, "ssl.KeyManagerFactory.algorithm"

    .line 376
    invoke-static {v10, v5}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "ssl.TrustManagerFactory.algorithm"

    .line 377
    invoke-static {v10, v5}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_4
    invoke-static {v4, v9}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 380
    sget-object v4, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "TLS from added BC"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_b
    :goto_4
    if-nez v1, :cond_d

    if-eqz v6, :cond_d

    .line 388
    invoke-static {v8}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isNetI2PEdDsa(Ljava/security/Provider;)Z

    move-result v4

    const-string v5, "net.i2p.crypto.eddsa"

    if-eqz v4, :cond_c

    .line 390
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "EdDSA from {}"

    invoke-interface {v1, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v3

    goto :goto_5

    :cond_c
    const-string v4, "net.i2p.crypto.eddsa.EdDSASecurityProvider"

    .line 392
    invoke-static {v4}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->loadProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 395
    :try_start_5
    invoke-static {v0, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 396
    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 397
    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_6

    .line 400
    :try_start_6
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "EdDSA added from {}"

    invoke-interface {v1, v6, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    move v1, v3

    move-object v8, v4

    :catch_6
    :cond_d
    :goto_5
    :try_start_7
    const-string v4, "AES"

    .line 412
    invoke-static {v4}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v4
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_7

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_e

    :try_start_8
    const-string v5, "not restricted"

    goto :goto_6

    .line 416
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restricted to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits key length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_7
    move v4, v2

    :catch_8
    const-string v5, "not supported"

    .line 420
    :goto_6
    sget-object v6, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v10, "AES: {}"

    invoke-interface {v6, v10, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_9
    const-string v6, "RSA"

    .line 422
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_9

    move v12, v3

    goto :goto_7

    :catch_9
    move v12, v2

    .line 426
    :goto_7
    sget-object v6, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "RSA: {}"

    invoke-interface {v6, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_a
    const-string v6, "EC"

    .line 428
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_a

    move v13, v3

    goto :goto_8

    :catch_a
    move v13, v2

    .line 432
    :goto_8
    sget-object v6, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "EC: {}"

    invoke-interface {v6, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    sget-object v6, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    const/4 v10, 0x3

    if-nez v6, :cond_f

    .line 434
    sget-object v6, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v11, v2

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v11, v3

    aput-object v5, v11, v9

    const-string v5, "RSA: {}, EC: {}, AES: {}"

    invoke-interface {v6, v5, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    if-nez v8, :cond_10

    const-string v5, "n.a."

    goto :goto_9

    .line 436
    :cond_10
    invoke-virtual {v8}, Ljava/security/Provider;->getVersion()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    :goto_9
    move-object/from16 v17, v5

    if-eqz v1, :cond_13

    if-eqz v8, :cond_13

    .line 440
    invoke-static {v8}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isBouncyCastle(Ljava/security/Provider;)Z

    move-result v1

    const-string v5, "Ed448"

    const-string v6, "Ed25519"

    if-eqz v1, :cond_11

    const-string v0, "Alg.Alias.KeyFactory.OID.1.3.101.112"

    .line 442
    invoke-static {v8, v0, v6}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->configure(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.OID.1.3.101.113"

    .line 443
    invoke-static {v8, v0, v5}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->configure(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 444
    :cond_11
    invoke-static {v8}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isNetI2PEdDsa(Ljava/security/Provider;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Alg.Alias.KeyFactory.Ed25519"

    .line 446
    invoke-static {v8, v1, v0}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->configure(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_12
    :goto_a
    :try_start_b
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_b

    move v0, v3

    goto :goto_b

    :catch_b
    move v0, v2

    .line 454
    :goto_b
    :try_start_c
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_c

    move v1, v3

    goto :goto_c

    :catch_c
    move v1, v2

    .line 458
    :goto_c
    sget-object v5, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "EdDSA supported by {}, Ed25519: {}, Ed448: {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v14, v0

    move v15, v1

    move-object v7, v8

    goto :goto_d

    .line 461
    :cond_13
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "EdDSA not supported!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    move v14, v2

    move v15, v14

    .line 463
    :goto_d
    new-instance v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;

    invoke-static {v7}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isBouncyCastle(Ljava/security/Provider;)Z

    move-result v11

    const/16 v1, 0x100

    if-lt v4, v1, :cond_14

    move/from16 v16, v3

    goto :goto_e

    :cond_14
    move/from16 v16, v2

    :goto_e
    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/eclipse/californium/elements/util/JceProviderUtil;-><init>(ZZZZZZLjava/lang/String;)V

    .line 465
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 466
    sput-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    .line 468
    :cond_15
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "JCE setup: {}, ready."

    invoke-interface {v0, v1, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 470
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 471
    :goto_f
    array-length v1, v0

    if-ge v2, v1, :cond_16

    .line 472
    aget-object v1, v0, v2

    .line 473
    sget-object v3, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Security Provider [{}]: {}."

    invoke-interface {v3, v5, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 475
    :cond_16
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "JCE setup"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "JCE setup callstack:"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method

.method private static setupLoggingBridge()V
    .locals 5

    :try_start_0
    const-string v0, "org.slf4j.bridge.SLF4JBridgeHandler"

    .line 252
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeHandlersForRootLogger"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 253
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 254
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install"

    new-array v3, v2, [Ljava/lang/Class;

    .line 255
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 256
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 258
    sget-object v1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Setup BC logging failed!"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static setupNonBlockingSecureRandom()Ljava/lang/String;
    .locals 5

    const-string v0, "securerandom.strongAlgorithms"

    .line 276
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "NativePRNGBlocking"

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NativePRNGNonBlocking"

    .line 280
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v0, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 287
    invoke-virtual {v2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v0, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Random: {} already in {}"

    invoke-interface {v0, v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static usesBouncyCastle()Z
    .locals 1

    .line 492
    sget-object v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->features:Lorg/eclipse/californium/elements/util/JceProviderUtil;

    iget-boolean v0, v0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->useBc:Z

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 617
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 619
    :cond_2
    check-cast p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;

    .line 620
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed25519:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed25519:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 622
    :cond_3
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed448:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed448:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 624
    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->strongEncryption:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->strongEncryption:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 626
    :cond_5
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ec:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ec:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 628
    :cond_6
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->rsa:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->rsa:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 630
    :cond_7
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->useBc:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->useBc:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 632
    :cond_8
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->providerVersion:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/californium/elements/util/JceProviderUtil;->providerVersion:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 601
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed25519:Z

    const/16 v1, 0x29

    const/16 v2, 0x25

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    .line 602
    iget-boolean v4, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ed448:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 603
    iget-boolean v4, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->strongEncryption:Z

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 604
    iget-boolean v4, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->ec:Z

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 605
    iget-boolean v4, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->rsa:Z

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 606
    iget-boolean v4, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->useBc:Z

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 607
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/JceProviderUtil;->providerVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
