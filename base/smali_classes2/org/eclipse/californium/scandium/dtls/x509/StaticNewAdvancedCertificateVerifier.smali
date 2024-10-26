.class public Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;
.super Ljava/lang/Object;
.source "StaticNewAdvancedCertificateVerifier.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
.implements Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    }
.end annotation


# static fields
.field private static final RPK_TRUST_ALL:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

.field private static final X509_TRUST_ALL:[Ljava/security/cert/X509Certificate;


# instance fields
.field protected final LOGGER:Lorg/slf4j/Logger;

.field private final supportedCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedCertificates:[Ljava/security/cert/X509Certificate;

.field private final trustedRPKs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final useEmptyAcceptedIssuers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    .line 61
    sput-object v1, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->X509_TRUST_ALL:[Ljava/security/cert/X509Certificate;

    new-array v0, v0, [Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    .line 62
    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->RPK_TRUST_ALL:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[",
            "Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;-><init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[",
            "Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;Z)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no trusts provided!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 135
    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_2

    .line 137
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_7

    .line 140
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 142
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 145
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RPK support requires RPK trusts!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_5
    :goto_1
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    .line 149
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x509support requires x509 trusts!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    const/4 v0, 0x0

    if-nez p1, :cond_8

    move-object p1, v0

    goto :goto_3

    .line 152
    :cond_8
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    :goto_3
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    if-nez p2, :cond_9

    goto :goto_4

    .line 154
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_4
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedRPKs:Ljava/util/Set;

    .line 155
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->supportedCertificateTypes:Ljava/util/List;

    .line 156
    iput-boolean p4, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->useEmptyAcceptedIssuers:Z

    return-void

    .line 143
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list of supported certificate types must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 59
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->X509_TRUST_ALL:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$100()[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;
    .locals 1

    .line 59
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->RPK_TRUST_ALL:[Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    return-object v0
.end method

.method public static builder()Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;
    .locals 1

    .line 316
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAcceptedIssuers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->useEmptyAcceptedIssuers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->toSubjects(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 301
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/CertPathUtil;->toSubjects(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    .line 171
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->supportedCertificateTypes:Ljava/util/List;

    return-object v0
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 0

    return-void
.end method

.method public setupConfigurationHelper(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsForTrusts([Ljava/security/cert/X509Certificate;)V

    .line 162
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedRPKs:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    .line 164
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->getKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsForTrusts(Ljava/security/PublicKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;
    .locals 3

    const/4 v0, 0x0

    .line 179
    :try_start_0
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->getCertificateChain()Ljava/security/cert/CertPath;

    move-result-object v1

    if-nez v1, :cond_3

    .line 181
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedRPKs:Ljava/util/Set;

    if-eqz p2, :cond_2

    .line 185
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    .line 186
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedRPKs:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 187
    new-instance p3, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    invoke-direct {p3, p2}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>(Ljava/security/PublicKey;)V

    .line 188
    iget-object p4, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedRPKs:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Certificate validation failed: Raw public key is not trusted"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 190
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 191
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p4, "Raw public key is not trusted!"

    invoke-direct {p3, p4, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p3

    .line 194
    :cond_1
    :goto_0
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    invoke-direct {p3, p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PublicKey;Ljava/lang/Object;)V

    return-object p3

    .line 182
    :cond_2
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 183
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p4, "RPK verification not enabled!"

    invoke-direct {p3, p4, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p3

    .line 196
    :cond_3
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedCertificates:[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_9

    .line 201
    :try_start_1
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_6

    .line 202
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p7

    const/4 v2, 0x0

    invoke-interface {p7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/security/cert/Certificate;

    .line 203
    instance-of v2, p7, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_5

    .line 204
    check-cast p7, Ljava/security/cert/X509Certificate;

    .line 205
    invoke-static {p7, p4}, Lorg/eclipse/californium/elements/util/CertPathUtil;->canBeUsedForAuthentication(Ljava/security/cert/X509Certificate;Z)Z

    move-result p4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_5

    .line 212
    invoke-virtual {p0, p2, p3, p7}, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->verifyCertificatesSubject(Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 206
    :cond_4
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Certificate validation failed: key usage doesn\'t match"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 207
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 209
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p4, "Key Usage doesn\'t match!"

    invoke-direct {p3, p4, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p3

    .line 215
    :cond_5
    :goto_1
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->trustedCertificates:[Ljava/security/cert/X509Certificate;

    invoke-static {p6, v1, p2}, Lorg/eclipse/californium/elements/util/CertPathUtil;->validateCertificatePathWithIssuer(ZLjava/security/cert/CertPath;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 218
    :cond_6
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    invoke-direct {p2, p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/cert/CertPath;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_0
    move-exception p2

    .line 220
    :try_start_2
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p3

    if-nez p3, :cond_7

    .line 222
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 223
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p4, "Certificate validation failed due to {}"

    invoke-virtual {p2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 221
    :cond_7
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p4, "Certificate validation failed"

    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_8
    :goto_2
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p5, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p3, p4, p5}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 226
    new-instance p4, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p5, "Certificate chain could not be validated"

    invoke-direct {p4, p5, p3, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw p4

    .line 197
    :cond_9
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 198
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p4, "x509 verification not enabled!"

    invoke-direct {p3, p4, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p3
    :try_end_2
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    .line 230
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p4, "Certificate validation failed!"

    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    invoke-direct {p3, p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/HandshakeException;Ljava/lang/Object;)V

    return-object p3
.end method

.method public verifyCertificatesSubject(Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;Ljava/security/cert/X509Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    if-eqz p3, :cond_8

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 262
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 265
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_0

    :cond_2
    move-object p2, v0

    move-object v1, p2

    :goto_0
    if-eqz p1, :cond_3

    .line 269
    sget-object v2, Lorg/eclipse/californium/scandium/util/ServerName$NameType;->HOST_NAME:Lorg/eclipse/californium/scandium/util/ServerName$NameType;

    invoke-virtual {p1, v2}, Lorg/eclipse/californium/scandium/util/ServerNames;->getServerName(Lorg/eclipse/californium/scandium/util/ServerName$NameType;)Lorg/eclipse/californium/scandium/util/ServerName;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 271
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/util/ServerName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    :cond_4
    const-string v0, "Certificate "

    if-eqz p1, :cond_6

    .line 278
    invoke-static {p3, p1}, Lorg/eclipse/californium/elements/util/CertPathUtil;->matchDestination(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 279
    :cond_5
    invoke-static {p3}, Lorg/eclipse/californium/elements/util/CertPathUtil;->getSubjectsCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p2

    .line 280
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Certificate {} validation failed: destination doesn\'t match"

    invoke-interface {p3, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p3, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 282
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Destination \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' doesn\'t match!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1

    .line 286
    :cond_6
    invoke-static {p3, p2}, Lorg/eclipse/californium/elements/util/CertPathUtil;->matchLiteralIP(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_2
    return-void

    .line 287
    :cond_7
    invoke-static {p3}, Lorg/eclipse/californium/elements/util/CertPathUtil;->getSubjectsCn(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/StaticNewAdvancedCertificateVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Certificate {} validation failed: literal IP doesn\'t match"

    invoke-interface {p3, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p3, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 290
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Literal IP "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1

    .line 253
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Certficate must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
