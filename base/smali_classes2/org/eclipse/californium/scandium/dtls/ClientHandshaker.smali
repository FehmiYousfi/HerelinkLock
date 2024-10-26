.class public Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;
.super Lorg/eclipse/californium/scandium/dtls/Handshaker;
.source "ClientHandshaker.java"


# static fields
.field protected static final INIT:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

.field private static final NO_SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

.field protected static final SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;


# instance fields
.field private certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

.field protected clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

.field protected flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

.field protected handshakeHash:[B

.field protected final maxFragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

.field private maxProtocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field private probe:Z

.field private receivedServerHelloDone:Z

.field private serverKeyExchange:Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;

.field private final supportedCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedClientCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedServerCertificateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedSignatureAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field protected final truncateCertificatePath:Z

.field private final useDeprecatedCid:Ljava/lang/Integer;

.field private final verifyServerCertificatesSubject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 138
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v4

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->INIT:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 142
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CERTIFICATE_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v5, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V

    aput-object v2, v1, v0

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO_DONE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {v2, v6}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v7}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    const/4 v7, 0x5

    aput-object v2, v1, v7

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    new-array v1, v6, [Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    .line 150
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v6, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->SERVER_HELLO_DONE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v2, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {v2, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V

    aput-object v2, v1, v0

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-direct {v0, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    aput-object v0, v1, v5

    sput-object v1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->NO_SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Z)V
    .locals 8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 273
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/Handshaker;-><init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    .line 156
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->maxProtocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 274
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedCipherSuites:Ljava/util/List;

    .line 275
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedGroups()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedGroups:Ljava/util/List;

    .line 276
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->maxFragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    .line 277
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useTruncatedCertificatePathForClientsCertificateMessage()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->truncateCertificatePath:Z

    .line 278
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getTrustCertificateTypes()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedServerCertificateTypes:Ljava/util/List;

    .line 279
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getIdentityCertificateTypes()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedClientCertificateTypes:Ljava/util/List;

    .line 280
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedSignatureAlgorithms()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedSignatureAlgorithms:Ljava/util/List;

    .line 281
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useDeprecatedCid()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->useDeprecatedCid:Ljava/lang/Integer;

    .line 282
    invoke-virtual {p5}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->verifyServerCertificatesSubject()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->verifyServerCertificatesSubject:Z

    .line 283
    iput-boolean p6, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->probe:Z

    .line 284
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setHostName(Ljava/lang/String;)V

    return-void
.end method

.method private createCertificateMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 5

    .line 796
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    if-eqz v0, :cond_8

    .line 797
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedSignatureAlgorithms:Ljava/util/List;

    .line 798
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;->DEFAULT:Ljava/util/List;

    .line 801
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->sendCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    .line 804
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 806
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_4

    .line 808
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->getSignatureAndHashAlgorithm(Ljava/security/PublicKey;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 811
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-direct {v3, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/security/PublicKey;)V

    .line 812
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 813
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v4, "sending CERTIFICATE message with client RawPublicKey [{}] to server"

    invoke-interface {v2, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 818
    :cond_1
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne v2, v1, :cond_7

    .line 819
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateChain:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 820
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateChain:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->getSignatureAndHashAlgorithm(Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 823
    iget-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->truncateCertificatePath:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->getCertificateAuthorities()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 826
    :goto_0
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateChain:Ljava/util/List;

    invoke-direct {v2, v4, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 827
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    move-object v0, v3

    move-object v3, v2

    goto :goto_2

    :cond_4
    move-object v0, v3

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    if-nez v0, :cond_6

    .line 838
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-direct {v3}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;-><init>()V

    .line 840
    :cond_6
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 841
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSignatureAndHashAlgorithm(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;)V

    goto :goto_3

    .line 834
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not supported!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method protected static isSupportedCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 856
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 858
    :cond_0
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processServerHelloDone()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 628
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flightNumber:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flightNumber:I

    .line 630
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    .line 632
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->createCertificateMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 639
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v2

    .line 645
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ECDHE_PSK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->EC_DIFFIE_HELLMAN:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    goto :goto_1

    .line 648
    :cond_1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->serverKeyExchange:Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->getSupportedGroup()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v3

    .line 649
    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedGroups:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 650
    new-instance v5, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;

    invoke-direct {v5, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V

    .line 651
    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->serverKeyExchange:Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;

    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;->getEncodedPoint()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->generateSecret([B)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 652
    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->getEncodedPoint()[B

    move-result-object v7

    .line 653
    invoke-virtual {v0, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setEcGroup(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_1
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    goto :goto_2

    .line 687
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getPskClientIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Using ECDHE PSK identity: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;

    invoke-direct {v1, v0, v7}, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;[B)V

    .line 690
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 691
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->generateMasterSecretSeed()[B

    move-result-object v1

    .line 692
    invoke-virtual {p0, v0, v6, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;[B)V

    goto :goto_2

    .line 679
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getPskClientIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Using PSK identity: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;-><init>(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;)V

    .line 682
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 683
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->generateMasterSecretSeed()[B

    move-result-object v1

    .line 684
    invoke-virtual {p0, v0, v4, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;[B)V

    goto :goto_2

    .line 668
    :cond_4
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;

    invoke-direct {v1, v7}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;-><init>([B)V

    .line 669
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 670
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->generateMasterSecretSeed()[B

    move-result-object v1

    .line 671
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v0

    invoke-static {v2, v6, v1, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->generateMasterSecret(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 674
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->applyMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 675
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 676
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->processMasterSecret()V

    .line 699
    :goto_2
    invoke-static {v5}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 700
    invoke-static {v6}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    return-void

    .line 655
    :cond_5
    :try_start_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 656
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v2, "Cannot process handshake message, ec-group not offered! "

    invoke-direct {v1, v2, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 659
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 660
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot process handshake message, caused by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private receivedCertificateRequest(Lorg/eclipse/californium/scandium/dtls/CertificateRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    .line 575
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->getCertificateAuthorities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v2

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->getCertificateKeyAlgorithms()Ljava/util/List;

    move-result-object v3

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->requestCertificateIdentity(Ljava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    return-void
.end method

.method private receivedEcdhSignedServerKeyExchange(Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->otherPeersPublicKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->verifySignature(Ljava/security/PublicKey;Lorg/eclipse/californium/scandium/dtls/Random;Lorg/eclipse/californium/scandium/dtls/Random;)V

    .line 557
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->serverKeyExchange:Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;

    .line 558
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->setOtherPeersSignatureVerified()Z

    return-void
.end method

.method private receivedServerCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 533
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->verifyServerCertificatesSubject:Z

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->verifyCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;Z)V

    return-void

    .line 534
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Certificate validation failed: empty server certificate!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 535
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 536
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Empty server certificate!"

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
.end method

.method private receivedServerFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->handshakeHash:[B

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->verifyFinished(Lorg/eclipse/californium/scandium/dtls/Finished;[B)V

    .line 360
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->contextEstablished()V

    .line 361
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->handshakeCompleted()V

    return-void
.end method

.method private receivedServerHelloDone()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerHelloDone:Z

    .line 610
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateRequest:Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->certificateIdentityAvailable:Z

    if-eqz v0, :cond_1

    .line 611
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->processServerHelloDone()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected addConnectionId(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 2

    .line 924
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportsConnectionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->useConnectionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getConnection()Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    goto :goto_0

    .line 931
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->EMPTY:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 934
    :goto_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->useDeprecatedCid:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 935
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getExtensionTypeById(I)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v1

    goto :goto_1

    .line 937
    :cond_1
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 939
    :goto_1
    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->fromConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object v0

    .line 940
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    :cond_2
    return-void
.end method

.method protected addMaxFragmentLength(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 3

    .line 916
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->maxFragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    if-eqz v0, :cond_0

    .line 917
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;)V

    .line 918
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 919
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->maxFragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v2, "Indicating max. fragment length [{}] to server [{}]"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected addRecordSizeLimit(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 3

    .line 908
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->recordSizeLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->recordSizeLimit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;-><init>(I)V

    .line 910
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 911
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->recordSizeLimit:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->peerToLog:Ljava/lang/Object;

    const-string v2, "Indicating record size limit [{}] to server [{}]"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected addServerNameIndication(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 4

    .line 945
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adding SNI extension to CLIENT_HELLO message [{}]"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 948
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;->forServerNames(Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    :cond_0
    return-void
.end method

.method protected completeProcessingServerHelloDone()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->isEccBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->expectEcc()V

    .line 754
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSignatureAndHashAlgorithm()Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 758
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->privateKey:Ljava/security/PrivateKey;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->handshakeMessages:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;-><init>(Lorg/eclipse/californium/scandium/dtls/SignatureAndHashAlgorithm;Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 760
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 766
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;-><init>()V

    .line 767
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;)V

    .line 768
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->setCurrentWriteState()V

    .line 776
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getHandshakeMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 777
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->cloneMessageDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 779
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->createFinishedMessage([B)Lorg/eclipse/californium/scandium/dtls/Finished;

    move-result-object v0

    .line 780
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 784
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Finished;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 785
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->handshakeHash:[B

    .line 786
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flight5:Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 788
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->expectChangeCipherSpecMessage()V

    return-void
.end method

.method protected doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 295
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 344
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "Received unexpected handshake message [%s] from peer %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 340
    :pswitch_0
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerFinished(Lorg/eclipse/californium/scandium/dtls/Finished;)V

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerHelloDone()V

    goto :goto_0

    .line 332
    :pswitch_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedCertificateRequest(Lorg/eclipse/californium/scandium/dtls/CertificateRequest;)V

    goto :goto_0

    .line 311
    :pswitch_3
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 321
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->serverKeyExchange:Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unsupported key exchange algorithm %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 313
    :cond_1
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedEcdhSignedServerKeyExchange(Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;)V

    goto :goto_0

    .line 306
    :pswitch_4
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;)V

    goto :goto_0

    .line 302
    :pswitch_5
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/ServerHello;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerHello(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    goto :goto_0

    .line 298
    :pswitch_6
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedHelloVerifyRequest(Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPskClientIdentity()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->isSniSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "client is configured to use SNI but server does not support it, PSK authentication is likely to fail"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 968
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->getIdentity(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v1

    if-nez v1, :cond_2

    .line 971
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 973
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getHostName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "No Identity found for peer [address: %s, virtual host: %s]"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 976
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->peerToLog:Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "No Identity found for peer [address: %s]"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method protected isClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .line 985
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->probe:Z

    return v0
.end method

.method public isRemovingConnection()Z
    .locals 1

    .line 1000
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->probe:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isRemovingConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected processCertificateIdentityAvailable()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 593
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedServerHelloDone:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->processServerHelloDone()V

    :cond_0
    return-void
.end method

.method protected processCertificateVerified()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 731
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->hasMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->completeProcessingServerHelloDone()V

    :cond_0
    return-void
.end method

.method protected processMasterSecret()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 714
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->isExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->otherPeersCertificateVerified:Z

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->completeProcessingServerHelloDone()V

    :cond_1
    return-void
.end method

.method protected receivedConnectionIdExtension(Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    .line 442
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setWriteConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V

    .line 443
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getReadConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setReadConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V

    .line 444
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;->useDeprecatedCid()Z

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setDeprecatedCid(Z)V

    :cond_0
    return-void
.end method

.method protected receivedHelloVerifyRequest(Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsEccBasedCipherSuite(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->expectEcc()V

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->getCookie()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->setCookie([B)V

    const/4 p1, 0x3

    .line 382
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flightNumber:I

    .line 383
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object p1

    .line 384
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 385
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 387
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->INIT:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    return-void
.end method

.method protected receivedServerHello(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    .line 403
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 408
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 409
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    .line 410
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSessionIdentifier(Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    .line 411
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setProtocolVersion(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)V

    .line 412
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedCipherSuites:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 417
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setCipherSuite(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;)V

    .line 418
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v2

    .line 419
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    if-ne v2, v3, :cond_5

    .line 423
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getCompressionMethod()Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setCompressionMethod(Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 424
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->verifyServerHelloExtensions(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V

    .line 425
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportsConnectionId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getConnectionIdExtension()Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->receivedConnectionIdExtension(Lorg/eclipse/californium/scandium/dtls/ConnectionIdExtension;)V

    .line 428
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->hasExtendedMasterSecretExtension()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 429
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setExtendedMasterSecret(Z)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->REQUIRED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    if-eq v2, v4, :cond_4

    .line 434
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getServerNameExtension()Lorg/eclipse/californium/scandium/dtls/ServerNameExtension;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSniSupported(Z)V

    .line 435
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->requiresServerCertificateMessage()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->NO_SEVER_CERTIFICATE:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    return-void

    .line 431
    :cond_4
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Extended Master Secret required!"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 420
    :cond_5
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server wants to use not supported compression method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 414
    :cond_6
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server wants to use not supported cipher suite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 404
    :cond_7
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->PROTOCOL_VERSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 405
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The client only supports DTLS v1.2, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1
.end method

.method public resetProbing()V
    .locals 1

    const/4 v0, 0x0

    .line 990
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->probe:Z

    return-void
.end method

.method public startHandshake()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 864
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->handshakeStarted()V

    .line 866
    new-instance v7, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->maxProtocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedCipherSuites:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedSignatureAlgorithms:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedClientCertificateTypes:Ljava/util/List;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedServerCertificateTypes:Ljava/util/List;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedGroups:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/ClientHello;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 870
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsEccBasedCipherSuite(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->expectEcc()V

    .line 875
    :cond_0
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getRandom()Lorg/eclipse/californium/scandium/dtls/Random;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    .line 877
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CompressionMethod;->NULL:Lorg/eclipse/californium/scandium/dtls/CompressionMethod;

    invoke-virtual {v7, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addCompressionMethod(Lorg/eclipse/californium/scandium/dtls/CompressionMethod;)V

    .line 879
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->NONE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    if-eq v0, v1, :cond_1

    .line 880
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;->INSTANCE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    invoke-virtual {v7, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->addExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension;)V

    .line 883
    :cond_1
    invoke-virtual {p0, v7}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->addConnectionId(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 885
    invoke-virtual {p0, v7}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->addRecordSizeLimit(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 887
    invoke-virtual {p0, v7}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->addMaxFragmentLength(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 889
    invoke-virtual {p0, v7}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->addServerNameIndication(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    const/4 v0, 0x1

    .line 892
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->flightNumber:I

    .line 893
    iput-object v7, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 894
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    move-result-object v0

    .line 895
    invoke-virtual {p0, v0, v7}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 896
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    .line 897
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->INIT:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V

    return-void
.end method

.method protected verifyServerHelloExtensions(Lorg/eclipse/californium/scandium/dtls/ServerHello;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 457
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getExtensions()Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->clientHello:Lorg/eclipse/californium/scandium/dtls/ClientHello;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getExtensions()Lorg/eclipse/californium/scandium/dtls/HelloExtensions;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    .line 465
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtensions;->getExtension(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server wants "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;->getType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but client didn\'t propose it!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_EXTENSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 461
    :cond_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_EXTENSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants extensions, but client not!"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 474
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getSupportedPointFormatsExtension()Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 475
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;->UNCOMPRESSED:Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension;->contains(Lorg/eclipse/californium/scandium/dtls/SupportedPointFormatsExtension$ECPointFormat;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 476
    :cond_3
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to use only not supported EC point formats!"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 480
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 481
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getRecordSizeLimitExtension()Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 483
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/RecordSizeLimitExtension;->getRecordSizeLimit()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setRecordSizeLimit(I)V

    .line 486
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getMaxFragmentLengthExtension()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;

    move-result-object v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_7

    .line 492
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension;->getFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->maxFragmentLength:Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    if-ne v2, v1, :cond_6

    .line 495
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setMaxFragmentLength(I)V

    goto :goto_2

    .line 497
    :cond_6
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to use other max. fragment size than proposed"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 489
    :cond_7
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Server wants to use record size limit and max. fragment size"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 502
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getServerCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 504
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v1

    .line 505
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedServerCertificateTypes:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->isSupportedCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 510
    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setReceiveCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    goto :goto_3

    .line 506
    :cond_9
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server wants to use not supported server certificate type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 512
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->getClientCertificateTypeExtension()Lorg/eclipse/californium/scandium/dtls/ClientCertificateTypeExtension;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 514
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->getCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object p1

    .line 515
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->supportedClientCertificateTypes:Ljava/util/List;

    invoke-static {p1, v1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->isSupportedCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 520
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setSendCertificateType(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    goto :goto_4

    .line 516
    :cond_b
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server wants to use not supported client certificate type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    :cond_c
    :goto_4
    return-void
.end method
