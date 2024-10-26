.class public Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;
.super Ljava/lang/Object;
.source "SingleCertificateProvider.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;
.implements Lorg/eclipse/californium/scandium/dtls/x509/ConfigurationHelperSetup;


# instance fields
.field private final certificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;

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
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 144
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->fromPublicKey(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->privateKey:Ljava/security/PrivateKey;

    .line 150
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->publicKey:Ljava/security/PublicKey;

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->certificateChain:Ljava/util/List;

    const/4 p1, 0x1

    new-array v0, p1, [Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 152
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    new-array p1, p1, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 153
    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->getAlgorithm(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key\'s ec-group must be supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Public key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Private key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 94
    array-length v0, p2

    if-eqz v0, :cond_5

    if-eqz p3, :cond_2

    .line 98
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 102
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/CertificateType;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 103
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

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Certificate types must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->privateKey:Ljava/security/PrivateKey;

    const/4 p1, 0x0

    .line 109
    aget-object v0, p2, p1

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->publicKey:Ljava/security/PublicKey;

    const/4 v0, 0x1

    if-nez p3, :cond_3

    .line 112
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/SslContextUtil;->asX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->certificateChain:Ljava/util/List;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 118
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->certificateChain:Ljava/util/List;

    .line 120
    :goto_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    new-array p2, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    .line 121
    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->publicKey:Ljava/security/PublicKey;

    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->getAlgorithm(Ljava/security/PublicKey;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    move-result-object p3

    aput-object p3, p2, p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->supportedCertificateKeyAlgorithms:Ljava/util/List;

    return-void

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Certificate chain must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Certificate chain must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Private key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 70
    invoke-static {p3}, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->asList([Lorg/eclipse/californium/scandium/dtls/CertificateType;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/util/List;)V

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

    .line 196
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
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

    .line 171
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->supportedCertificateKeyAlgorithms:Ljava/util/List;

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

    .line 176
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->supportedCertificateTypes:Ljava/util/List;

    return-object v0
.end method

.method public requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
    .locals 0
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

    .line 183
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->certificateChain:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 184
    new-instance p4, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    iget-object p5, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->privateKey:Ljava/security/PrivateKey;

    invoke-direct {p4, p1, p5, p2, p3}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PrivateKey;Ljava/util/List;Ljava/lang/Object;)V

    return-object p4

    .line 186
    :cond_0
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    iget-object p4, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->privateKey:Ljava/security/PrivateKey;

    iget-object p5, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->publicKey:Ljava/security/PublicKey;

    invoke-direct {p2, p1, p4, p5, p3}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/Object;)V

    return-object p2
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 0

    return-void
.end method

.method public setupConfigurationHelper(Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->certificateChain:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsFor(Ljava/util/List;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/SingleCertificateProvider;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateConfigurationHelper;->addConfigurationDefaultsFor(Ljava/security/PublicKey;)V

    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Certificate configuration helper must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
