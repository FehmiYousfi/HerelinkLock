.class public final Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;
.super Ljava/lang/Object;
.source "DtlsConnectorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    }
.end annotation


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

.field private advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

.field private applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

.field private certificateConfigurationHelper:Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

.field private certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

.field private cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

.field private configuration:Lorg/eclipse/californium/elements/config/Configuration;

.field private connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

.field private connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

.field private healthHandler:Lorg/eclipse/californium/scandium/DtlsHealth;

.field private loggingTag:Ljava/lang/String;

.field private protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field private resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

.field private sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

.field private sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

.field private supportedCertificatekeyAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private supportedCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private supportedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field private supportedSignatureAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private useReuseAddress:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 288
    new-instance v0, Lorg/eclipse/californium/elements/config/Configuration;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/elements/config/Configuration;-><init>(Lorg/eclipse/californium/elements/config/Configuration;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    return-void

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Configuration must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/config/Configuration;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;-><init>(Lorg/eclipse/californium/elements/config/Configuration;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;)Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;)Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->loggingTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->loggingTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/ConnectionListener;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/SessionListener;)Lorg/eclipse/californium/scandium/dtls/SessionListener;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/SessionStore;)Lorg/eclipse/californium/scandium/dtls/SessionStore;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;)Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateConfigurationHelper:Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateConfigurationHelper:Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedGroups:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedGroups:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedSignatureAlgorithms:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedSignatureAlgorithms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCertificatekeyAlgorithms:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCertificatekeyAlgorithms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/util/List;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCipherSuites:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCipherSuites:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->address:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static synthetic access$302(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->address:Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method static synthetic access$400(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Ljava/lang/Boolean;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useReuseAddress:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$402(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useReuseAddress:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$502(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object p1
.end method

.method static synthetic access$602(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/DtlsHealth;)Lorg/eclipse/californium/scandium/DtlsHealth;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->healthHandler:Lorg/eclipse/californium/scandium/DtlsHealth;

    return-object p1
.end method

.method static synthetic access$700(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    return-object p0
.end method

.method static synthetic access$702(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    return-object p1
.end method

.method static synthetic access$800(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    return-object p0
.end method

.method static synthetic access$802(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;)Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    return-object p1
.end method

.method static synthetic access$900(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;
    .locals 0

    .line 141
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    return-object p0
.end method

.method static synthetic access$902(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;)Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    return-object p1
.end method

.method public static builder(Lorg/eclipse/californium/elements/config/Configuration;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 1

    .line 1446
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;-><init>(Lorg/eclipse/californium/elements/config/Configuration;)V

    return-object v0
.end method

.method public static builder(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;
    .locals 2

    .line 1457
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$1;)V

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .line 1411
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;-><init>(Lorg/eclipse/californium/elements/config/Configuration;)V

    .line 1412
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->address:Ljava/net/InetSocketAddress;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->address:Ljava/net/InetSocketAddress;

    .line 1413
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    .line 1414
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useReuseAddress:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useReuseAddress:Ljava/lang/Boolean;

    .line 1415
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 1416
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    .line 1417
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    .line 1418
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateConfigurationHelper:Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateConfigurationHelper:Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;

    .line 1419
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    .line 1420
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCertificatekeyAlgorithms:Ljava/util/List;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCertificatekeyAlgorithms:Ljava/util/List;

    .line 1421
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCipherSuites:Ljava/util/List;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCipherSuites:Ljava/util/List;

    .line 1422
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedSignatureAlgorithms:Ljava/util/List;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedSignatureAlgorithms:Ljava/util/List;

    .line 1423
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedGroups:Ljava/util/List;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedGroups:Ljava/util/List;

    .line 1424
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->loggingTag:Ljava/lang/String;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->loggingTag:Ljava/lang/String;

    .line 1425
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    .line 1426
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    .line 1427
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    .line 1428
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 1429
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    .line 1430
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    .line 1431
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->healthHandler:Lorg/eclipse/californium/scandium/DtlsHealth;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->healthHandler:Lorg/eclipse/californium/scandium/DtlsHealth;

    return-object v0
.end method

.method public getAdditionalTimeoutForEcc()I
    .locals 3

    .line 477
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ADDITIONAL_ECC_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->getTimeAsInt(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 811
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getAdvancedCertificateVerifier()Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;
    .locals 1

    .line 966
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    return-object v0
.end method

.method public getAdvancedPskStore()Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;
    .locals 1

    .line 953
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    return-object v0
.end method

.method public getApplicationLevelInfoSupplier()Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    return-object v0
.end method

.method public getAutoHandshakeTimeoutMillis()Ljava/lang/Long;
    .locals 5

    .line 1171
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getBackOffRetransmission()Ljava/lang/Integer;
    .locals 2

    .line 506
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_BACKOFF:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissions()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCertificateAuthenticationMode()Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;
    .locals 2

    .line 996
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    return-object v0
.end method

.method public getCertificateIdentityProvider()Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;
    .locals 1

    .line 826
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    return-object v0
.end method

.method public getCipherSuiteSelector()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;
    .locals 1

    .line 838
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->cipherSuiteSelector:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuiteSelector;

    return-object v0
.end method

.method public getConfiguration()Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    return-object v0
.end method

.method public getConnectionIdGenerator()Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    return-object v0
.end method

.method public getConnectionListener()Lorg/eclipse/californium/scandium/ConnectionListener;
    .locals 1

    .line 1287
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    return-object v0
.end method

.method public getConnectorThreadCount()Ljava/lang/Integer;
    .locals 2

    .line 1120
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTOR_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getDefaultHandshakeMode()Ljava/lang/String;
    .locals 2

    .line 1040
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v0, v1, :cond_0

    const-string v0, "none"

    return-object v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_DEFAULT_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/config/StringSetDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;
    .locals 2

    .line 1019
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    return-object v0
.end method

.method public getExtendedMasterSecretMode()Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;
    .locals 2

    .line 637
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_EXTENDED_MASTER_SECRET_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    return-object v0
.end method

.method public getHealthHandler()Lorg/eclipse/californium/scandium/DtlsHealth;
    .locals 1

    .line 1368
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->healthHandler:Lorg/eclipse/californium/scandium/DtlsHealth;

    return-object v0
.end method

.method public getHealthStatusIntervalMilliseconds()I
    .locals 3

    .line 1358
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/elements/config/SystemConfig;->HEALTH_STATUS_INTERVAL:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->getTimeAsInt(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    return v0
.end method

.method public getIdentityCertificateTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1061
    :cond_0
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->getSupportedCertificateTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingTag()Ljava/lang/String;
    .locals 1

    .line 1344
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->loggingTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConnections()Ljava/lang/Integer;
    .locals 2

    .line 1094
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_CONNECTIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxDeferredProcessedIncomingRecordsSize()Ljava/lang/Integer;
    .locals 2

    .line 543
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_DEFERRED_INBOUND_RECORDS_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxDeferredProcessedOutgoingApplicationDataMessages()Ljava/lang/Integer;
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_DEFERRED_OUTBOUND_APPLICATION_MESSAGES:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    return-object v0
.end method

.method public getMaxFragmentedHandshakeMessageLength()Ljava/lang/Integer;
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_FRAGMENTED_HANDSHAKE_MESSAGE_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxRetransmissionTimeout()Ljava/lang/Integer;
    .locals 3

    .line 430
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->getTimeAsInt(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRetransmissions()Ljava/lang/Integer;
    .locals 2

    .line 521
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxTransmissionUnit()Ljava/lang/Integer;
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_TRANSMISSION_UNIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxTransmissionUnitLimit()Ljava/lang/Integer;
    .locals 2

    .line 569
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_TRANSMISSION_UNIT_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutboundMessageBufferSize()Ljava/lang/Integer;
    .locals 2

    .line 801
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_OUTBOUND_MESSAGE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreselectedCipherSuites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_PRESELECTED_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getProtocolVersionForHelloVerifyRequests()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object v0
.end method

.method public getReceiverThreadCount()Ljava/lang/Integer;
    .locals 2

    .line 1131
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecordSizeLimit()Ljava/lang/Integer;
    .locals 2

    .line 341
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECORD_SIZE_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getResumptionVerifier()Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;
    .locals 1

    .line 1334
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    return-object v0
.end method

.method public getRetransmissionRandomFactor()Ljava/lang/Float;
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_INIT_RANDOM:Lorg/eclipse/californium/elements/config/FloatDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getRetransmissionTimeout()I
    .locals 3

    .line 418
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->getTimeAsInt(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    return v0
.end method

.method public getRetransmissionTimeoutScale()Ljava/lang/Float;
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT_SCALE:Lorg/eclipse/californium/elements/config/FloatDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getSessionListener()Lorg/eclipse/californium/scandium/dtls/SessionListener;
    .locals 1

    .line 1298
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    return-object v0
.end method

.method public getSessionStore()Lorg/eclipse/californium/scandium/dtls/SessionStore;
    .locals 1

    .line 1314
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    return-object v0
.end method

.method public getSocketReceiveBufferSize()Ljava/lang/Integer;
    .locals 2

    .line 1142
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getSocketSendBufferSize()Ljava/lang/Integer;
    .locals 2

    .line 1153
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getStaleConnectionThresholdSeconds()Ljava/lang/Long;
    .locals 3

    .line 1109
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_STALE_CONNECTION_THRESHOLD:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCertificateKeyAlgorithm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCertificatekeyAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedCipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedSignatureAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->supportedSignatureAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getTrustCertificateTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->advancedCertificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1078
    :cond_0
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;->getSupportedCertificateTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyPeersOnResumptionThreshold()Ljava/lang/Integer;
    .locals 2

    .line 686
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_VERIFY_PEERS_ON_RESUMPTION_THRESHOLD:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public supportsDeprecatedCid()Ljava/lang/Boolean;
    .locals 2

    .line 790
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SUPPORT_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useAntiReplayFilter()Ljava/lang/Boolean;
    .locals 2

    .line 1201
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useDeprecatedCid()Ljava/lang/Integer;
    .locals 2

    .line 771
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public useDisabledWindowFilter()Ljava/lang/Integer;
    .locals 2

    .line 1230
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_DISABLED_WINDOW_FOR_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public useEarlyStopRetransmission()Ljava/lang/Boolean;
    .locals 2

    .line 581
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_EARLY_STOP_RETRANSMISSION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useHelloVerifyRequest()Ljava/lang/Boolean;
    .locals 2

    .line 730
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useHelloVerifyRequestForPsk()Ljava/lang/Boolean;
    .locals 2

    .line 709
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_HELLO_VERIFY_REQUEST_FOR_PSK:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useMultiHandshakeMessageRecords()Ljava/lang/Boolean;
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_MULTI_HANDSHAKE_MESSAGE_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useMultiRecordMessages()Ljava/lang/Boolean;
    .locals 2

    .line 387
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_MULTI_RECORD_MESSAGES:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useRecommendedCipherSuitesOnly()Ljava/lang/Boolean;
    .locals 2

    .line 1379
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CIPHER_SUITES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useRecommendedSignatureAndHashAlgorithmsOnly()Ljava/lang/Boolean;
    .locals 2

    .line 1403
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_SIGNATURE_AND_HASH_ALGORITHMS_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useRecommendedSupportedGroupsOnly()Ljava/lang/Boolean;
    .locals 2

    .line 1391
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CURVES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useReuseAddress()Ljava/lang/Boolean;
    .locals 1

    .line 595
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useReuseAddress:Ljava/lang/Boolean;

    return-object v0
.end method

.method public useServerNameIndication()Ljava/lang/Boolean;
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_SERVER_NAME_INDICATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useServerSessionId()Ljava/lang/Boolean;
    .locals 2

    .line 1189
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SERVER_USE_SESSION_ID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useTruncatedCertificatePathForClientsCertificateMessage()Ljava/lang/Boolean;
    .locals 2

    .line 1262
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_TRUNCATE_CLIENT_CERTIFICATE_PATH:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useTruncatedCertificatePathForValidation()Ljava/lang/Boolean;
    .locals 2

    .line 1277
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_TRUNCATE_CERTIFICATE_PATH_FOR_VALIDATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public useUpdateAddressUsingCidOnNewerRecords()Ljava/lang/Boolean;
    .locals 2

    .line 1246
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_UPDATE_ADDRESS_USING_CID_ON_NEWER_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public verifyServerCertificatesSubject()Ljava/lang/Boolean;
    .locals 2

    .line 1008
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
