.class public Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;
.super Lorg/eclipse/californium/scandium/dtls/Handshaker;
.source "ServerHandshaker.java"


# static fields
.field private static final CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

.field private static final CLIENT_HELLO:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

.field private static final EMPTY_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

.field protected static final NO_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;


# instance fields
.field private final LOGGER_NEGOTIATION:Lorg/slf4j/Logger;

.field private certificateVerifyMessage:Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

.field private cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

.field private final cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

.field private final clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

.field private ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

.field private pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

.field private preSharedKeyIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

.field private final supportDeprecatedCid:Z

.field private final supportedCertificateKeyAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedClientCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedServerCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedSignatureAndHashAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final useHelloVerifyRequest:Z

.field private final useHelloVerifyRequestForPsk:Z

.field private final useSessionId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 126
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->CLIENT_HELLO:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 128
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v0

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_VERIFY:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {v2, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v6}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    new-array v1, v5, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 132
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v6}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {v2, v6}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    aput-object v2, v1, v0

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v6}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v4

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->EMPTY_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    new-array v1, v5, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 136
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {v2, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    aput-object v2, v1, v0

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v0, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v0, v1, v4

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->NO_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    return-void
.end method

.method public constructor <init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V
    .locals 0

    .line 246
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/Handshaker;-><init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".negotiation"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER_NEGOTIATION:Lorg/slf4j/Logger;

    .line 248
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getCipherSuiteSelector()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    .line 249
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedCipherSuites:Ljava/util/List;

    .line 250
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedGroups()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedGroups:Ljava/util/List;

    .line 252
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getCertificateAuthenticationMode()Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    .line 253
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useServerSessionId()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useSessionId:Z

    .line 254
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useHelloVerifyRequest()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useHelloVerifyRequest:Z

    .line 255
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useHelloVerifyRequest:Z

    if-eqz p1, :cond_0

    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useHelloVerifyRequestForPsk()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useHelloVerifyRequestForPsk:Z

    .line 258
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getTrustCertificateTypes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedClientCertificateTypes:Ljava/util/List;

    .line 259
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getIdentityCertificateTypes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedServerCertificateTypes:Ljava/util/List;

    .line 260
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedSignatureAlgorithms()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedSignatureAndHashAlgorithms:Ljava/util/List;

    .line 261
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedCertificateKeyAlgorithm()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    .line 262
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportsDeprecatedCid()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportDeprecatedCid:Z

    .line 263
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->CLIENT_HELLO:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    return-void
.end method

.method private createCertificateMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 3

    .line 621
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v0

    .line 625
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v1, v0, :cond_0

    .line 626
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 627
    :cond_0
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v1, v0, :cond_1

    .line 628
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getCertificateChain()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/util/List;)V

    .line 632
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    goto :goto_1

    .line 630
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not supported!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private createCertificateRequest(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)Z
    .locals 7

    .line 689
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    .line 691
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->useCertificateRequest()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 694
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;-><init>()V

    .line 695
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedSignatureAndHashAlgorithms:Ljava/util/List;

    .line 696
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    .line 697
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/4 v6, 0x1

    if-ne v5, v1, :cond_0

    .line 698
    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addSignatureAlgorithms(Ljava/util/List;)V

    .line 699
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->certificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    if-eqz v3, :cond_1

    .line 700
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->certificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    invoke-interface {v3}, Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;->getAcceptedIssuers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addCerticiateAuthorities(Ljava/util/List;)Z

    goto :goto_0

    .line 702
    :cond_0
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v5, v1, :cond_1

    new-array v4, v6, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 703
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 704
    invoke-static {v2, v4}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getCompatibleSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 705
    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addSignatureAlgorithms(Ljava/util/List;)V

    .line 707
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Certificate Type: {}"

    invoke-interface {v3, v5, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedSignatureAndHashAlgorithms:Ljava/util/List;

    const-string v5, "Signature and hash algorithms {}/{}"

    invoke-interface {v1, v5, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    const-string v5, "Certificate key algorithms {}/{}"

    invoke-interface {v1, v5, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 711
    invoke-static {v2, v3}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->isSupportedAlgorithm(Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 712
    invoke-virtual {v0, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->addCertificateType(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;)V

    goto :goto_1

    .line 715
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    return v6

    :cond_4
    return v3
.end method

.method private createServerHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->negotiateProtocolVersion(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    .line 597
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 599
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    .line 600
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useSessionId:Z

    .line 601
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-virtual {v3, v4}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->is(Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasExtendedMasterSecretExtension()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    .line 604
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/SessionId;

    invoke-direct {v2}, Lorg/eclipse/californium/scandium/dtls/SessionId;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/SessionId;->emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    .line 605
    :goto_0
    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSessionIdentifier(Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    .line 606
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setProtocolVersion(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)V

    .line 607
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setCompressionMethod(Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 609
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/ServerHello;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v1

    invoke-direct {v3, v0, v2, v4, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 611
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->addHelloExtensions(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    .line 612
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 613
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->expectEcc()V

    .line 615
    :cond_2
    invoke-virtual {p0, p2, v3}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 616
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    return-void
.end method

.method private createServerKeyExchange(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v1

    .line 644
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    if-eq v2, v1, :cond_0

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    if-ne v2, v1, :cond_1

    .line 647
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSelectedSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v2

    .line 648
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-direct {v3, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V

    iput-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    .line 649
    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setEcGroup(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v2, 0x0

    .line 658
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 660
    :cond_2
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSignatureAndHashAlgorithm()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;Ljava/security/PrivateKey;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V

    move-object v2, v1

    goto :goto_0

    .line 675
    :cond_3
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->EMPTY:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;)V

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 684
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 651
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 652
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process handshake message, caused by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getCommonCertificateTypes(Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 1083
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getCommonCertificateTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1084
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1085
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->DEFAULT_X509:Ljava/util/List;

    return-object p0

    .line 1088
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->EMPTY:Ljava/util/List;

    return-object p0
.end method

.method private getCommonCipherSuites(Lorg/eclipse/californium/scandium/dtls/ClientHello;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ClientHello;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedCipherSuites:Ljava/util/List;

    .line 1038
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    .line 1039
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1041
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1043
    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCommonCipherSuites(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getCommonClientCertificateTypes(Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedClientCertificateTypes:Ljava/util/List;

    .line 1049
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    instance-of v2, v1, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    if-eqz v2, :cond_0

    .line 1055
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    :cond_0
    instance-of v1, v1, Lorg/eclipse/californium/elements/auth/X509CertPath;

    if-eqz v1, :cond_1

    .line 1057
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonCertificateTypes(Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getCommonServerCertificateTypes(Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedServerCertificateTypes:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonCertificateTypes(Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getCommonSignatureAndHashAlgorithms(Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1028
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedSignatureAndHashAlgorithms:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 1030
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;->getSupportedSignatureAndHashAlgorithms()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedSignatureAndHashAlgorithms:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->getCommonSignatureAlgorithms(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getCommonSupportedGroups(Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 989
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 991
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;->getSupportedGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 994
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private negotiateCipherSuite(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    const-string v2, "Negotiate on: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;->select(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 926
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    const-string v1, "Negotiated: {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 927
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    .line 928
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSelectedCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    .line 929
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setCipherSuite(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V

    .line 930
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 931
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSelectedSignature()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSignatureAndHashAlgorithm(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;)V

    .line 932
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSelectedServerCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 937
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSendCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    .line 938
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getSelectedClientCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    .line 939
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    sget-object v3, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setReceiveCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    goto :goto_0

    .line 941
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 943
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "No common client certificate type!"

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 946
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    sget-object v3, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 948
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setReceiveCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    goto :goto_0

    .line 934
    :cond_2
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 935
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "No common server certificate type!"

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 954
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v2, "Negotiated cipher suite [{}] with peer [{}]"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 956
    :cond_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER_NEGOTIATION:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 957
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER_NEGOTIATION:Lorg/slf4j/Logger;

    const-string v1, "{}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER_NEGOTIATION:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getMismatchDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER_NEGOTIATION:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    const-string v1, "Parameters: {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    :cond_5
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;->getMismatchSummary()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "Client proposed unsupported cipher suites or parameters only"

    :cond_6
    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    .line 968
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 969
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    invoke-direct {v1, p1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1
.end method

.method private negotiateECPointFormat(Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;)Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;
    .locals 1

    if-nez p1, :cond_0

    .line 1007
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object p1

    .line 1008
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->contains(Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1009
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private negotiateProtocolVersion(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 898
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->compareTo(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 899
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object p1

    .line 902
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->compareTo(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)I

    move-result v0

    if-gez v0, :cond_1

    .line 903
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 905
    :goto_0
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->PROTOCOL_VERSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)V

    .line 906
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The server only supports DTLS v1.2, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
.end method

.method private receivedCertificateVerify(Lorg/eclipse/californium/scandium/dtls/CertificateVerify;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->certificateVerifyMessage:Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    .line 408
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->handshakeMessages:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->otherPeersPublicKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->handshakeMessages:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->verifySignature(Ljava/security/PublicKey;Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->setOtherPeersSignatureVerified()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->hasMasterSecret()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->expectChangeCipherSpecMessage()V

    :cond_0
    return-void
.end method

.method private receivedClientCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    sget-object v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-eq p1, v0, :cond_0

    .line 377
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->EMPTY_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Client authentication failed: missing certificate!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 373
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 374
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Client Certificate required!"

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->verifyCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;Z)V

    :goto_0
    return-void
.end method

.method private receivedClientFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    sget-object v1, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->EMPTY_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->isExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 437
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Client did not send required authentication messages."

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 440
    :cond_1
    :goto_0
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->flightNumber:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->flightNumber:I

    .line 441
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getHandshakeMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 445
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cloneMessageDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 448
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->verifyFinished(Lorg/eclipse/californium/scandium/dtls/Finished;[B)V

    .line 452
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;

    invoke-direct {v1}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;-><init>()V

    .line 453
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;)V

    .line 454
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->setCurrentWriteState()V

    .line 459
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Finished;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 460
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createFinishedMessage([B)Lorg/eclipse/californium/scandium/dtls/Finished;

    move-result-object p1

    .line 461
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 462
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->sendLastFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 463
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->contextEstablished()V

    return-void
.end method

.method private receivedClientKeyExchange(Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 731
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->getEncodedPoint()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->generateSecret([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 733
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->generateMasterSecretSeed()[B

    move-result-object v1

    .line 734
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v0

    invoke-static {v2, p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->generateMasterSecret(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 737
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 740
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 741
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process handshake message, caused by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private receivedClientKeyExchange(Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 774
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->getIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->preSharedKeyIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    .line 775
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->getEncodedPoint()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->generateSecret([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->generateMasterSecretSeed()[B

    move-result-object p1

    .line 777
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->preSharedKeyIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 779
    :try_start_1
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 780
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot process handshake message, caused by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :goto_0
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    throw p1
.end method

.method private receivedClientKeyExchange(Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 756
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;->getIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->preSharedKeyIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    .line 757
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->generateMasterSecretSeed()[B

    move-result-object p1

    .line 758
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->preSharedKeyIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;[B)V

    return-void
.end method


# virtual methods
.method protected addHelloExtensions(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/ServerHello;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 801
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasExtendedMasterSecretExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->NONE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 803
    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setExtendedMasterSecret(Z)V

    .line 804
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;->INSTANCE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    invoke-virtual {p2, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    goto :goto_0

    .line 806
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->REQUIRED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    if-eq v1, v2, :cond_b

    .line 811
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 812
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-virtual {v1}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->useCertificateRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 815
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getClientCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 817
    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;->contains(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    invoke-direct {v2, v1}, Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    .line 819
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 824
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 826
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 828
    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;->contains(Lorg/eclipse/californium/scandium/dtls/CertificateType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    invoke-direct {v2, v1}, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    .line 830
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 835
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 836
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSupportedPointFormatsExtension()Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 839
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->DEFAULT_POINT_FORMATS_EXTENSION:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    invoke-virtual {p2, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 843
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRecordSizeLimitExtension()Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 845
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;->getRecordSizeLimit()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setRecordSizeLimit(I)V

    .line 846
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->recordSizeLimit:Ljava/lang/Integer;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getMaxFragmentLength()I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->recordSizeLimit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 847
    :goto_1
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;

    invoke-direct {v3, v2}, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;-><init>(I)V

    invoke-virtual {p2, v3}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 848
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v5, "Received record size limit [{} bytes] from peer [{}]"

    invoke-interface {v3, v5, v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    if-nez v1, :cond_7

    .line 852
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getMaxFragmentLengthExtension()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 854
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->getFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setMaxFragmentLength(I)V

    .line 855
    invoke-virtual {p2, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 856
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->getFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v3, "Negotiated max. fragment length [{} bytes] with peer [{}]"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 861
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerNameExtension()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 862
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->sniEnabled:Z

    if-eqz v0, :cond_8

    .line 866
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->emptyServerNameIndication()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 869
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportsConnectionId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 870
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getConnectionIdExtension()Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 872
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->useDeprecatedCid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 873
    iget-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportDeprecatedCid:Z

    if-eqz v1, :cond_a

    .line 874
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getReadConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    .line 875
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->fromConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object v2

    .line 877
    invoke-virtual {p2, v2}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 878
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object p2

    .line 879
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setWriteConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V

    .line 880
    invoke-virtual {p2, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setReadConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V

    .line 881
    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setDeprecatedCid(Z)V

    :cond_a
    return-void

    .line 807
    :cond_b
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p2, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v0, "Extended Master Secret required!"

    invoke-direct {p1, v0, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    const/4 v0, 0x0

    .line 1098
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->ecdhe:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    return-void
.end method

.method protected doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 278
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 319
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedClientFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V

    goto/16 :goto_0

    .line 323
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Received unexpected %s message from peer %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 312
    :cond_1
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedCertificateVerify(Lorg/eclipse/californium/scandium/dtls/CertificateVerify;)V

    .line 313
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->hasMasterSecret()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->otherPeersCertificateVerified:Z

    if-eqz p1, :cond_8

    .line 314
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->expectChangeCipherSpecMessage()V

    goto :goto_0

    .line 289
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 299
    :cond_3
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedClientKeyExchange(Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->applyMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 301
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 302
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->processMasterSecret()V

    goto :goto_0

    .line 295
    :cond_4
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedClientKeyExchange(Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;)V

    goto :goto_0

    .line 291
    :cond_5
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedClientKeyExchange(Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;)V

    goto :goto_0

    .line 285
    :cond_6
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedClientCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;)V

    goto :goto_0

    .line 280
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->handshakeStarted()V

    .line 281
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->receivedClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    :cond_8
    :goto_0
    return-void
.end method

.method final getNegotiatedCipherSuiteParameters()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;
    .locals 1

    .line 1092
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    return-object v0
.end method

.method public getPreSharedKeyIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->preSharedKeyIdentity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    return-object v0
.end method

.method protected isClient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processCertificateIdentityAvailable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 553
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->publicKey:Ljava/security/PublicKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->certificateChain:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;-><init>(Ljava/security/PublicKey;Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    .line 554
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    const/4 v1, 0x0

    .line 555
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 556
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->processClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    return-void
.end method

.method protected processCertificateVerified()V
    .locals 1

    .line 390
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->hasMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->certificateVerifyMessage:Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->expectChangeCipherSpecMessage()V

    :cond_0
    return-void
.end method

.method protected processClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->negotiateCipherSuite(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 570
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasCookie()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->flightNumber:I

    .line 572
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    .line 574
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createServerHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 576
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createCertificateMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 578
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createServerKeyExchange(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 580
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createCertificateRequest(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 582
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->NO_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    .line 587
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/ServerHelloDone;

    invoke-direct {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHelloDone;-><init>()V

    .line 588
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 589
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return-void
.end method

.method protected processMasterSecret()V
    .locals 1

    .line 351
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->NO_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->isExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->EMPTY_CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->isExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->CLIENT_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->isExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->otherPeersCertificateVerified:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->certificateVerifyMessage:Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->expectChangeCipherSpecMessage()V

    :cond_1
    return-void
.end method

.method protected receivedClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 479
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->negotiateProtocolVersion(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 481
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCompressionMethods()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 487
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonCipherSuites(Lorg/eclipse/californium/scandium/dtls/ClientHello;)Ljava/util/List;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 494
    iget-boolean v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useHelloVerifyRequest:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->useHelloVerifyRequestForPsk:Z

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasCookie()Z

    move-result v1

    if-nez v1, :cond_3

    .line 495
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 498
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    .line 500
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isPskBased()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 507
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonServerCertificateTypes(Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;)Ljava/util/List;

    move-result-object v12

    .line 509
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getClientCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonClientCertificateTypes(Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;)Ljava/util/List;

    move-result-object v13

    .line 511
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSupportedEllipticCurvesExtension()Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonSupportedGroups(Lorg/eclipse/californium/scandium/dtls/SupportedEllipticCurvesExtension;)Ljava/util/List;

    move-result-object v5

    .line 512
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSupportedSignatureAlgorithmsExtension()Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getCommonSignatureAndHashAlgorithms(Lorg/eclipse/californium/scandium/dtls/SignatureAlgorithmsExtension;)Ljava/util/List;

    move-result-object v4

    .line 514
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSupportedPointFormatsExtension()Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->negotiateECPointFormat(Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;)Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    move-result-object v16

    .line 516
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getServerNameExtension()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 518
    iget-boolean v2, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->sniEnabled:Z

    if-eqz v2, :cond_4

    .line 521
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    .line 522
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;)V

    const/4 v1, 0x1

    .line 523
    invoke-virtual {v2, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSniSupported(Z)V

    .line 524
    iget-object v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v3, "using server name indication received from peer [{}]"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 526
    :cond_4
    iget-object v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v3, "client [{}] included SNI in HELLO but SNI support is disabled"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    :cond_5
    :goto_1
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->clientAuthenticationMode:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-object v7, v1

    move-object v11, v0

    move-object v14, v5

    move-object v15, v4

    invoke-direct/range {v7 .. v16}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;-><init>(Ljava/security/PublicKey;Ljava/util/List;Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;)V

    iput-object v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->cipherSuiteParameters:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteParameters;

    .line 532
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsCipherSuiteRequiringCertExchange(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v1, p1

    .line 533
    iput-object v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->pendingClientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 534
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v2

    .line 535
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCertificateKeyAlgorithms(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 536
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->requestCertificateIdentity(Ljava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 537
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->startInitialTimeout()V

    goto :goto_2

    :cond_6
    move-object/from16 v1, p1

    .line 540
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->processClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    :cond_7
    :goto_2
    return-void

    .line 489
    :cond_8
    iget-object v0, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, v6, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->supportedCipherSuites:Ljava/util/List;

    const-string v2, "Server cipher suites: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v2, "Client does not propose a common cipher suite"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 483
    :cond_9
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v2, "Client does not support NULL compression method"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
.end method

.method protected startInitialTimeout()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->setResponseStarted()V

    .line 341
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return-void
.end method
