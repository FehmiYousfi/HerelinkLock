.class public Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;
.super Ljava/lang/Object;
.source "DefaultCipherSuiteSelector.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;)Z
    .locals 2

    .line 70
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSupportedGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setGeneralMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;)V

    return v1

    .line 75
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getFormat()Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->EC_FORMAT:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setGeneralMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;)V

    return v1

    .line 81
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCertificateMismatch()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    move-result-object v0

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;->selectForCertificate(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 88
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSupportedGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectSupportedGroup(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V

    .line 93
    :cond_4
    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V

    const/4 p1, 0x1

    return p1
.end method

.method public select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;)Z
    .locals 3

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;->CIPHER_SUITE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setGeneralMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$GeneralMismatch;)V

    return v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 51
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/DefaultCipherSuiteSelector;->select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected selectForCertificate(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)Z
    .locals 6

    .line 119
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 123
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->isCompatible(Ljava/security/PublicKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getServerCertTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V

    return v1

    .line 132
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getClientAuthenticationMode()Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->useCertificateRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getClientCertTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V

    return v1

    .line 137
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSignatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V

    return v1

    .line 141
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object v2

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    if-ne v2, v3, :cond_5

    .line 143
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSupportedGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    :cond_4
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_EC_GROUPS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V

    return v1

    .line 149
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSignatures()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getSupportedSignatureAlgorithm(Ljava/util/List;Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v2

    if-nez v2, :cond_6

    .line 152
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V

    return v1

    .line 155
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getServerCertTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 156
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-virtual {v4, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 157
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCertificateChain()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 161
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSignatures()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCertificateChain()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSignedWithSupportedAlgorithms(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 164
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSupportedGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCertificateChain()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->isSupported(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    :cond_7
    if-nez v4, :cond_a

    .line 171
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getServerCertTypes()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 172
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    goto :goto_0

    .line 174
    :cond_8
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;->CERTIFICATE_PATH_SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->setCertificateMismatch(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters$CertificateBasedMismatch;)V

    return v1

    .line 158
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Certificate type x509 requires a certificate chain!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_a
    :goto_0
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V

    .line 181
    invoke-virtual {p1, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectServerCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    .line 182
    invoke-virtual {p1, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectSignatureAndHashAlgorithm(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;)V

    .line 183
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSupportedGroups()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectSupportedGroup(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V

    .line 184
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->useCertificateRequest()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getClientCertTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    goto :goto_1

    :cond_b
    const/4 p2, 0x0

    .line 186
    :goto_1
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->selectClientCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " based cipher suites are supported!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
