.class public Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;
.super Ljava/lang/Object;
.source "KeyManagerCertificateProvider.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;
.implements Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;


# static fields
.field private static final ALL_KEY_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BC_SERVER_KEY_TYPES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final defaultAlias:Ljava/lang/String;

.field private final id:I

.field private final keyManager:Ljavax/net/ssl/X509KeyManager;

.field private final supportedCertificateKeyAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    const-class v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->BC_SERVER_KEY_TYPES_MAP:Ljava/util/Map;

    .line 72
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->BC_SERVER_KEY_TYPES_MAP:Ljava/util/Map;

    const-string v1, "EC"

    const-string v2, "ECDHE_ECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->BC_SERVER_KEY_TYPES_MAP:Ljava/util/Map;

    const-string v2, "RSA"

    const-string v3, "ECDHE_RSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EdDSA"

    const-string v3, "Ed25519"

    const-string v4, "Ed448"

    .line 79
    filled-new-array {v1, v2, v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ALL_KEY_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_6

    if-eqz p3, :cond_2

    .line 163
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 167
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Certificate type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Certificate types must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    .line 173
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->defaultAlias:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    const/4 p1, 0x1

    if-nez p3, :cond_3

    .line 177
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    .line 181
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 182
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ALL_KEY_TYPES:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v0, v1}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->getAliases(ZLjava/util/List;[Ljava/security/Principal;)Ljava/util/List;

    move-result-object p3

    .line 183
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-direct {p0, v0, p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->setup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 186
    :cond_4
    sget-object p3, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ALL_KEY_TYPES:Ljava/util/List;

    invoke-direct {p0, p1, p3, v1}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->getAliases(ZLjava/util/List;[Ljava/security/Principal;)Ljava/util/List;

    move-result-object p1

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 188
    invoke-direct {p0, p3, p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->setup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 190
    :cond_5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    return-void

    .line 160
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "KeyManager must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 143
    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->asList([Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(Ljavax/net/ssl/X509KeyManager;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 1

    .line 113
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->asList([Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V

    return-void
.end method

.method private static addEdDsaSupport(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 490
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->INTRINSIC_WITH_ED25519:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "EdDSA"

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p0, v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "Ed25519"

    .line 492
    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 494
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->INTRINSIC_WITH_ED448:Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 495
    invoke-static {p0, v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    const-string p1, "Ed448"

    .line 496
    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    :cond_1
    return-void
.end method

.method private static asList([Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 501
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAliases(ZLjava/util/List;[Ljava/security/Principal;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 364
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v2, v1, p3}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 366
    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v2, v1, p3}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 367
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->usesBouncyCastle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->BC_SERVER_KEY_TYPES_MAP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 374
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v2, v3, p3}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v3

    :cond_1
    :goto_1
    const-string v3, "client"

    const-string v4, "server"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v2, :cond_3

    .line 382
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    array-length v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    aput-object v1, v10, v5

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    aput-object v3, v10, v8

    const-string v1, "[{}]: found {} {} keys for {}"

    invoke-interface {v9, v1, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 385
    :cond_3
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    aput-object v1, v8, v6

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    aput-object v3, v8, v5

    const-string v1, "[{}]: found no {} keys for {}"

    invoke-interface {v2, v1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private matchCurves(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 438
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 439
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->isEcBased(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 445
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private matchServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .line 400
    sget-object v0, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/ServerName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-static {p2, p1}, Lorg/eclipse/californium/elements/util/CertPathUtil;->matchDestination(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private matchSignatureAndHashAlgorithms(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 420
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 424
    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSignedWithSupportedAlgorithms(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private selectPriorized(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 468
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v4, v3}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 469
    array-length v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x0

    .line 470
    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-virtual {v1, v4}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupported(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eqz v6, :cond_2

    .line 472
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v6, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v5

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v8

    aput-object v4, v9, v7

    const-string v3, "Select by signature {} - {} == {}"

    invoke-interface {v6, v3, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :cond_2
    sget-object v6, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v5

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v8

    aput-object v4, v9, v7

    const-string v3, "Signature doesn\'t match {} - {} != {}"

    invoke-interface {v6, v3, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    return-object v0
.end method

.method private setup(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 196
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    .line 197
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->getAlgorithm(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object p1

    .line 198
    invoke-static {p2, p1}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method private setupConfigurationHelperForAlias(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p2}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 226
    array-length v0, p2

    if-lez v0, :cond_1

    .line 227
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsFor(Ljava/util/List;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 230
    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsFor(Ljava/security/PublicKey;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSupportedCertificateKeyAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedCertificateTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    return-object v0
.end method

.method public requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ConnectionId;",
            "Z",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/eclipse/californium/scandium/util/ServerNames;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)",
            "Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    if-eqz v2, :cond_0

    const-string v7, "Client"

    goto :goto_0

    :cond_0
    const-string v7, "Server"

    .line 251
    :goto_0
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget v11, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v7, v10, v11

    if-nez v4, :cond_1

    const-string v13, "<n.a.>"

    goto :goto_1

    :cond_1
    move-object v13, v4

    :goto_1
    const/4 v14, 0x2

    aput-object v13, v10, v14

    const-string v13, "[{}]: {} certificate for {}"

    invoke-interface {v8, v13, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 252
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 253
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v10, v9, [Ljava/lang/Object;

    iget v13, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    aput-object v7, v10, v11

    aput-object v3, v10, v14

    const-string v13, "[{}]: {} certificate issued by {}"

    invoke-interface {v8, v13, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    .line 255
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/security/Principal;

    invoke-interface {v3, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    .line 256
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_5

    .line 258
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 259
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->NONE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    if-eq v15, v8, :cond_4

    .line 260
    invoke-virtual {v15}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    goto :goto_3

    :cond_5
    const-string v8, "EC"

    if-eqz v5, :cond_9

    .line 264
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    .line 265
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 266
    invoke-static {v5, v8}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupportedAlgorithm(Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 267
    invoke-static {v10, v8}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    :cond_6
    const-string v8, "RSA"

    .line 269
    invoke-static {v5, v8}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupportedAlgorithm(Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 270
    invoke-static {v10, v8}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 272
    :cond_7
    invoke-static {v10, v5}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->addEdDsaSupport(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 273
    :cond_8
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 274
    invoke-static {v10, v5}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->addEdDsaSupport(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 276
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 277
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_a
    :goto_4
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v13, v9, [Ljava/lang/Object;

    iget v15, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v12

    aput-object v7, v13, v11

    aput-object v10, v13, v14

    const-string v15, "[{}]: {} certificate public key types {}"

    invoke-interface {v8, v15, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_b

    .line 281
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 282
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v13, v9, [Ljava/lang/Object;

    iget v15, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v12

    aput-object v7, v13, v11

    aput-object v5, v13, v14

    const-string v15, "[{}]: {} certificate signed with {}"

    invoke-interface {v8, v15, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v6, :cond_c

    .line 284
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 285
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    new-array v13, v9, [Ljava/lang/Object;

    iget v15, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v12

    aput-object v7, v13, v11

    aput-object v6, v13, v14

    const-string v7, "[{}]: {} certificate using {}"

    invoke-interface {v8, v7, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_c
    invoke-direct {v0, v2, v10, v3}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->getAliases(ZLjava/util/List;[Ljava/security/Principal;)Ljava/util/List;

    move-result-object v2

    .line 289
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v13, v11

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 296
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    iget v11, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v12

    const/4 v11, 0x1

    aput-object v15, v14, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x2

    aput-object v11, v14, v17

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x3

    aput-object v11, v14, v16

    const-string v11, "[{}]: Apply select {} - {} of {}"

    invoke-interface {v9, v11, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v9, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v9, v15}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 298
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    if-eqz v4, :cond_d

    .line 299
    aget-object v9, v9, v12

    invoke-direct {v0, v4, v9}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->matchServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 300
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v5, :cond_e

    .line 302
    invoke-direct {v0, v5, v11}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->matchSignatureAndHashAlgorithms(Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 304
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v6, :cond_f

    .line 306
    invoke-direct {v0, v6, v11}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->matchCurves(Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 307
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x1

    const/4 v14, 0x2

    goto :goto_5

    .line 311
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 312
    sget-object v9, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const-string v4, "[{}]: {} selected by {}"

    invoke-interface {v9, v4, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    :cond_11
    if-eqz v5, :cond_12

    .line 316
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    iget v4, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "[{}]: {} selected by signature and hash algorithms"

    invoke-interface {v3, v10, v4, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    invoke-interface {v2, v7}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    :cond_12
    if-eqz v6, :cond_13

    .line 320
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    iget v4, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "[{}]: {} selected by curves"

    invoke-interface {v3, v7, v4, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    invoke-interface {v2, v8}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 323
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 325
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_14

    if-eqz v5, :cond_14

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_14

    .line 326
    invoke-direct {v0, v2, v5}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->selectPriorized(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 328
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_15

    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->defaultAlias:Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 329
    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->defaultAlias:Ljava/lang/String;

    goto :goto_6

    .line 331
    :cond_15
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    :goto_6
    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v3, v2}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 334
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 335
    iget-object v4, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v4, v2}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 336
    new-instance v5, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    invoke-direct {v5, v1, v4, v3, v2}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PrivateKey;Ljava/util/List;Ljava/lang/Object;)V

    return-object v5

    .line 339
    :cond_16
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    iget v3, v0, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "[{}]: no matching credentials"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    :cond_17
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    return-object v2
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 0

    return-void
.end method

.method public setupConfigurationHelper(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 207
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ALL_KEY_TYPES:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->getAliases(ZLjava/util/List;[Ljava/security/Principal;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    invoke-direct {p0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->setupConfigurationHelperForAlias(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 211
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->ALL_KEY_TYPES:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->getAliases(ZLjava/util/List;[Ljava/security/Principal;)Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-direct {p0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->setupConfigurationHelperForAlias(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void

    .line 205
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Certificate configuration helper must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
