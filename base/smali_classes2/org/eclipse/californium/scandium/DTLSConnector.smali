.class public Lorg/eclipse/californium/scandium/DTLSConnector;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Lorg/eclipse/californium/elements/Connector;
.implements Lorg/eclipse/californium/elements/PersistentConnector;
.implements Lorg/eclipse/californium/scandium/dtls/RecordLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;,
        Lorg/eclipse/californium/scandium/DTLSConnector$Worker;
    }
.end annotation


# static fields
.field private static final CLIENT_HELLO_TIMEOUT_NANOS:J

.field private static final DROP_LOGGER:Lorg/slf4j/Logger;

.field public static final KEY_TLS_SERVER_HOST_NAME:Ljava/lang/String; = "TLS_SERVER_HOST_NAME"

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MAX_CIPHERTEXT_EXPANSION:I

.field private static final MAX_DATAGRAM_BUFFER_SIZE:I

.field public static final MDC_SUPPORT:Z

.field private static final TLS12_CID_PADDING:I


# instance fields
.field private volatile alertHandler:Lorg/eclipse/californium/scandium/AlertHandler;

.field private final autoResumptionTimeoutMillis:Ljava/lang/Long;

.field protected final config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

.field protected final connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

.field private final connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

.field private final connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

.field private final cookieGenerator:Lorg/eclipse/californium/scandium/CookieGenerator;

.field private final customSessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

.field private final defaultHandshakeMode:Ljava/lang/String;

.field private final dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

.field private volatile endpointContextMatcher:Lorg/eclipse/californium/elements/EndpointContextMatcher;

.field private volatile executorService:Ljava/util/concurrent/ExecutorService;

.field private hasInternalExecutor:Z

.field protected final health:Lorg/eclipse/californium/scandium/DtlsHealth;

.field protected inboundDatagramBufferSize:I

.field private ipv4Mtu:I

.field private ipv6Mtu:I

.field private lastBindAddress:Ljava/net/InetSocketAddress;

.field private maximumTransmissionUnit:Ljava/lang/Integer;

.field private volatile messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;

.field private final outboundMessageBufferSize:I

.field private final pendingHandshakesListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

.field private final pendingHandshakesWithoutVerifiedPeer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

.field private final receiverThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private recentHandshakeCleaner:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final recentHandshakes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

.field private running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

.field private volatile socket:Ljava/net/DatagramSocket;

.field private statusLogger:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final thresholdHandshakesWithoutVerifiedPeer:I

.field protected timer:Ljava/util/concurrent/ScheduledExecutorService;

.field private final useCidUpdateAddressOnNewerRecordFilter:Z

.field private final useExtendedWindowFilter:I

.field private final useFilter:Z

.field private final useHelloVerifyRequest:Z

.field private final useHelloVerifyRequestForPsk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 252
    const-class v0, Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".drops"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    .line 254
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getOverallMaxCiphertextExpansion()I

    move-result v0

    sput v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MAX_CIPHERTEXT_EXPANSION:I

    .line 255
    sget v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MAX_CIPHERTEXT_EXPANSION:I

    add-int/lit16 v0, v0, 0x4019

    sput v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MAX_DATAGRAM_BUFFER_SIZE:I

    .line 267
    sget-wide v0, Lorg/eclipse/californium/scandium/CookieGenerator;->COOKIE_LIFETIME_NANOS:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lorg/eclipse/californium/scandium/DTLSConnector;->CLIENT_HELLO_TIMEOUT_NANOS:J

    .line 280
    :try_start_0
    invoke-static {}, Lorg/slf4j/MDC;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    sput-boolean v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V
    .locals 1

    .line 458
    invoke-static {p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->createConnectionStore(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
    .locals 6

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingHandshakesWithoutVerifiedPeer:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 348
    new-instance v0, Lorg/eclipse/californium/scandium/DTLSConnector$1;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/DTLSConnector$1;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingHandshakesListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 384
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 386
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->receiverThreads:Ljava/util/List;

    const/16 v0, 0x240

    .line 414
    iput v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    const/16 v0, 0x500

    .line 419
    iput v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    .line 420
    sget v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MAX_DATAGRAM_BUFFER_SIZE:I

    iput v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    .line 422
    new-instance v0, Lorg/eclipse/californium/scandium/CookieGenerator;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/CookieGenerator;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->cookieGenerator:Lorg/eclipse/californium/scandium/CookieGenerator;

    .line 430
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 496
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    .line 497
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConnectionIdGenerator()Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    .line 498
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getProtocolVersionForHelloVerifyRequests()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 499
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getOutboundMessageBufferSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->outboundMessageBufferSize:I

    .line 500
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->outboundMessageBufferSize:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 501
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAutoHandshakeTimeoutMillis()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->autoResumptionTimeoutMillis:Ljava/lang/Long;

    .line 502
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDtlsRole()Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    .line 503
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getDefaultHandshakeMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->defaultHandshakeMode:Ljava/lang/String;

    .line 504
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useDisabledWindowFilter()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useExtendedWindowFilter:I

    .line 505
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useAntiReplayFilter()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useFilter:Z

    .line 506
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useUpdateAddressUsingCidOnNewerRecords()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useCidUpdateAddressOnNewerRecordFilter:Z

    .line 507
    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    .line 508
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-interface {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->attach(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)V

    .line 509
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConnectionListener()Lorg/eclipse/californium/scandium/ConnectionListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->setConnectionListener(Lorg/eclipse/californium/scandium/ConnectionListener;)V

    .line 510
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSessionListener()Lorg/eclipse/californium/scandium/dtls/SessionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->customSessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 511
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConnectionListener()Lorg/eclipse/californium/scandium/ConnectionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    .line 512
    new-instance p1, Lorg/eclipse/californium/scandium/DTLSConnector$2;

    invoke-direct {p1, p0}, Lorg/eclipse/californium/scandium/DTLSConnector$2;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V

    .line 519
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAdvancedPskStore()Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getCertificateIdentityProvider()Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V

    .line 527
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAdvancedCertificateVerifier()Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 529
    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;->setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V

    .line 531
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useServerSessionId()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getResumptionVerifier()Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    .line 532
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    if-eqz v0, :cond_4

    .line 533
    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;->setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V

    .line 534
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    instance-of v0, p1, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;

    if-eqz v0, :cond_4

    .line 535
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;

    .line 536
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->hasConnectionStore()Z

    move-result v0

    if-nez v0, :cond_4

    .line 537
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->setConnectionStore(Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    .line 541
    :cond_4
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getHealthHandler()Lorg/eclipse/californium/scandium/DtlsHealth;

    move-result-object p1

    if-nez p1, :cond_5

    .line 544
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getHealthStatusIntervalMilliseconds()I

    move-result v0

    if-lez v0, :cond_5

    .line 545
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->createDefaultHealthHandler(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/DtlsHealth;

    move-result-object p1

    .line 546
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsHealth;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move-object p1, v2

    .line 550
    :cond_5
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    .line 551
    new-instance p1, Lorg/eclipse/californium/scandium/DTLSConnector$3;

    invoke-direct {p1, p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector$3;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 616
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxConnections()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 618
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getVerifyPeersOnResumptionThreshold()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    int-to-long p1, p1

    mul-long/2addr p1, v2

    const-wide/16 v4, 0x32

    add-long/2addr p1, v4

    const-wide/16 v4, 0x64

    .line 619
    div-long/2addr p1, v4

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_6

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    const-wide/16 p1, 0x1

    :cond_6
    long-to-int p1, p1

    .line 623
    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->thresholdHandshakesWithoutVerifiedPeer:I

    .line 624
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useHelloVerifyRequest()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useHelloVerifyRequest:Z

    .line 625
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useHelloVerifyRequest:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useHelloVerifyRequestForPsk()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useHelloVerifyRequestForPsk:Z

    return-void

    .line 494
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Connection store must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 492
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Configuration must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 244
    iget-object p0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingHandshakesWithoutVerifiedPeer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->processAsynchronousHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/util/Iterator;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;->nextForEach(Ljava/util/Iterator;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->processNewClientHello(Lorg/eclipse/californium/scandium/dtls/Record;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 244
    iget-object p0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->processClientHello(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/eclipse/californium/scandium/DTLSConnector;JLorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendMessage(JLorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method static synthetic access$1500()Lorg/slf4j/Logger;
    .locals 1

    .line 244
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 244
    iget-object p0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;->processExceptionDuringHandshake(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/Queue;
    .locals 0

    .line 244
    iget-object p0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .locals 1

    .line 244
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendMessage(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->closeConnection(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method static synthetic access$700(Lorg/eclipse/californium/scandium/DTLSConnector;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;
    .locals 0

    .line 244
    iget-object p0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    return-object p0
.end method

.method static synthetic access$800(Lorg/eclipse/californium/scandium/DTLSConnector;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->cleanupRecentHandshakes()V

    return-void
.end method

.method private calculateRecentHandshakeExpires()J
    .locals 4

    .line 739
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    sget-wide v2, Lorg/eclipse/californium/scandium/DTLSConnector;->CLIENT_HELLO_TIMEOUT_NANOS:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private checkOutboundEndpointContext(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 7

    .line 2843
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getEndpointContextMatcher()Lorg/eclipse/californium/elements/EndpointContextMatcher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2844
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/eclipse/californium/elements/EndpointContextMatcher;->isToBeSent(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2845
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2846
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/eclipse/californium/elements/EndpointContextMatcher;->toRelevantState(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-interface {v0, p2}, Lorg/eclipse/californium/elements/EndpointContextMatcher;->toRelevantState(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    const-string p2, "DTLSConnector ({}) drops {} bytes outgoing, {} != {}"

    invoke-interface {v2, p2, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2850
    :cond_0
    new-instance p2, Lorg/eclipse/californium/elements/exception/EndpointMismatchException;

    const-string v0, "DTLS sending"

    invoke-direct {p2, v0}, Lorg/eclipse/californium/elements/exception/EndpointMismatchException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2851
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_1

    .line 2852
    invoke-interface {p1, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method private cleanupRecentHandshakes()V
    .locals 9

    .line 752
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->calculateRecentHandshakeExpires()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 754
    :goto_0
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    .line 755
    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/californium/scandium/dtls/Connection;

    if-nez v4, :cond_0

    goto :goto_1

    .line 759
    :cond_0
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/Connection;->getStartNanos()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 760
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-gtz v2, :cond_2

    if-lez v3, :cond_3

    .line 769
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Cleanup {} recent handshakes, left {}!"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 761
    invoke-virtual {v4, v3}, Lorg/eclipse/californium/scandium/dtls/Connection;->startByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 762
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private closeConnection(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 4

    .line 1794
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1796
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    const-string v3, "Closing connection with peer [{}]"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1797
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    const/4 v0, 0x1

    .line 1798
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->setResumptionRequired(Z)V

    :cond_0
    return-void
.end method

.method private final contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 7

    .line 689
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getConnection()Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v1, v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->putEstablishedSession(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 691
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v1

    .line 692
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->takeDeferredApplicationData()Ljava/util/List;

    move-result-object v2

    .line 693
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 694
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "DTLS context with [{}] established, now process deferred {} outgoing messages"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 696
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/elements/RawData;

    .line 698
    new-instance v4, Lorg/eclipse/californium/scandium/DTLSConnector$4;

    invoke-direct {v4, p0, v3, v0}, Lorg/eclipse/californium/scandium/DTLSConnector$4;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {v1, v4}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->takeDeferredRecordsOfNextEpoch()Ljava/util/List;

    move-result-object v2

    .line 708
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 709
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "DTLS context with [{}] established, now process deferred {} incoming messages"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 711
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 713
    new-instance v3, Lorg/eclipse/californium/scandium/DTLSConnector$5;

    invoke-direct {v3, p0, v2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector$5;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 723
    :catch_0
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "stopping."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected static createConnectionStore(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;
    .locals 5

    .line 469
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxConnections()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getStaleConnectionThresholdSeconds()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSessionStore()Lorg/eclipse/californium/scandium/dtls/SessionStore;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;-><init>(IJLorg/eclipse/californium/scandium/dtls/SessionStore;)V

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getLoggingTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->setTag(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    move-result-object p0

    return-object p0
.end method

.method private discardRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/lang/Throwable;)V
    .locals 9

    .line 3336
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3337
    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    .line 3339
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragmentBytes()[B

    move-result-object v0

    .line 3340
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    .line 3341
    invoke-static {v0, v7, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object v0

    .line 3342
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v0, v6, v5

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    const-string p1, "Discarding received {} record (epoch {}, payload: {}) from peer [{}]: "

    invoke-interface {v2, p1, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3344
    :cond_1
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    .line 3345
    invoke-static {v0, v7, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object v0

    .line 3346
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v0, v6, v5

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    const-string p1, "Discarding received {} record (epoch {}, payload: {}) from peer [{}]: {}"

    invoke-interface {v2, p1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getAutoHandshakeTimeout(Lorg/eclipse/californium/elements/RawData;)Ljava/lang/Long;
    .locals 4

    .line 3035
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->autoResumptionTimeoutMillis:Ljava/lang/Long;

    .line 3036
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object p1

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/Definition;

    invoke-interface {p1, v1}, Lorg/eclipse/californium/elements/EndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 3038
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3039
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final getConnection(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Z)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 4

    .line 1437
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    monitor-enter v1

    if-eqz p2, :cond_0

    .line 1441
    :try_start_0
    iget-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p3, p2}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object p3

    goto :goto_0

    .line 1443
    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v2, p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 1445
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "create new connection for {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1446
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p2, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;-><init>(Ljava/net/InetSocketAddress;)V

    .line 1447
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->setConnectorContext(Ljava/util/concurrent/Executor;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 1448
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1450
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p1, p2}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->put(Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1451
    monitor-exit v1

    return-object p1

    .line 1454
    :cond_1
    monitor-exit v1

    return-object p2

    :cond_2
    move-object p3, v2

    :goto_0
    if-nez p3, :cond_3

    .line 1458
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "no connection available for {},{}"

    invoke-interface {v0, v2, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1459
    :cond_3
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1460
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "revive connection for {},{}"

    invoke-interface {v2, v3, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1461
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    invoke-virtual {p3, v0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->setConnectorContext(Ljava/util/concurrent/Executor;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/dtls/Connection;

    goto :goto_1

    .line 1463
    :cond_4
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "connection available for {},{}"

    invoke-interface {v0, v2, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    :goto_1
    monitor-exit v1

    return-object p3

    :catchall_0
    move-exception p1

    .line 1466
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getEffectiveHandshakeMode(Lorg/eclipse/californium/elements/RawData;)Ljava/lang/String;
    .locals 1

    .line 3306
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object p1

    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    invoke-interface {p1, v0}, Lorg/eclipse/californium/elements/EndpointContext;->getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3308
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->defaultHandshakeMode:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private getEndpointContextMatcher()Lorg/eclipse/californium/elements/EndpointContextMatcher;
    .locals 1

    .line 3290
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->endpointContextMatcher:Lorg/eclipse/californium/elements/EndpointContextMatcher;

    return-object v0
.end method

.method private getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 848
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private final getSocket()Ljava/net/DatagramSocket;
    .locals 1

    .line 1155
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method private final initializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)V

    .line 659
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->customSessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)V

    .line 660
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/DtlsHealth;->startHandshake()V

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->onInitializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    return-void
.end method

.method private isClientInControlOfSourceIpAddress(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;[B)Z
    .locals 6

    .line 2239
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCookie()[B

    move-result-object v0

    .line 2241
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 2243
    invoke-static {p3, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2247
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->cookieGenerator:Lorg/eclipse/californium/scandium/CookieGenerator;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/californium/scandium/CookieGenerator;->generatePastCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2248
    invoke-static {p2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2252
    sget-object v4, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "failed to generate past cookie."

    invoke-interface {v4, v5, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 2255
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2256
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v0, v2, v5}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p3, v2, v5}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    const/4 p3, 0x2

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v4, p3

    const-string p1, "provided cookie must {} match {}. Send verify request to {}"

    invoke-interface {p2, p1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1

    .line 2264
    :cond_2
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useHelloVerifyRequest:Z

    if-nez p1, :cond_3

    return v3

    .line 2267
    :cond_3
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useHelloVerifyRequestForPsk:Z

    if-nez p1, :cond_4

    .line 2272
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getCommonCipherSuites(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2273
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsPskBasedCipherSuite(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    .line 2278
    :cond_4
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasSessionId()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2279
    iget p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->thresholdHandshakesWithoutVerifiedPeer:I

    if-lez p1, :cond_5

    .line 2283
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingHandshakesWithoutVerifiedPeer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 2284
    sget-object p3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->thresholdHandshakesWithoutVerifiedPeer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "pending fast resumptions [{}], threshold [{}]"

    invoke-interface {p3, v3, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2286
    iget p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->thresholdHandshakesWithoutVerifiedPeer:I

    if-ge p1, p3, :cond_5

    .line 2287
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;->skipRequestHelloVerify(Lorg/eclipse/californium/scandium/dtls/SessionId;)Z

    move-result p1

    return p1

    :cond_5
    return v2
.end method

.method private nextForEach(Ljava/util/Iterator;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;",
            "Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;",
            ")V"
        }
    .end annotation

    .line 1386
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->isStopped()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1387
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 1389
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v7

    new-instance v8, Lorg/eclipse/californium/scandium/DTLSConnector$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/californium/scandium/DTLSConnector$13;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/util/Iterator;)V

    invoke-virtual {v7, v8}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1410
    :catch_0
    invoke-interface {p2, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1411
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1412
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1415
    :cond_1
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done()V

    return-void
.end method

.method private processAlertRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .locals 8

    .line 1874
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    .line 1875
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v1

    .line 1877
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getLevel()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "Processing {} ALERT from [{}]: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1879
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1884
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1885
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->updateConnectionAddress(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    goto :goto_0

    .line 1887
    :cond_0
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v2, "Received \'close notify\'"

    invoke-direct {v3, v2, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    if-eqz v1, :cond_1

    .line 1889
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setFailureCause(Ljava/lang/Throwable;)V

    .line 1892
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->isResumptionRequired()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1893
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1894
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v4, v6}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-virtual {p0, p2, p3, v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    .line 1896
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1897
    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->close(Lorg/eclipse/californium/scandium/dtls/Record;)V

    goto :goto_1

    .line 1899
    :cond_3
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p1, p2, v5}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    goto :goto_1

    .line 1902
    :cond_4
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getLevel()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1906
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received \'fatal alert/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    if-eqz v1, :cond_5

    .line 1908
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setFailureCause(Ljava/lang/Throwable;)V

    .line 1910
    :cond_5
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p1, p2, v6}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    .line 1914
    :cond_6
    :goto_1
    invoke-direct {p0, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->reportAlertInternal(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 1916
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private processApplicationDataRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 11

    .line 1827
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v0

    .line 1828
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1829
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->isResumptionRequired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1832
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;

    .line 1833
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 1834
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->updateConnectionAddress(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    move-result v2

    .line 1836
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;

    if-eqz v3, :cond_4

    .line 1840
    new-instance v4, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    if-eqz v2, :cond_0

    .line 1842
    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_NEWEST_RECORD:Lorg/eclipse/californium/elements/Definition;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v5}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    :cond_0
    if-eqz v1, :cond_1

    .line 1844
    invoke-virtual {p2, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->equalsPeerAddress(Ljava/net/InetSocketAddress;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1845
    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_PREVIOUS_ADDRESS:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v4, v2, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 1848
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getReadContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/elements/DtlsEndpointContext;

    move-result-object v6

    .line 1849
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Received APPLICATION_DATA for {}"

    invoke-interface {p2, v1, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1851
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;->getData()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getReceiveNanos()J

    move-result-wide v8

    iget-object v10, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-static/range {v5 .. v10}, Lorg/eclipse/californium/elements/RawData;->inbound([BLorg/eclipse/californium/elements/EndpointContext;ZJLjava/net/InetSocketAddress;)Lorg/eclipse/californium/elements/RawData;

    move-result-object p1

    .line 1853
    invoke-interface {v3, p1}, Lorg/eclipse/californium/elements/RawDataChannel;->receiveData(Lorg/eclipse/californium/elements/RawData;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1859
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addRecordsOfNextEpochForDeferredProcessing(Lorg/eclipse/californium/scandium/dtls/Record;)V

    goto :goto_0

    .line 1861
    :cond_3
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Discarding APPLICATION_DATA record received from peer [{}]"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private processAsynchronousHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 3

    .line 2980
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2982
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasOngoingHandshake()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2983
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v1

    .line 2987
    :try_start_0
    new-instance v2, Lorg/eclipse/californium/scandium/DTLSConnector$19;

    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$19;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3013
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unexpected error occurred while processing handshake result [{}]"

    invoke-interface {v1, v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3011
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Execution rejected while processing handshake result [{}]"

    invoke-interface {v1, v2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3016
    :cond_0
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "No ongoing handshake for handshake result [{}]"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3019
    :cond_1
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "No connection  for handshake result [{}]"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private processChangeCipherSpecRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 1

    .line 1957
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1961
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processMessage(Lorg/eclipse/californium/scandium/dtls/Record;)V
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1963
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->processExceptionDuringHandshake(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    goto :goto_0

    .line 1968
    :cond_0
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Received CHANGE_CIPHER_SPEC record from peer [{}] with no handshake going on"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private processClientHello(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 10

    if-eqz p2, :cond_6

    .line 2161
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->equalsPeerAddress(Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2162
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Drop received CLIENT_HELLO, changed address {} => {}!"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 2165
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasOngoingHandshake()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2170
    :cond_1
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2171
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v2, "Processing CLIENT_HELLO from peer [{}]:{}{}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2176
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 2178
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->resumptionVerifier:Lorg/eclipse/californium/scandium/dtls/resumption/ResumptionVerifier;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasSessionId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2180
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getMessageSeq()I

    move-result v5

    iget-object v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    move-object v2, v1

    move-object v6, p0

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Lorg/eclipse/californium/scandium/dtls/ResumingServerHandshaker;-><init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    .line 2182
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasCookie()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2184
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingHandshakesWithoutVerifiedPeer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2185
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingHandshakesListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->addSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)V

    goto :goto_0

    .line 2191
    :cond_3
    new-instance v9, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getMessageSeq()I

    move-result v4

    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    move-object v1, v9

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;-><init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    move-object v1, v9

    .line 2194
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->initializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    .line 2195
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/ServerHandshaker;->processMessage(Lorg/eclipse/californium/scandium/dtls/Record;)V
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2197
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->processExceptionDuringHandshake(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    :goto_1
    return-void

    .line 2166
    :cond_5
    :goto_2
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Discarding received duplicate CLIENT_HELLO message [epoch={}] from peer [{}]!"

    invoke-interface {p2, v1, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 2160
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processExceptionDuringHandshake(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V
    .locals 5

    .line 2354
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->getAlert()Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    move-result-object v0

    .line 2356
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getLevel()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 2358
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;->discardRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/lang/Throwable;)V

    .line 2360
    :cond_0
    invoke-direct {p0, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->reportAlertInternal(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    return-void

    .line 2367
    :cond_1
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNKNOWN_PSK_IDENTITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 2369
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;->discardRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/lang/Throwable;)V

    .line 2371
    :cond_2
    invoke-direct {p0, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->reportAlertInternal(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    return-void

    .line 2376
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2378
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2379
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Aborting handshake with peer [{}]:"

    invoke-interface {v1, v3, v2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2381
    :cond_4
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2382
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Aborting handshake with peer [{}]: {}"

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2385
    :cond_5
    :goto_0
    invoke-virtual {p1, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setFailureCause(Ljava/lang/Throwable;)V

    .line 2386
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    .line 2387
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v2

    if-ne v2, v1, :cond_7

    .line 2391
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v2

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    if-ne v2, v3, :cond_6

    .line 2392
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Handshake with [{}] closed after session was established!"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2395
    :cond_6
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Handshake with [{}] failed after session was established! {}"

    invoke-interface {v2, v4, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 2399
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Handshake with [{}] failed, but has an established session!"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2402
    :cond_8
    :goto_1
    invoke-virtual {p0, p2, v1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    .line 2403
    invoke-virtual {p1, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    .line 2404
    invoke-direct {p0, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->reportAlertInternal(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    :cond_9
    return-void
.end method

.method private processHandshakeRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .locals 4

    .line 1981
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Received {} record from peer [{}]"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1982
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->isNewClientHello()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1986
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v0

    .line 1987
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 1988
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processMessage(Lorg/eclipse/californium/scandium/dtls/Record;)V

    goto :goto_0

    .line 2018
    :cond_0
    sget-object p3, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Discarding HANDSHAKE message [epoch={}] from peer [{}], no ongoing handshake!"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 2001
    sget-object p3, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Ignore HELLO_REQUEST received from peer [{}] during ongoing handshake"

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2007
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Reject HELLO_REQUEST received from peer [{}]"

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2010
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->NO_RENEGOTIATION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-virtual {p0, p2, p3, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    goto :goto_0

    .line 1992
    :cond_3
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Reject re-negotiation from peer [{}]"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1993
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->WARNING:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->NO_RENEGOTIATION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-virtual {p0, p2, p3, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 2024
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;->processExceptionDuringHandshake(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    :goto_0
    return-void

    .line 1983
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "new CLIENT_HELLO must be processed by processClientHello!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processNewClientHello(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2041
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 2042
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 2043
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    const-string v9, "Processing new CLIENT_HELLO from peer [{}]:{}{}"

    invoke-interface {v0, v9, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2048
    :cond_0
    :try_start_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->NULL:Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    invoke-virtual {v2, v0}, Lorg/eclipse/californium/scandium/dtls/Record;->decodeFragment(Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;)V

    .line 2049
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v0

    .line 2050
    instance-of v8, v0, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;

    if-eqz v8, :cond_1

    .line 2051
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Received unsupported fragmented CLIENT_HELLO from peer {}."

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2052
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DtlsException;

    const-string v3, "Fragmented CLIENT_HELLO is not supported!"

    invoke-direct {v0, v3}, Lorg/eclipse/californium/scandium/dtls/DtlsException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->discardRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/lang/Throwable;)V

    return-void

    .line 2055
    :cond_1
    check-cast v0, Lorg/eclipse/californium/scandium/dtls/ClientHello;

    .line 2057
    iget-object v8, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->cookieGenerator:Lorg/eclipse/californium/scandium/CookieGenerator;

    invoke-virtual {v8, v3, v0}, Lorg/eclipse/californium/scandium/CookieGenerator;->generateCookie(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;)[B

    move-result-object v8

    .line 2062
    invoke-direct {v1, v3, v0, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->isClientInControlOfSourceIpAddress(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ClientHello;[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2065
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 2066
    iget-object v11, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    monitor-enter v11
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2067
    :try_start_1
    iget-object v12, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v12, v3}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 2068
    invoke-virtual {v12, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->isStartedByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2069
    iget-boolean v13, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->useHelloVerifyRequest:Z

    if-eqz v13, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasCookie()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->hasSessionId()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2070
    invoke-virtual {v12}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v13

    .line 2071
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getSessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/eclipse/californium/elements/util/Bytes;->equals(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)Z

    move-result v13

    if-nez v13, :cond_2

    move v9, v7

    :cond_2
    if-eqz v9, :cond_5

    .line 2080
    invoke-virtual {v12}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 2082
    invoke-virtual {v12}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 2083
    invoke-virtual {v13}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v15

    if-eq v14, v15, :cond_4

    .line 2084
    :cond_3
    new-instance v14, Lorg/eclipse/californium/scandium/dtls/DtlsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received new CLIENT_HELLO from "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Lorg/eclipse/californium/scandium/dtls/DtlsException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2087
    :try_start_2
    invoke-virtual {v12}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v4

    new-instance v12, Lorg/eclipse/californium/scandium/DTLSConnector$16;

    invoke-direct {v12, v1, v13, v14}, Lorg/eclipse/californium/scandium/DTLSConnector$16;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DtlsException;)V

    invoke-virtual {v4, v12}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2097
    :catch_0
    :try_start_3
    sget-object v4, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v12, "Execution rejected, connection already shutdown [peer: {}]"

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    const/4 v12, 0x0

    :cond_5
    if-nez v12, :cond_6

    .line 2106
    new-instance v12, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {v12, v3}, Lorg/eclipse/californium/scandium/dtls/Connection;-><init>(Ljava/net/InetSocketAddress;)V

    .line 2107
    iget-object v4, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    invoke-virtual {v12, v10, v4}, Lorg/eclipse/californium/scandium/dtls/Connection;->setConnectorContext(Ljava/util/concurrent/Executor;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 2108
    invoke-virtual {v12, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->startByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    .line 2109
    iget-object v4, v1, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v4, v12}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->put(Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2110
    monitor-exit v11

    return-void

    .line 2113
    :cond_6
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_7

    .line 2117
    :try_start_4
    invoke-virtual {v12}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v0

    new-instance v4, Lorg/eclipse/californium/scandium/DTLSConnector$17;

    invoke-direct {v4, v1, v2, v12}, Lorg/eclipse/californium/scandium/DTLSConnector$17;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {v0, v4}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2131
    :try_start_5
    sget-object v4, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Unexpected error occurred while processing record [type: {}, peer: {}]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v5

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-interface {v4, v8, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2133
    invoke-direct {v1, v12}, Lorg/eclipse/californium/scandium/DTLSConnector;->terminateConnectionWithInternalError(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 2128
    sget-object v4, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Execution rejected while processing record [type: {}, peer: {}]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v5

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-interface {v4, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 2113
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 2139
    :cond_7
    invoke-direct {v1, v0, v2, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendHelloVerify(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/Record;[B)V
    :try_end_7
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 2147
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Processing new CLIENT_HELLO from peer [{}] failed!"

    invoke-interface {v3, v4, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_4
    move-exception v0

    .line 2144
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Processing new CLIENT_HELLO from peer [{}] failed!"

    invoke-interface {v3, v4, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_5
    move-exception v0

    .line 2141
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Processing new CLIENT_HELLO from peer [{}] failed!"

    invoke-interface {v3, v4, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private reportAlertInternal(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V
    .locals 1

    .line 2419
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->setRootCause(Lorg/eclipse/californium/scandium/dtls/AlertMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2420
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->alertHandler:Lorg/eclipse/californium/scandium/AlertHandler;

    if-eqz v0, :cond_0

    .line 2422
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/eclipse/californium/scandium/AlertHandler;->onAlert(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    :cond_0
    return-void
.end method

.method private sendHelloVerify(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/Record;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2301
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Verifying client IP address [{}] using HELLO_VERIFY_REQUEST"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2302
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->protocolVersionForHelloVerifyRequests:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    if-nez v0, :cond_1

    .line 2305
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v0

    .line 2306
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->compareTo(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)I

    move-result v1

    if-gez v1, :cond_0

    .line 2307
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_0:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    goto :goto_0

    .line 2308
    :cond_0
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->compareTo(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)I

    move-result v1

    if-lez v1, :cond_1

    .line 2309
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->VERSION_DTLS_1_2:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    :cond_1
    :goto_0
    move-object v3, v0

    .line 2313
    new-instance v6, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;

    invoke-direct {v6, v3, p3}, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;[B)V

    .line 2318
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->getMessageSeq()I

    move-result p1

    invoke-virtual {v6, p1}, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->setMessageSeq(I)V

    .line 2322
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;JLorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    .line 2323
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/Record;->setAddress(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 2325
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 2297
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cookie must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendMessage(JLorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 2607
    invoke-virtual {p4}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2608
    sget-object p4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 2609
    sget-object p4, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p3}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Drop outgoing record with {} bytes, connection lost address {}! (shift {}ms)"

    invoke-interface {p4, p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2611
    new-instance p1, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string p2, "connection not longer assigned to address!"

    invoke-direct {p1, p2}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2612
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_0

    .line 2613
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_0
    return-void

    .line 2617
    :cond_1
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p3}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object p2

    const-string v0, "Sending application layer message to [{}]"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2619
    invoke-virtual {p4}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2620
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->hasContextEstablished()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2621
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isExpired()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2624
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "handshake already expired!"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeAborted(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2625
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isProbing()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 2626
    invoke-direct {p0, p3, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->checkOutboundEndpointContext(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2627
    invoke-virtual {p3}, Lorg/eclipse/californium/elements/RawData;->onConnecting()V

    .line 2628
    invoke-virtual {p1, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addApplicationDataForDeferredProcessing(Lorg/eclipse/californium/elements/RawData;)V

    :cond_3
    return-void

    .line 2634
    :cond_4
    :goto_0
    invoke-virtual {p4}, Lorg/eclipse/californium/scandium/dtls/Connection;->isActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2635
    invoke-direct {p0, p3, p4}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendMessageWithSession(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto :goto_1

    .line 2637
    :cond_5
    invoke-direct {p0, p3, p4}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendMessageWithoutSession(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :goto_1
    return-void
.end method

.method private sendMessage(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 9

    .line 2797
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v4

    .line 2798
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "send {}-{} using {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2800
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    .line 2801
    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getWriteContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/DtlsEndpointContext;

    move-result-object v0

    .line 2802
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->checkOutboundEndpointContext(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2806
    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onContextEstablished(Lorg/eclipse/californium/elements/EndpointContext;)V

    .line 2807
    new-instance v8, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteEpoch()I

    move-result v2

    new-instance v3, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/eclipse/californium/scandium/dtls/ApplicationMessage;-><init>([B)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    .line 2813
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getRouter()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/californium/scandium/dtls/Record;->setAddress(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 2814
    invoke-virtual {p0, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V

    .line 2815
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->onSent()V

    .line 2816
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->update(Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/net/InetSocketAddress;)Z

    .line 2817
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz v0, :cond_1

    .line 2818
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    invoke-interface {v0, p2, v7}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionUpdatesSequenceNumbers(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2819
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->closeConnection(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2825
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot send APPLICATION record to peer [{}]"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2827
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 2823
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendMessageWithSession(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    .line 2704
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    .line 2705
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getEffectiveHandshakeMode(Lorg/eclipse/californium/elements/RawData;)Ljava/lang/String;

    move-result-object v1

    .line 2706
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->isMarkedAsClosed()Z

    move-result v2

    const-string v3, "none"

    .line 2707
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    .line 2709
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->isResumptionRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2710
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DTLSConnector drops {} outgoing bytes to {}, resumption required!"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2711
    new-instance v0, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string v1, "resumption required!"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2712
    iget-object v0, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v0, :cond_1

    .line 2713
    invoke-interface {v0, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "full"

    .line 2718
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "probe"

    .line 2719
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_4

    if-nez v3, :cond_4

    const-string v5, "force"

    .line 2720
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v11

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    .line 2721
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getAutoHandshakeTimeout(Lorg/eclipse/californium/elements/RawData;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isAutoResumptionRequired(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 2792
    :cond_5
    invoke-direct/range {p0 .. p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendMessage(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void

    .line 2723
    :cond_6
    :goto_2
    iget-object v1, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    sget-object v2, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v1, v2, :cond_8

    .line 2724
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DTLSConnector drops {} outgoing bytes to {}, server only, resumption requested failed!"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2727
    new-instance v0, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string v1, "server only, resumption requested failed!"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2728
    iget-object v0, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v0, :cond_7

    .line 2729
    invoke-interface {v0, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_7
    return-void

    .line 2733
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->onConnecting()V

    .line 2734
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/californium/elements/EndpointContext;->getVirtualHost()Ljava/lang/String;

    move-result-object v1

    .line 2735
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v12

    const/4 v2, 0x0

    if-nez v3, :cond_b

    .line 2738
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 2739
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2740
    iget-object v3, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getExtendedMasterSecretMode()Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    move-result-object v3

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-virtual {v3, v5}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->is(Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2746
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_9

    .line 2748
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Extended Master Secrets not supported by server {}, fallback to full handshake!"

    invoke-interface {v3, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    move v3, v2

    if-nez v3, :cond_a

    .line 2754
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/util/ServerNames;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_a

    .line 2756
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Server Name Indication changed for server {}, fallback to full handshake!"

    invoke-interface {v2, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    move-object v2, v0

    :cond_b
    if-eqz v3, :cond_c

    .line 2767
    new-instance v13, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;

    iget-object v3, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    move-object v0, v13

    move-object v2, p0

    move-object/from16 v4, p2

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Z)V

    goto :goto_3

    .line 2769
    :cond_c
    new-instance v13, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;

    iget-object v3, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    move-object v0, v13

    move-object v1, v2

    move-object v2, p0

    move-object/from16 v4, p2

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/californium/scandium/dtls/ResumingClientHandshaker;-><init>(Lorg/eclipse/californium/scandium/dtls/DTLSSession;Lorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Z)V

    :goto_3
    if-eqz v10, :cond_d

    .line 2774
    invoke-virtual {v9, v11}, Lorg/eclipse/californium/scandium/dtls/Connection;->setResumptionRequired(Z)V

    goto :goto_4

    .line 2776
    :cond_d
    iget-object v0, v7, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0, v9}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->removeFromEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 2777
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->resetContext()V

    .line 2779
    :goto_4
    invoke-direct {p0, v13}, Lorg/eclipse/californium/scandium/DTLSConnector;->initializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    if-eqz v12, :cond_e

    .line 2781
    invoke-virtual {v13, v12}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->takeDeferredApplicationData(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    .line 2783
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "handshake replaced!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeAborted(Ljava/lang/Throwable;)V

    .line 2785
    :cond_e
    invoke-virtual {v13, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->addApplicationDataForDeferredProcessing(Lorg/eclipse/californium/elements/RawData;)V

    .line 2786
    invoke-virtual {v13}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->startHandshake()V

    return-void
.end method

.method private sendMessageWithoutSession(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2654
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->checkOutboundEndpointContext(Lorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2657
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2659
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 2660
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "DTLSConnector drops {} outgoing bytes to {}, server only, connection missing!"

    invoke-interface {p2, v3, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2662
    new-instance p2, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string v0, "server only, connection missing!"

    invoke-direct {p2, v0}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2663
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_1

    .line 2664
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_1
    return-void

    .line 2668
    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getEffectiveHandshakeMode(Lorg/eclipse/californium/elements/RawData;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2670
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "DTLSConnector drops {} outgoing bytes to {}, connection missing!"

    invoke-interface {p2, v3, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2672
    new-instance p2, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string v0, "connection missing!"

    invoke-direct {p2, v0}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2673
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_3

    .line 2674
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_3
    return-void

    .line 2678
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/californium/elements/EndpointContext;->getVirtualHost()Ljava/lang/String;

    move-result-object v2

    .line 2681
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Z)V

    .line 2682
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->initializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    .line 2683
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->onConnecting()V

    .line 2684
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->addApplicationDataForDeferredProcessing(Lorg/eclipse/californium/elements/RawData;)V

    .line 2685
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ClientHandshaker;->startHandshake()V

    goto :goto_0

    .line 2687
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->onConnecting()V

    .line 2688
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addApplicationDataForDeferredProcessing(Lorg/eclipse/californium/elements/RawData;)V

    :goto_0
    return-void
.end method

.method private terminateConnectionWithInternalError(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 4

    .line 1811
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1813
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Terminating connection with peer [{}], Internal Error"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1814
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    .line 1817
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    return-void
.end method

.method private updateConnectionAddress(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)Z
    .locals 2

    .line 1930
    invoke-virtual {p2, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->markRecordAsRead(Lorg/eclipse/californium/scandium/dtls/Record;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1931
    iget-boolean v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useCidUpdateAddressOnNewerRecordFilter:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1933
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getRouter()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->setRouter(Ljava/net/InetSocketAddress;)V

    .line 1934
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    .line 1936
    :goto_1
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v1, p2, p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->update(Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/net/InetSocketAddress;)Z

    .line 1937
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1940
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeCompleted()V

    .line 1942
    :cond_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 1943
    invoke-interface {p1, p2, v1}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionUpdatesSequenceNumbers(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1944
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->closeConnection(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :cond_3
    return v0
.end method


# virtual methods
.method public final clearConnectionState()V
    .locals 1

    .line 1151
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->clear()V

    return-void
.end method

.method public final close(Ljava/net/InetSocketAddress;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 809
    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getConnection(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Z)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 810
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v0

    .line 812
    new-instance v1, Lorg/eclipse/californium/scandium/DTLSConnector$6;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$6;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected createDefaultHealthHandler(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/DtlsHealth;
    .locals 1

    .line 647
    new-instance v0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getLoggingTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1250
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->stop()V

    .line 1251
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->clear()V

    const/4 v0, 0x0

    .line 1252
    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;

    return-void
.end method

.method public dropReceivedRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 6

    .line 2893
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "Discarding {} record [epoch {}, rseqn {}] dropped by handshaker for peer [{}]"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2895
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_0

    .line 2896
    invoke-interface {p1, v3}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_0
    return-void
.end method

.method public final forceResumeAllSessions()V
    .locals 1

    .line 1141
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->markAllAsResumptionRequired()V

    return-void
.end method

.method public final forceResumeSessionFor(Ljava/net/InetSocketAddress;)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1128
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1129
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->setResumptionRequired(Z)V

    :cond_0
    return-void
.end method

.method public final getAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 3092
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 3093
    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    .line 3095
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0

    .line 3097
    :cond_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2
.end method

.method public final getDtlsContextByAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2883
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v1, p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2885
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getHealthHandler()Lorg/eclipse/californium/scandium/DtlsHealth;
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    return-object v0
.end method

.method public getMaxDatagramSize(Z)I
    .locals 5

    const/16 v0, 0x40

    if-eqz p1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2903
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    :goto_1
    sub-int v1, v2, v1

    if-ge v1, v0, :cond_4

    .line 2906
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const-string p1, "IPV6"

    goto :goto_2

    :cond_3
    const-string p1, "IPv4"

    :goto_2
    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "%s, datagram size %d, mtu %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v1
.end method

.method public final getMaximumFragmentLength(Ljava/net/InetSocketAddress;)I
    .locals 1

    .line 3076
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getDtlsContextByAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3078
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getMaxFragmentLength()I

    move-result p1

    return p1

    .line 3080
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    instance-of p1, p1, Ljava/net/Inet6Address;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getMaxDatagramSize(Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x19

    return p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    const-string v0, "DTLS"

    return-object v0
.end method

.method public final getSessionByAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 0

    .line 2866
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getDtlsContextByAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2868
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->socket:Ljava/net/DatagramSocket;

    .line 876
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->outboundMessageBufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 878
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useReuseAddress()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Enable address reuse for socket!"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 882
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Enable address reuse for socket failed!"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 887
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSocketReceiveBufferSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 890
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 892
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "failed to apply receive buffer size {}"

    invoke-interface {v3, v4, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSocketSendBufferSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 896
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 898
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 900
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "failed to apply send buffer size {}"

    invoke-interface {v3, v4, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 905
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0

    .line 906
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result v2

    .line 908
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_3

    .line 909
    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 911
    :cond_3
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p2

    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 912
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_4

    invoke-virtual {v3, p2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 913
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {p2}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->markAllAsResumptionRequired()V

    .line 916
    :cond_4
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 917
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxFragmentLength()Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object p2

    .line 919
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->length()I

    move-result p2

    sget v4, Lorg/eclipse/californium/scandium/DTLSConnector;->MAX_CIPHERTEXT_EXPANSION:I

    add-int/2addr p2, v4

    add-int/lit8 p2, p2, 0x19

    iput p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    .line 924
    :cond_5
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnit()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 925
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnit()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    .line 926
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    const-string p3, "Configured MTU [{}]"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    if-eqz p3, :cond_7

    .line 928
    iput-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    .line 929
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    const-string p3, "Forced MTU [{}]"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 931
    :cond_7
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 932
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 933
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->getIPv4Mtu()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    .line 934
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->getIPv6Mtu()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    .line 935
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v4, "multiple network interfaces, using smallest MTU [IPv4 {}, IPv6 {}]"

    invoke-interface {p1, v4, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 937
    :cond_8
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p2

    .line 938
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p2, :cond_a

    .line 939
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getMTU()I

    move-result p3

    if-lez p3, :cond_a

    if-eqz p1, :cond_9

    .line 941
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getMTU()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    goto :goto_2

    .line 943
    :cond_9
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getMTU()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    .line 946
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->getIPv6Mtu()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    .line 947
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Cannot determine MTU of network interface, using minimum MTU [{}] of IPv6 instead"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 949
    :cond_b
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->getIPv4Mtu()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    .line 950
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Cannot determine MTU of network interface, using minimum MTU [{}] of IPv4 instead"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    :goto_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnitLimit()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 954
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    if-ge p2, p3, :cond_d

    .line 955
    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p2, p3, :cond_c

    .line 956
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    .line 957
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v4, "Limit MTU IPv4[{}]"

    invoke-interface {p2, v4, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    :cond_c
    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p2, p3, :cond_f

    .line 960
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    .line 961
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Limit MTU IPv6[{}]"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 964
    :cond_d
    iget p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    if-le p1, p2, :cond_e

    .line 965
    iput p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    .line 966
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Buffersize MTU IPv4[{}]"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 968
    :cond_e
    iget p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    if-le p1, p2, :cond_f

    .line 969
    iput p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    .line 970
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Buffersize MTU IPv6[{}]"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    :cond_f
    :goto_3
    iput-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    .line 977
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    instance-of p1, p1, Ljava/util/concurrent/ScheduledExecutorService;

    const-string p2, "#"

    if-eqz p1, :cond_10

    .line 978
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_4

    .line 980
    :cond_10
    new-instance p1, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTLS-Timer-"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v3, Lorg/eclipse/californium/elements/util/NamedThreadFactory;->SCANDIUM_THREAD_GROUP:Ljava/lang/ThreadGroup;

    invoke-direct {p1, p3, v3}, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 984
    :goto_4
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_12

    .line 985
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConnectorThreadCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, v1, :cond_11

    sub-int/2addr p1, v1

    .line 987
    new-instance p3, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTLS-Worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lorg/eclipse/californium/elements/util/NamedThreadFactory;->SCANDIUM_THREAD_GROUP:Ljava/lang/ThreadGroup;

    invoke-direct {p3, p2, v3}, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    invoke-static {p1, p3}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_5

    .line 990
    :cond_11
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 992
    :goto_5
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->hasInternalExecutor:Z

    .line 995
    :cond_12
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->calculateRecentHandshakeExpires()J

    move-result-wide p1

    .line 997
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 998
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v3}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 999
    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_16

    .line 1000
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 1001
    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1002
    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v9

    if-nez v9, :cond_14

    .line 1003
    iget-object v9, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v10, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    invoke-virtual {v6, v9, v10}, Lorg/eclipse/californium/scandium/dtls/Connection;->setConnectorContext(Ljava/util/concurrent/Executor;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 1005
    :cond_14
    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/Connection;->getStartNanos()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_13

    add-int/lit8 v5, v5, 0x1

    .line 1008
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, p1, v9

    cmp-long v7, v9, v7

    if-gez v7, :cond_15

    .line 1009
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    const/4 v7, 0x0

    .line 1011
    invoke-virtual {v6, v7}, Lorg/eclipse/californium/scandium/dtls/Connection;->startByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V

    goto :goto_6

    :cond_16
    if-lez v5, :cond_17

    .line 1017
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "Restore {} recent handshakes!"

    invoke-interface {p1, v3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1018
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 1019
    new-instance p1, Lorg/eclipse/californium/scandium/DTLSConnector$7;

    invoke-direct {p1, p0}, Lorg/eclipse/californium/scandium/DTLSConnector$7;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V

    invoke-static {p3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1040
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1041
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->cleanupRecentHandshakes()V

    .line 1044
    :cond_17
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1046
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getReceiverThreadCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move p2, v4

    :goto_7
    if-ge p2, p1, :cond_18

    .line 1048
    new-instance p3, Lorg/eclipse/californium/scandium/DTLSConnector$8;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DTLS-Receiver-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, p0, v3}, Lorg/eclipse/californium/scandium/DTLSConnector$8;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p3, v1}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->setDaemon(Z)V

    .line 1063
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->start()V

    .line 1064
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1067
    :cond_18
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IPv4 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / IPv6 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1068
    :goto_8
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    aput-object v3, p3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x3

    iget v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x4

    aput-object p1, p3, v0

    const-string p1, "DTLSConnector listening on {}, recv buf = {}, send buf = {}, recv packet size = {}, MTU = {}"

    invoke-interface {p2, p1, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsHealth;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1074
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getHealthStatusIntervalMilliseconds()I

    move-result p1

    int-to-long p2, p1

    .line 1077
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    instance-of v0, v0, Lorg/eclipse/californium/scandium/DtlsHealthExtended;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1a

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1b

    :cond_1a
    const-wide/16 p2, 0x7d0

    :cond_1b
    move-wide v4, p2

    cmp-long p2, v4, v7

    if-lez p2, :cond_1c

    .line 1084
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/eclipse/californium/scandium/DTLSConnector$9;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$9;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->statusLogger:Ljava/util/concurrent/ScheduledFuture;

    .line 1106
    :cond_1c
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/eclipse/californium/scandium/DTLSConnector$10;

    invoke-direct {v1, p0}, Lorg/eclipse/californium/scandium/DTLSConnector$10;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakeCleaner:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 3108
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadConnections(Ljava/io/InputStream;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->loadConnections(Ljava/io/InputStream;J)I

    move-result p1

    return p1
.end method

.method protected onInitializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 0

    return-void
.end method

.method public processDatagram(Ljava/net/DatagramPacket;)V
    .locals 1

    const/4 v0, 0x0

    .line 1498
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method protected processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V
    .locals 9

    .line 1511
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1512
    sget-boolean v1, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 1513
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PEER"

    invoke-static {v2, v1}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1516
    invoke-interface {v1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    .line 1518
    :cond_1
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v3

    .line 1520
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_3

    .line 1526
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Discarding record with {} bytes from [{}] without source-port"

    invoke-interface {p2, v1, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1528
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_2

    .line 1529
    invoke-interface {p1, v5}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_2
    return-void

    .line 1533
    :cond_3
    new-instance v1, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    invoke-direct {v1, v6, v7, v8}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BII)V

    .line 1534
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-static {v1, v6, v3, v4}, Lorg/eclipse/californium/scandium/dtls/Record;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;J)Ljava/util/List;

    move-result-object v1

    .line 1535
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    iget v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Received {} DTLS records from {} using a {} byte datagram buffer"

    invoke-interface {v3, v7, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1539
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Discarding malicious record with {} bytes from [{}]"

    invoke-interface {p2, v1, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1541
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_4

    .line 1542
    invoke-interface {p1, v5}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_4
    return-void

    .line 1547
    :cond_5
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1548
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v1

    aput-object v1, p2, v5

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v8

    const-string v1, "Discarding {} records, startting with {} from [{}] on shutdown"

    invoke-interface {p1, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1550
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Execution shutdown while processing incoming records from peer: {}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1552
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_6

    .line 1553
    invoke-interface {p1, v5}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_6
    return-void

    .line 1558
    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 1560
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->isNewClientHello()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1561
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/californium/scandium/dtls/Record;->setAddress(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 1562
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    sget-object v2, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne p2, v2, :cond_9

    .line 1563
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "client-only, discarding {} CLIENT_HELLO from [{}]!"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1565
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_8

    .line 1566
    invoke-interface {p1, v5}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_8
    return-void

    .line 1570
    :cond_9
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lorg/eclipse/californium/scandium/DTLSConnector$14;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$14;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1586
    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    .line 1587
    invoke-direct {p0, v0, p1, v2}, Lorg/eclipse/californium/scandium/DTLSConnector;->getConnection(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Z)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1590
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p2, :cond_b

    .line 1591
    invoke-interface {p2, v5}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_b
    if-nez p1, :cond_c

    .line 1594
    sget-object p1, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Discarding {} records from [{}] received without existing connection"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1597
    :cond_c
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p1, v3, v8

    const-string p1, "Discarding {} records from [{},{}] received without existing connection"

    invoke-interface {p2, p1, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1603
    :cond_d
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object p1

    .line 1605
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 1607
    :try_start_0
    invoke-virtual {v6, v0, p2}, Lorg/eclipse/californium/scandium/dtls/Record;->setAddress(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 1608
    new-instance v7, Lorg/eclipse/californium/scandium/DTLSConnector$15;

    invoke-direct {v7, p0, v6, v3}, Lorg/eclipse/californium/scandium/DTLSConnector$15;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {p1, v7}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1623
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    aput-object p1, v1, v8

    const-string p1, "Unexpected error occurred while processing record [type: {}, peer: {}]"

    invoke-interface {p2, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1625
    invoke-direct {p0, v3}, Lorg/eclipse/californium/scandium/DTLSConnector;->terminateConnectionWithInternalError(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1619
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    aput-object p1, v1, v8

    const-string p1, "Execution rejected while processing record [type: {}, peer: {}]"

    invoke-interface {p2, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_2
    return-void
.end method

.method public processHandshakeException(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V
    .locals 1

    const/4 v0, 0x0

    .line 2926
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->processExceptionDuringHandshake(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    return-void
.end method

.method public processRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 13

    const-string v0, "error occurred while processing record from peer [{}]"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 1643
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v5

    const/4 v6, 0x4

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/eclipse/californium/scandium/dtls/Connection;->equalsPeerAddress(Ljava/net/InetSocketAddress;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1644
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v7

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getReceiveNanos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 1645
    sget-object v5, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v9, "Drop received record {}, connection changed address {} => {}! (shift {}ms)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v10

    aput-object v10, v6, v2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v4

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v5, v9, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v5, :cond_0

    .line 1649
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_0
    return-void

    .line 1654
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v5

    .line 1655
    sget-object v7, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Received DTLS record of type [{}], length: {}, [epoche:{},rseqn:{}]"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragmentLength()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1659
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isExpired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1662
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "handshake already expired!"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    .line 1663
    iget-object v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->get(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v7

    if-eq v7, p2, :cond_3

    .line 1665
    sget-object v7, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Discarding {} record [epoch {}, rseqn {}] received from peer [{}], handshake expired!"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1669
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v5, :cond_2

    .line 1670
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v7, 0x0

    .line 1677
    :cond_4
    invoke-virtual {p2, v5}, Lorg/eclipse/californium/scandium/dtls/Connection;->getDtlsContext(I)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v8

    if-nez v8, :cond_7

    if-eqz v7, :cond_5

    .line 1680
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v8

    if-nez v8, :cond_5

    if-ne v5, v4, :cond_5

    .line 1682
    invoke-virtual {v7, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addRecordsOfNextEpochForDeferredProcessing(Lorg/eclipse/californium/scandium/dtls/Record;)V

    goto :goto_0

    .line 1684
    :cond_5
    sget-object v7, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Discarding {} record [epoch {}, rseqn {}] received from peer [{}] without an active dtls context"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1686
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v5, :cond_6

    .line 1687
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_6
    :goto_0
    return-void

    .line 1696
    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->isClosed()Z

    move-result v9

    .line 1697
    iget-boolean v10, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useFilter:Z

    if-nez v10, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v10

    iget v12, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->useExtendedWindowFilter:I

    invoke-virtual {v8, v5, v10, v11, v12}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->isRecordProcessable(IJI)Z

    move-result v10

    if-nez v10, :cond_9

    move v10, v4

    goto :goto_1

    :cond_9
    move v10, v2

    :goto_1
    if-eqz v10, :cond_c

    if-eqz v9, :cond_a

    .line 1701
    sget-object v7, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Discarding {} record [epoch {}, rseqn {}] received from closed peer [{}]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1704
    :cond_a
    sget-object v7, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Discarding duplicate {} record [epoch {}, rseqn {}] received from peer [{}]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    :goto_2
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v5, :cond_b

    .line 1708
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_b
    return-void

    .line 1713
    :cond_c
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v9

    sget-object v10, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    if-ne v9, v10, :cond_e

    if-nez v5, :cond_10

    .line 1716
    sget-object v5, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Discarding TLS_CID record received from peer [{}] during handshake"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1718
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v5, :cond_d

    .line 1719
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_d
    return-void

    :cond_e
    if-lez v5, :cond_10

    .line 1723
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->expectCid()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1724
    sget-object v5, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Discarding record received from peer [{}], CID required!"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1726
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v5, :cond_f

    .line 1727
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v5, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    :cond_f
    return-void

    .line 1732
    :cond_10
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->isDecoded()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1734
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->useDeprecatedCid()Z

    move-result v5

    invoke-virtual {p1, v5}, Lorg/eclipse/californium/scandium/dtls/Record;->setDeprecatedMac(Z)V

    .line 1735
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadState()Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/eclipse/californium/scandium/dtls/Record;->decodeFragment(Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;)V

    :cond_11
    if-eqz v7, :cond_12

    .line 1738
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isProbing()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1740
    iget-object v5, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v5, p2}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->removeFromEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 1741
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->resetContext()V

    .line 1742
    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->resetProbing()V

    .line 1743
    sget-object v5, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "handshake probe successful {}"

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-static {v9}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v7, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1746
    :cond_12
    sget-object v5, Lorg/eclipse/californium/scandium/DTLSConnector$20;->$SwitchMap$org$eclipse$californium$scandium$dtls$ContentType:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/ContentType;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v4, :cond_16

    if-eq v5, v1, :cond_15

    if-eq v5, v3, :cond_14

    if-eq v5, v6, :cond_13

    .line 1760
    sget-object v5, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Discarding record of unsupported type [{}] from peer [{}]"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1757
    :cond_13
    invoke-direct {p0, p1, p2, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->processHandshakeRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V

    goto/16 :goto_3

    .line 1754
    :cond_14
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->processChangeCipherSpecRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto/16 :goto_3

    .line 1751
    :cond_15
    invoke-direct {p0, p1, p2, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->processAlertRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V

    goto/16 :goto_3

    .line 1748
    :cond_16
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->processApplicationDataRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p2

    .line 1788
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 1771
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 1773
    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->incrementMacErrors()V

    .line 1774
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz v6, :cond_17

    .line 1775
    invoke-interface {v6, p2}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionMacError(Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1776
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->closeConnection(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 1780
    :cond_17
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v5}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Discarding {} received from peer [{}] caused by {}"

    invoke-interface {p2, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p2, :cond_18

    .line 1783
    invoke-interface {p2, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    .line 1785
    :cond_18
    sget-object p2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1764
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v1, :cond_19

    .line 1765
    invoke-interface {v1, v4}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    .line 1767
    :cond_19
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unexpected error occurred while processing record from peer [{}]"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1769
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->terminateConnectionWithInternalError(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :goto_3
    return-void
.end method

.method protected receiveNextDatagramFromNetwork(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1480
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1486
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1488
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1493
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method final declared-synchronized restart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 840
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->start(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    monitor-exit p0

    return-void

    .line 843
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connector has never been started before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreConnection(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
    .locals 1

    .line 1269
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->restore(Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    move-result p1

    return p1
.end method

.method public saveConnections(Ljava/io/OutputStream;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->saveConnections(Ljava/io/OutputStream;J)I

    move-result p1

    return p1

    .line 1258
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connector is running, save not possible!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Lorg/eclipse/californium/elements/RawData;)V
    .locals 12

    if-eqz p1, :cond_11

    .line 2469
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2470
    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    .line 2472
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->isMulticast()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2473
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "DTLSConnector drops {} outgoing bytes to multicast {}"

    invoke-interface {v0, v4, v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2475
    new-instance v0, Lorg/eclipse/californium/elements/exception/MulticastNotSupportedException;

    const-string v1, "DTLS doesn\'t support multicast!"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/exception/MulticastNotSupportedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2476
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_1

    .line 2477
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_1
    return-void

    .line 2481
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_3

    .line 2482
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 2483
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DTLSConnector drops {} outgoing bytes to [{}] without destination-port"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2485
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoAPs message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dropped, destination port 0!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 2491
    :cond_3
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 2493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "connector must be started before sending messages is possible"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v8, v3

    goto/16 :goto_4

    .line 2494
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v0

    const/16 v4, 0x4000

    if-le v0, v4, :cond_5

    .line 2496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Message data must not exceed 16384 bytes"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2499
    :cond_5
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    sget-object v4, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-eq v0, v4, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    .line 2501
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getEffectiveHandshakeMode(Lorg/eclipse/californium/elements/RawData;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 2503
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-direct {p0, v4, v3, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getConnection(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Z)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v4

    if-nez v4, :cond_b

    if-eqz v0, :cond_8

    .line 2506
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v0, "connection store is exhausted!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 2508
    :cond_8
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->dtlsRole:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    if-ne v0, v1, :cond_9

    .line 2509
    new-instance v0, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string v1, "server only, connection missing!"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2511
    :cond_9
    new-instance v0, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;

    const-string v1, "connection missing!"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2513
    :goto_2
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "DTLSConnector drops {} outgoing bytes to {}, connection missing!"

    invoke-interface {v0, v3, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2515
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_a

    .line 2516
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_a
    return-void

    :cond_b
    :goto_3
    move-object v0, v3

    move-object v8, v4

    :goto_4
    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v0, :cond_d

    .line 2523
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    const-string v1, "DTLSConnector drops {} outgoing bytes to {}, {}!"

    invoke-interface {v3, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2525
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2526
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_c

    .line 2527
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    .line 2529
    :cond_c
    throw v0

    .line 2532
    :cond_d
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v5

    .line 2533
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_f

    .line 2535
    :try_start_0
    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2539
    new-instance v11, Lorg/eclipse/californium/scandium/DTLSConnector$18;

    move-object v3, v11

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/californium/scandium/DTLSConnector$18;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;JLorg/eclipse/californium/elements/RawData;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {v0, v11}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 2537
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing executor for connection! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2571
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Execution rejected while sending application record [peer: {}]"

    invoke-interface {v3, v5, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2573
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "DTLSConnector drops {} outgoing bytes to {}, {}"

    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2575
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connector is not running."

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2576
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_10

    .line 2577
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    goto :goto_5

    .line 2581
    :cond_f
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->pendingOutboundMessagesCountdown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2582
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Outbound message overflow! Dropping outbound message to peer [{}]"

    invoke-interface {v0, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Outbound message overflow!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 2585
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_10

    .line 2586
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    :cond_10
    :goto_5
    return-void

    .line 2467
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Message must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method sendAlert(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V
    .locals 11

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 2435
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isResumptionRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2439
    :cond_0
    :try_start_0
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "send ALERT {} for peer {}."

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, p3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2441
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteEpoch()I

    move-result v2

    const/4 v9, 0x1

    if-lez v2, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-nez v7, :cond_3

    .line 2442
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 2446
    :cond_2
    new-instance v8, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getNextSequenceNumber()J

    move-result-wide v5

    move-object v2, v8

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;JLorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    goto :goto_2

    .line 2443
    :cond_3
    :goto_1
    new-instance v10, Lorg/eclipse/californium/scandium/dtls/Record;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteEpoch()I

    move-result v4

    const/4 v8, 0x0

    move-object v2, v10

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/californium/scandium/dtls/Record;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;ILorg/eclipse/californium/scandium/dtls/DTLSMessage;Lorg/eclipse/californium/scandium/dtls/DTLSContext;ZI)V

    move-object v8, v10

    .line 2448
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getRouter()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/eclipse/californium/scandium/dtls/Record;->setAddress(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 2449
    invoke-virtual {p0, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V

    .line 2450
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz v0, :cond_4

    .line 2451
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    invoke-interface {v0, p1, v9}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionUpdatesSequenceNumbers(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2456
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Cannot create ALERT message for peer [{}]"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :catch_1
    :cond_4
    :goto_3
    return-void

    .line 2433
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Alert must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2431
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DTLS Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Connection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendFlight(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/DatagramPacket;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2916
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramPacket;

    .line 2917
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2918
    invoke-interface {v1, v2}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    .line 2920
    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendNextDatagramOverNetwork(Ljava/net/DatagramPacket;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected sendNextDatagramOverNetwork(Ljava/net/DatagramPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2939
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2940
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2941
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    if-nez v1, :cond_1

    .line 2942
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 2943
    sget-object v1, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Discarding record with {} bytes to [{}] without destination-port"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2945
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2946
    invoke-interface {p1, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    .line 2948
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTLS Record to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dropped, destination port 0!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2951
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2959
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2960
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Could not send record"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2961
    throw p1

    .line 2954
    :catch_1
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2955
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Could not send record, destination {} unreachable!"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2965
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    if-nez p1, :cond_4

    .line 2967
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    .line 2969
    :cond_4
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->DROP_LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Socket [{}] is closed, discarding packet ..."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2970
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Socket closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2930
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v0

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ContentType;->APPLICATION_DATA:Lorg/eclipse/californium/scandium/dtls/ContentType;

    if-eq v0, v1, :cond_0

    .line 2931
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/DtlsHealth;->sendingRecord(Z)V

    .line 2933
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->toByteArray()[B

    move-result-object v0

    .line 2934
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 2935
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendNextDatagramOverNetwork(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public final setAlertHandler(Lorg/eclipse/californium/scandium/AlertHandler;)V
    .locals 0

    .line 3332
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->alertHandler:Lorg/eclipse/californium/scandium/AlertHandler;

    return-void
.end method

.method public setEndpointContextMatcher(Lorg/eclipse/californium/elements/EndpointContextMatcher;)V
    .locals 0

    .line 3286
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->endpointContextMatcher:Lorg/eclipse/californium/elements/EndpointContextMatcher;

    return-void
.end method

.method public final declared-synchronized setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    monitor-enter p0

    .line 790
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eq v0, p1, :cond_1

    .line 791
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 792
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot set new executor while connector is running"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V
    .locals 1

    .line 3278
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3281
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;

    return-void

    .line 3279
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "message handler cannot be set on running connector"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 827
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->start(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected start(Ljava/net/InetSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V

    return-void
.end method

.method public startDropConnectionsForPrincipal(Ljava/security/Principal;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1285
    new-instance v0, Lorg/eclipse/californium/scandium/DTLSConnector$11;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector$11;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/security/Principal;)V

    .line 1292
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->startTerminateConnectionsForPrincipal(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 1283
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "principal must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startForEach(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1368
    new-instance v0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector$1;)V

    .line 1369
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v1}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->nextForEach(Ljava/util/Iterator;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;)V

    return-object v0

    .line 1366
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startTerminateConnectionsForPrincipal(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
            "Ljava/security/Principal;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1313
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->startTerminateConnectionsForPrincipal(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public startTerminateConnectionsForPrincipal(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
            "Ljava/security/Principal;",
            ">;Z)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1338
    new-instance v0, Lorg/eclipse/californium/scandium/DTLSConnector$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector$12;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;Z)V

    .line 1353
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->startForEach(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 1336
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "principal handler must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 9

    .line 1162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    monitor-enter p0

    .line 1165
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const-wide/16 v4, 0x1f4

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 1167
    sget-object v6, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "DTLS connector on [{}] stopping ..."

    iget-object v8, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1168
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->statusLogger:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v6, :cond_0

    .line 1169
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->statusLogger:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1170
    iput-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->statusLogger:Ljava/util/concurrent/ScheduledFuture;

    .line 1172
    :cond_0
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakeCleaner:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v6, :cond_1

    .line 1173
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakeCleaner:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1174
    iput-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakeCleaner:Ljava/util/concurrent/ScheduledFuture;

    .line 1177
    :cond_1
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->recentHandshakes:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->clear()V

    .line 1178
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 1179
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->socket:Ljava/net/DatagramSocket;

    if-eqz v6, :cond_3

    .line 1182
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 1183
    iput-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->socket:Ljava/net/DatagramSocket;

    .line 1185
    :cond_3
    iput-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->maximumTransmissionUnit:Ljava/lang/Integer;

    const/16 v6, 0x240

    .line 1186
    iput v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv4Mtu:I

    const/16 v6, 0x500

    .line 1187
    iput v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->ipv6Mtu:I

    .line 1188
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->connectionStore:Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    invoke-interface {v6, v0}, Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;->stop(Ljava/util/List;)V

    .line 1189
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eq v6, v7, :cond_4

    .line 1190
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1191
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1192
    iput-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_4
    move-object v6, v2

    .line 1194
    :goto_1
    iget-boolean v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->hasInternalExecutor:Z

    if-eqz v7, :cond_5

    .line 1195
    iget-object v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1196
    iget-object v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1197
    iput-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1198
    iput-boolean v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->hasInternalExecutor:Z

    move-object v2, v7

    .line 1200
    :cond_5
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 1201
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    :try_start_1
    invoke-virtual {v7, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1207
    :cond_6
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    :cond_7
    move-object v3, v2

    .line 1209
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    .line 1212
    :try_start_3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1213
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Shutdown DTLS connector on [{}] timer not terminated in time!"

    iget-object v7, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-interface {v2, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_8
    if-eqz v3, :cond_9

    .line 1220
    :try_start_4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1221
    sget-object v2, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Shutdown DTLS connector on [{}] executor not terminated in time!"

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1226
    :catch_2
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1228
    :try_start_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 1230
    sget-object v3, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Shutdown DTLS connector:"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 1234
    sget-object v0, Lorg/eclipse/californium/scandium/DTLSConnector;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector;->lastBindAddress:Ljava/net/InetSocketAddress;

    const-string v2, "DTLS connector on [{}] stopped."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 1209
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
