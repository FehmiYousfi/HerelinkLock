.class public final Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
.super Ljava/lang/Object;
.source "DtlsConnectorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 2

    .line 1497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;-><init>(Lorg/eclipse/californium/elements/config/Configuration;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$1;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V
    .locals 0

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$1;)V
    .locals 0

    .line 1464
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    return-void
.end method

.method private determineCipherSuitesFromConfig()V
    .locals 6

    .line 2283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2287
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2288
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConfiguration()Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v2

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {v2, v3}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v2, v3, :cond_2

    .line 2289
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2100(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2292
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 2293
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2294
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->getSupportedCertificateKeyAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 2298
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2100(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 2300
    :cond_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2302
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->getSupportedCertificateKeyAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 2305
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2306
    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useRecommendedCipherSuitesOnly()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateCipherSuites(ZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2311
    :cond_4
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2312
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->hasEcdhePskSupported()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 2313
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useRecommendedCipherSuitesOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-array v4, v3, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuitesByKeyExchangeAlgorithm(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2316
    :cond_5
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useRecommendedCipherSuitesOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-array v3, v3, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuitesByKeyExchangeAlgorithm(Z[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2319
    :cond_6
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getPreselectedCipherSuites()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2320
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2321
    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->preselectCipherSuites(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2323
    :cond_7
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v1, v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2202(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method private verifyCertificateBasedCipherConfig(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V
    .locals 4

    .line 2206
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v0, v1, :cond_1

    .line 2207
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate verifier must be set on client for configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2212
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2215
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->getSupportedCertificateKeyAlgorithms()Ljava/util/List;

    move-result-object v0

    .line 2217
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2221
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getCertificateAuthenticationMode()Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NONE:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-eq v0, v1, :cond_3

    .line 2222
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2223
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate verifier must be set for authentication using the configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void

    .line 2218
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One of the keys ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") must be capable for configured "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2213
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity must be set for configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyPskBasedCipherConfig(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V
    .locals 3

    .line 2197
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2200
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->hasEcdhePskSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSK store doesn\'t support ECDHE! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 2198
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSK store must be set for configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyRecommendedCipherSuitesOnly(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;)V"
        }
    .end annotation

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 2234
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isRecommended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    .line 2236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2241
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 2242
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not recommended cipher suites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " used! (Requires to set DTLS_RECOMMENDED_CIPHER_SUITES_ONLY to false.)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyRecommendedSignatureAndHashAlgorithmsOnly(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    .line 2267
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isRecommended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    .line 2269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2274
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 2275
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not recommended signature and hash algorithms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " used! (Requires to set DTLS_RECOMMENDED_SIGNATURE_AND_HASH_ALGORITHMS_ONLY to false.)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyRecommendedSupportedGroupsOnly(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;)V"
        }
    .end annotation

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 2250
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isRecommended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    .line 2252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2257
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 2258
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not recommended supported groups (curves) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " used! (Requires to set DTLS_RECOMMENDED_CURVES_ONLY to false.)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;
    .locals 9

    .line 1931
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1300(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->normalizeLoggingTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1302(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 1932
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$300(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/net/InetSocketAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-static {v0, v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$302(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    .line 1935
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$400(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1936
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$402(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1938
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    sget-object v2, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_BACKOFF:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v2}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1939
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissions()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 1940
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backoff for handshake retransmissions ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") must be less than the maximum retransmissions ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissions()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1944
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeout()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissionTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "!"

    const-string v4, "Retransmission timeout "

    if-gt v0, v2, :cond_41

    .line 1949
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeout()I

    move-result v0

    const-string v2, " must not be 0 or less!"

    if-lez v0, :cond_40

    .line 1954
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissionTimeout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3f

    .line 1959
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissions()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3e

    .line 1964
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionRandomFactor()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    const-string v5, " must not be less than 1.0!"

    if-ltz v0, :cond_3d

    .line 1969
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeoutScale()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_3c

    .line 1974
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnit()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnitLimit()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1975
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1976
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnitLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v0, v4, :cond_4

    goto :goto_1

    .line 1978
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes) is larger than the limit ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1983
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRecordSizeLimit()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRecordSizeLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x4000

    if-gt v0, v4, :cond_6

    goto :goto_2

    .line 1985
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record size limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRecordSizeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v0, v3, :cond_b

    .line 1990
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getCertificateAuthenticationMode()Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NONE:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 1992
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "configured certificate verifier is not used for client authentication mode NONE!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1995
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAutoHandshakeTimeoutMillis()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 1996
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DTLS_AUTO_HANDSHAKE_TIMEOUT must not be used with SERVER_ONLY!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2000
    :cond_b
    :goto_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useDeprecatedCid()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2002
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getExtensionTypeById(I)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2006
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    if-eq v3, v4, :cond_e

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getReplacementType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v4

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    if-ne v4, v5, :cond_c

    goto :goto_5

    .line 2008
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is no supported CID extension code point!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2004
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " code point is not supported for extensions!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2013
    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v3

    sget-object v4, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CURVES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {v3, v4}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2014
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2015
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2017
    :cond_f
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v3

    sget-object v4, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SIGNATURE_AND_HASH_ALGORITHMS:Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;

    invoke-virtual {v3, v4}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2019
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2020
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2022
    :cond_10
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v3

    sget-object v4, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CERTIFICATE_KEY_ALGORITHMS:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {v3, v4}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2024
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2100(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2025
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2028
    :cond_11
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$700(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-eq v0, v3, :cond_12

    .line 2029
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    new-instance v3, Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;

    invoke-direct {v3}, Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;-><init>()V

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$702(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    .line 2031
    :cond_12
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1700(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useServerSessionId()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-eq v0, v3, :cond_13

    .line 2033
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    new-instance v3, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;

    invoke-direct {v3}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;-><init>()V

    invoke-static {v0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1702(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;)Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    .line 2036
    :cond_13
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v0

    .line 2037
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v3

    .line 2039
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v4

    if-nez v4, :cond_15

    .line 2040
    new-instance v4, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    invoke-direct {v4}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;-><init>()V

    .line 2041
    instance-of v5, v0, Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;

    if-eqz v5, :cond_14

    .line 2042
    move-object v5, v0

    check-cast v5, Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;->setupConfigurationHelper(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)V

    .line 2043
    iget-object v5, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v5, v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1802(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    .line 2045
    :cond_14
    instance-of v5, v3, Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;

    if-eqz v5, :cond_15

    .line 2046
    check-cast v3, Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;

    invoke-interface {v3, v4}, Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;->setupConfigurationHelper(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)V

    .line 2047
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1802(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    .line 2051
    :cond_15
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v4

    sget-object v5, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {v4, v5}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2202(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2052
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2053
    :cond_16
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->determineCipherSuitesFromConfig()V

    .line 2057
    :cond_17
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 2062
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useRecommendedCipherSuitesOnly()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2063
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->verifyRecommendedCipherSuitesOnly(Ljava/util/List;)V

    .line 2069
    :cond_18
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    move v5, v4

    move v6, v5

    :cond_19
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 2070
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isPskBased()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2071
    invoke-direct {p0, v7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->verifyPskBasedCipherConfig(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V

    move v4, v2

    goto :goto_7

    .line 2073
    :cond_1a
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 2074
    invoke-direct {p0, v7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->verifyCertificateBasedCipherConfig(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V

    move v5, v2

    .line 2077
    :cond_1b
    :goto_7
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v7

    if-eqz v7, :cond_19

    move v6, v2

    goto :goto_6

    :cond_1c
    if-nez v4, :cond_1e

    .line 2082
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object v3

    if-nez v3, :cond_1d

    goto :goto_8

    .line 2083
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advanced PSK store set, but no PSK cipher suite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_8
    if-eqz v5, :cond_24

    .line 2087
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2088
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->DEFAULT:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2089
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 2090
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->getDefaultSignatureAndHashAlgorithms()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 2093
    :cond_1f
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2095
    :cond_20
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2100(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2097
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-static {v4, v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupportedAlgorithm(Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2100
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 2102
    :cond_21
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-static {v4, v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupportedAlgorithm(Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2104
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 2106
    :cond_22
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConfiguration()Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v4

    sget-object v5, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {v4, v5}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v4, v5, :cond_23

    .line 2107
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 2109
    :cond_23
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_9

    .line 2112
    :cond_24
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    if-nez v0, :cond_39

    .line 2119
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v3

    if-nez v3, :cond_38

    :cond_25
    :goto_9
    if-eqz v6, :cond_27

    .line 2124
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2125
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getPreferredGroups()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2126
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 2127
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->getDefaultSupportedGroups()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/californium/scandium/util/ListUtils;->addIfAbsent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 2130
    :cond_26
    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_a

    .line 2133
    :cond_27
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2138
    :cond_28
    :goto_a
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useRecommendedSupportedGroupsOnly()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2139
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->verifyRecommendedSupportedGroupsOnly(Ljava/util/List;)V

    .line 2142
    :cond_29
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useRecommendedSignatureAndHashAlgorithmsOnly()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2143
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->verifyRecommendedSignatureAndHashAlgorithmsOnly(Ljava/util/List;)V

    .line 2146
    :cond_2a
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2147
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->verifySignatureAndHashAlgorithmsConfiguration(Ljava/util/List;)V

    .line 2149
    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->verifySupportedGroupsConfiguration(Ljava/util/List;)V

    if-eqz v0, :cond_31

    .line 2150
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->getSupportedCertificateTypes()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2151
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v0, v3, :cond_2c

    .line 2152
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->canBeUsedForAuthentication(Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_b

    .line 2153
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificate has no proper key usage for clients!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2155
    :cond_2c
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v3, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v0, v3, :cond_2e

    .line 2156
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->canBeUsedForAuthentication(Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_b

    .line 2157
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificate has no proper key usage for servers!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2160
    :cond_2e
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->canBeUsedForAuthentication(Z)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2163
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->canBeUsedForAuthentication(Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_b

    .line 2164
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificate has no proper key usage as servers!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2161
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificate has no proper key usage as clients!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2169
    :cond_31
    :goto_b
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useHelloVerifyRequest()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useHelloVerifyRequestForPsk()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsPskBasedCipherSuite(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_c

    .line 2171
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HELLO_VERIFY_REQUEST disabled for PSK, requires at least one PSK cipher suite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :cond_33
    :goto_c
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2100(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->init(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2175
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->init(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2202(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2176
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->init(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2177
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/ListUtils;->init(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$2002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;

    .line 2178
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    move-result-object v0

    if-nez v0, :cond_36

    .line 2179
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2180
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v1

    sget-object v2, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_NODE_ID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    if-eqz v1, :cond_35

    .line 2183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_34

    .line 2187
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;-><init>(II)V

    invoke-virtual {p0, v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setConnectionIdGenerator(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    goto :goto_d

    .line 2184
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " bytes are too small for multiple nodes CID! At least, 5 bytes are required."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2189
    :cond_35
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setConnectionIdGenerator(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    .line 2193
    :cond_36
    :goto_d
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    return-object v0

    .line 2134
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "supported groups set, but no ecdhe based cipher suite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2120
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificate trust set, but no certificate based cipher suite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2117
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificate identity set, but no certificate based cipher suite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "supported signature and hash algorithms set, but no ecdhe based cipher suite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Supported cipher suites must be set either explicitly or implicitly by means of setting the identity or PSK store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1970
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retransmission timeout scale factor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeoutScale()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1965
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retransmission timeout random factor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionRandomFactor()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1960
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum retransmissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissions()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must not be less than 1!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1955
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum retransmission timeout "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissionTimeout()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1950
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeout()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1945
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is more than the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissionTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncompleteConfig()Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;
    .locals 1

    .line 1916
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    return-object v0
.end method

.method public set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicDefinition<",
            "TT;>;TT;)",
            "Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;"
        }
    .end annotation

    .line 1524
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1600
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public set(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1582
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1621
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$302(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    return-object p0

    .line 1622
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bind address must not be unresolved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdvancedCertificateVerifier(Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1773
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    return-object p0

    .line 1771
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CertificateVerifier must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdvancedPskStore(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1721
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$802(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    return-object p0
.end method

.method public setApplicationLevelInfoSupplier(Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1790
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;)Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    return-object p0

    .line 1788
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Supplier must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setAsList(Lorg/eclipse/californium/elements/config/BasicListDefinition;[Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicListDefinition<",
            "TT;>;[TT;)",
            "Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;"
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/californium/elements/config/Configuration;->setAsList(Lorg/eclipse/californium/elements/config/BasicListDefinition;[Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public varargs setAsListFromText(Lorg/eclipse/californium/elements/config/BasicListDefinition;[Ljava/lang/String;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicListDefinition<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;"
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/californium/elements/config/Configuration;->setAsListFromText(Lorg/eclipse/californium/elements/config/BasicListDefinition;[Ljava/lang/String;)Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public setCertificateHelper(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1903
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1802(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    return-object p0
.end method

.method public setCertificateIdentityProvider(Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1747
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    return-object p0
.end method

.method public setCipherSuiteSelector(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1701
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$702(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    return-object p0
.end method

.method public setConnectionIdGenerator(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1814
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1202(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    return-object p0
.end method

.method public setConnectionListener(Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1838
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1402(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/ConnectionListener;

    return-object p0
.end method

.method public setHealthHandler(Lorg/eclipse/californium/scandium/DtlsHealth;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1684
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$602(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/DtlsHealth;)Lorg/eclipse/californium/scandium/DtlsHealth;

    return-object p0
.end method

.method public setLoggingTag(Ljava/lang/String;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1826
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1302(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolVersionForHelloVerifyRequests(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1672
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$502(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object p0
.end method

.method public setResumptionVerifier(Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1891
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1702(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;)Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    return-object p0
.end method

.method public setReuseAddress(Z)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1636
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$402(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1851
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1502(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/SessionListener;)Lorg/eclipse/californium/scandium/dtls/SessionListener;

    return-object p0
.end method

.method public setSessionStore(Lorg/eclipse/californium/scandium/dtls/SessionStore;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1871
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->access$1602(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/SessionStore;)Lorg/eclipse/californium/scandium/dtls/SessionStore;

    return-object p0
.end method
