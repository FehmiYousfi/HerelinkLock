.class public abstract Lorg/eclipse/californium/scandium/dtls/Handshaker;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;,
        Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;,
        Lorg/eclipse/californium/scandium/dtls/Handshaker$ConnectionTask;,
        Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;
    }
.end annotation


# instance fields
.field protected final LOGGER:Lorg/slf4j/Logger;

.field private final additionalTimeoutForEcc:I

.field protected final advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

.field private applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

.field private final backOffRetransmission:I

.field private cause:Ljava/lang/Throwable;

.field protected certificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected certificateIdentityAvailable:Z

.field private certificateIdentityPending:Z

.field protected final certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

.field private certificateVerificationPending:Z

.field protected final certificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

.field private changeCipherSuiteMessageExpected:Z

.field protected clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

.field private clientWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

.field private clientWriteKey:Ljavax/crypto/SecretKey;

.field private clientWriteMACKey:Ljavax/crypto/SecretKey;

.field private final connection:Lorg/eclipse/californium/scandium/dtls/Connection;

.field protected final connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

.field private final context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

.field private contextEstablished:Z

.field private customArgument:Ljava/lang/Object;

.field private final deferredApplicationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/RawData;",
            ">;"
        }
    .end annotation
.end field

.field private deferredIncomingRecordsSize:I

.field private destroyed:Z

.field private eccExpected:Z

.field private expectedStates:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

.field protected final extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

.field protected flightNumber:I

.field private flightSendNanos:J

.field private volatile generateClusterMacKeys:Z

.field private handshakeAborted:Z

.field private handshakeCompleted:Z

.field private handshakeFailed:Z

.field protected final handshakeMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

.field private final ipv6:Z

.field private masterSecret:Ljavax/crypto/SecretKey;

.field private masterSecretSeed:[B

.field private final maxDeferredProcessedIncomingRecordsSize:I

.field private final maxDeferredProcessedOutgoingApplicationDataMessages:I

.field private final maxFragmentedHandshakeMessageLength:I

.field private final maxRetransmissionTimeout:I

.field private final maxRetransmissions:I

.field private nanosExpireTime:J

.field private final nanosExpireTimeout:J

.field private final nextEpochDeferredRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;"
        }
    .end annotation
.end field

.field private nextReceiveMessageSequence:I

.field private otherPeersCertPath:Ljava/security/cert/CertPath;

.field protected otherPeersCertificateVerified:Z

.field protected otherPeersPublicKey:Ljava/security/PublicKey;

.field private otherPeersSignatureVerified:Z

.field private otherSecret:Ljavax/crypto/SecretKey;

.field private final peer:Ljava/net/InetSocketAddress;

.field protected final peerToLog:Ljava/lang/Object;

.field private final pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/eclipse/californium/scandium/dtls/DTLSFlight;",
            ">;"
        }
    .end annotation
.end field

.field protected privateKey:Ljava/security/PrivateKey;

.field private pskRequestPending:Z

.field protected publicKey:Ljava/security/PublicKey;

.field private reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

.field private final recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

.field protected recordSizeLimit:Ljava/lang/Integer;

.field private final recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

.field private final retransmissionRandomFactor:F

.field private final retransmissionTimeout:I

.field private final retransmissionTimeoutScale:F

.field private retransmitFlight:Ljava/lang/Runnable;

.field private sendMessageSequence:I

.field protected serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

.field private serverWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

.field private serverWriteKey:Ljavax/crypto/SecretKey;

.field private serverWriteMACKey:Ljavax/crypto/SecretKey;

.field private final sessionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/californium/scandium/dtls/SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final sniEnabled:Z

.field private statesChanged:Z

.field private statesIndex:I

.field private timeoutLastFlight:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final timer:Ljava/util/concurrent/ScheduledExecutorService;

.field private final useEarlyStopRetransmission:Z

.field private useMultiHandshakeMessagesRecord:Ljava/lang/Boolean;

.field private useMultiRecordMessages:Ljava/lang/Boolean;

.field protected final useTruncatedCertificatePathForVerification:Z


# direct methods
.method protected constructor <init>(JILorg/eclipse/californium/scandium/dtls/RecordLayer;Ljava/util/concurrent/ScheduledExecutorService;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V
    .locals 3

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    .line 159
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendMessageSequence:I

    .line 197
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextReceiveMessageSequence:I

    .line 209
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->flightNumber:I

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    .line 242
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeMessages:Ljava/util/List;

    .line 428
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    if-eqz p4, :cond_7

    if-eqz p5, :cond_6

    if-eqz p6, :cond_5

    if-eqz p7, :cond_4

    if-ltz p3, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    .line 528
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendMessageSequence:I

    .line 529
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextReceiveMessageSequence:I

    .line 530
    new-instance p3, Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;-><init>(J)V

    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    .line 531
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    .line 532
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 533
    iput-object p6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 534
    invoke-virtual {p6}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peer:Ljava/net/InetSocketAddress;

    .line 535
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peer:Ljava/net/InetSocketAddress;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    .line 536
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConnectionIdGenerator()Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    .line 537
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeout()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeout:I

    .line 538
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissionTimeout()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    .line 539
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAdditionalTimeoutForEcc()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->additionalTimeoutForEcc:I

    .line 540
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionRandomFactor()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionRandomFactor:F

    .line 541
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRetransmissionTimeoutScale()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeoutScale:F

    .line 542
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getBackOffRetransmission()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->backOffRetransmission:I

    .line 543
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxRetransmissions()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    .line 544
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getRecordSizeLimit()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordSizeLimit:Ljava/lang/Integer;

    .line 545
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxFragmentedHandshakeMessageLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxFragmentedHandshakeMessageLength:I

    .line 546
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useMultiRecordMessages()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiRecordMessages:Ljava/lang/Boolean;

    .line 547
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useMultiHandshakeMessageRecords()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiHandshakeMessagesRecord:Ljava/lang/Boolean;

    .line 548
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxDeferredProcessedOutgoingApplicationDataMessages()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxDeferredProcessedOutgoingApplicationDataMessages:I

    .line 549
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxDeferredProcessedIncomingRecordsSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxDeferredProcessedIncomingRecordsSize:I

    .line 550
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useServerNameIndication()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sniEnabled:Z

    .line 551
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getExtendedMasterSecretMode()Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->extendedMasterSecretMode:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    .line 552
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useTruncatedCertificatePathForValidation()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useTruncatedCertificatePathForVerification:Z

    .line 553
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->useEarlyStopRetransmission()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useEarlyStopRetransmission:Z

    .line 554
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getCertificateIdentityProvider()Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    .line 555
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAdvancedCertificateVerifier()Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    .line 556
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getAdvancedPskStore()Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    .line 557
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getApplicationLevelInfoSupplier()Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    .line 558
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Handshaker$1;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    .line 559
    invoke-virtual {p6}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    instance-of p1, p1, Ljava/net/Inet6Address;

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ipv6:Z

    .line 562
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeout:I

    int-to-float p1, p1

    iget p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionRandomFactor:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 563
    invoke-virtual {p7}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->containsEccBasedCipherSuite(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 564
    iget p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->additionalTimeoutForEcc:I

    add-int/2addr p1, p2

    .line 566
    :cond_0
    iget p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p2, p1

    .line 567
    iget p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeoutScale:F

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 569
    :goto_0
    iget p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    if-ge v0, p3, :cond_1

    .line 570
    iget p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeoutScale:F

    iget p4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    invoke-static {p1, p3, p4}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTimeout(IFI)I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nanosExpireTimeout:J

    .line 575
    invoke-virtual {p6}, Lorg/eclipse/californium/scandium/dtls/Connection;->getSessionListener()Lorg/eclipse/californium/scandium/dtls/SessionListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)V

    return-void

    .line 526
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial record sequence number must not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial message sequence number must not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Dtls Connector Config must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Connection must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 518
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Timer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Record layer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Record;)I
    .locals 0

    .line 128
    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->compareRecords(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Record;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handleTimeout(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/Handshaker;)I
    .locals 0

    .line 128
    iget p0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextReceiveMessageSequence:I

    return p0
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->removeDeferredProcessedRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    return-object p0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)Z
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addDeferredProcessedRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    return-object p0
.end method

.method static synthetic access$700(Lorg/eclipse/californium/scandium/dtls/Handshaker;)Lorg/eclipse/californium/scandium/dtls/RecordLayer;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    return-object p0
.end method

.method private addDeferredProcessedRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;)Z"
        }
    .end annotation

    .line 1814
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->size()I

    move-result v0

    .line 1815
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    add-int v2, v1, v0

    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxDeferredProcessedIncomingRecordsSize:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    add-int/2addr v1, v0

    .line 1816
    iput v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    .line 1817
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return v4

    .line 1820
    :cond_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxDeferredProcessedIncomingRecordsSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Dropped incoming record from peer [{}], limit of {} bytes exceeded by {}+{} bytes!"

    invoke-interface {p2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1822
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    invoke-interface {p2, p1}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->dropReceivedRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V

    return v3
.end method

.method private amendPeerPrincipal()V
    .locals 3

    .line 2559
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 2560
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v1

    .line 2561
    instance-of v2, v1, Lorg/eclipse/californium/elements/auth/ExtensiblePrincipal;

    if-eqz v2, :cond_0

    .line 2564
    move-object v2, v1

    check-cast v2, Lorg/eclipse/californium/elements/auth/ExtensiblePrincipal;

    .line 2565
    invoke-direct {p0, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getAdditionalPeerInfo(Ljava/security/Principal;)Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2567
    invoke-interface {v2, v1}, Lorg/eclipse/californium/elements/auth/ExtensiblePrincipal;->amend(Lorg/eclipse/californium/elements/auth/AdditionalInfo;)Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setPeerIdentity(Ljava/security/Principal;)V

    :cond_0
    return-void
.end method

.method private static compareRecords(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Record;)I
    .locals 7

    .line 719
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 723
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 724
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 725
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_0

    return v4

    .line 727
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v0

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    return v2

    .line 730
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_2

    return v4

    .line 732
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 720
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "records with different epoch! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " != "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAdditionalPeerInfo(Ljava/security/Principal;)Lorg/eclipse/californium/elements/auth/AdditionalInfo;
    .locals 2

    .line 2573
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->applicationLevelInfoSupplier:Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2576
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->customArgument:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/eclipse/californium/scandium/auth/ApplicationLevelInfoSupplier;->getInfo(Ljava/security/Principal;Ljava/lang/Object;)Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleTimeout(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Cannot retransmit flight to peer [{}]"

    const-string v10, " "

    .line 1966
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->isResponseCompleted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1967
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 1969
    invoke-virtual {v11}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isProbing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1975
    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v2

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v7, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    invoke-interface {v2}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 1979
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getTries()I

    move-result v6

    .line 1980
    iget v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    if-ge v6, v2, :cond_2

    invoke-virtual {v11}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " Stopped by expired realtime!"

    move v6, v7

    :goto_0
    move/from16 v3, v17

    goto/16 :goto_7

    .line 1985
    :cond_2
    iget v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    if-ge v6, v2, :cond_8

    .line 1987
    iget-boolean v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useEarlyStopRetransmission:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->isResponseStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1989
    :goto_1
    iget v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    if-ge v6, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 1991
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTries()V

    .line 1992
    iget v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeoutScale:F

    iget v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    invoke-virtual {v8, v0, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTimeout(FI)V

    goto :goto_1

    .line 1997
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTries()V

    .line 1998
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getTimeout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "schedule handshake timeout {}ms after flight {}"

    invoke-interface {v0, v4, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2000
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmitFlight:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 2002
    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v8, v2, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->scheduleRetransmission(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    :cond_4
    return-void

    .line 2007
    :cond_5
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    iget v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Re-transmitting flight for [{}], [{}] retransmissions left"

    invoke-interface {v0, v4, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2010
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTries()V

    .line 2011
    iget v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeoutScale:F

    iget v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    invoke-virtual {v8, v0, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTimeout(FI)V

    .line 2012
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    iget-boolean v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ipv6:Z

    invoke-interface {v0, v2}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->getMaxDatagramSize(Z)I

    move-result v0

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getEffectiveFragmentLimit()I

    move-result v4

    .line 2014
    iget v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->backOffRetransmission:I

    if-lez v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    iget v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->backOffRetransmission:I

    if-le v2, v3, :cond_6

    move/from16 v18, v17

    goto :goto_2

    :cond_6
    move/from16 v18, v16

    .line 2015
    :goto_2
    iget-object v5, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiHandshakeMessagesRecord:Ljava/lang/Boolean;

    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiRecordMessages:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move v3, v0

    move v12, v6

    move-object/from16 v6, v19

    move/from16 v7, v18

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getDatagrams(IILjava/lang/Boolean;Ljava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v2

    .line 2017
    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Resending flight {} of {} message(s) to peer [{}] using {} datagram(s) of max. {} bytes. Retransmission {} of {}."

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v16

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getNumberOfMessages()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v17

    iget-object v6, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v6, v5, v15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v13

    add-int/lit8 v6, v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x5

    aput-object v0, v5, v6

    iget v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x6

    :try_start_2
    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2021
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    invoke-interface {v0, v2}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->sendFlight(Ljava/util/List;)V

    .line 2024
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmitFlight:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 2026
    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v8, v2, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->scheduleRetransmission(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 2028
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFlightRetransmitted(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v6, 0x6

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v6, 0x6

    goto :goto_4

    :catch_4
    move-exception v0

    move v6, v7

    .line 2036
    :goto_3
    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    invoke-interface {v2, v9, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :catch_5
    move-exception v0

    move v6, v7

    .line 2033
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2034
    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v4, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    invoke-interface {v3, v9, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    move v12, v6

    move v6, v7

    if-le v12, v2, :cond_9

    .line 2041
    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string v4, "Flight for [{}] has reached timeout, discarding ..."

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, " Stopped by timeout!"

    goto/16 :goto_0

    .line 2045
    :cond_9
    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v4, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Flight for [{}] has reached maximum no. [{}] of retransmissions, discarding ..."

    invoke-interface {v3, v5, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Stopped by timeout after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " retransmissions!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    :goto_5
    move v6, v7

    const-string v2, " Stopped by shutdown!"

    :goto_6
    move/from16 v3, v16

    .line 2052
    :goto_7
    iget-object v4, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v16

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getNumberOfMessages()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v17

    iget-object v6, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v6, v5, v15

    aput-object v2, v5, v14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getTries()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    iget v6, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissions:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string v6, "Flight {} of {} message(s) to peer [{}] failed,{} Retransmission {} of {}."

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->hasPendingApiCall()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2056
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v4, v5, v6}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v5, "Internal callback timeout!"

    invoke-direct {v0, v5, v4}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    .line 2059
    :cond_b
    instance-of v4, v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    if-eqz v4, :cond_c

    .line 2060
    iget-object v2, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    iget-object v3, v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    invoke-interface {v2, v3, v0}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->processHandshakeException(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    return-void

    :cond_c
    const-string v4, " failed!"

    const-string v5, "Handshake flight "

    if-eqz v3, :cond_d

    .line 2065
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DtlsHandshakeTimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DtlsHandshakeTimeoutException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 2069
    :cond_d
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/DtlsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lorg/eclipse/californium/scandium/dtls/DtlsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v11, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    return-void
.end method

.method private processNextHandshakeMessages(IILorg/eclipse/californium/scandium/dtls/HandshakeMessage;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 901
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "recursion-protection"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p3, "Called from doProcessMessage, return immediately to process next message!"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 908
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    if-eqz v0, :cond_1

    .line 910
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "response for flight {} started"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->setResponseStarted()V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-eqz p3, :cond_e

    .line 914
    invoke-virtual {p0, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->expectMessage(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    .line 915
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v3

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 916
    :cond_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string p3, "FINISH with epoch 0 from peer [{}]!"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 918
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string p3, "FINISH with epoch 0!"

    invoke-direct {p2, p3, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2

    .line 920
    :cond_3
    :goto_1
    instance-of v3, p3, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;

    if-eqz v3, :cond_4

    .line 921
    check-cast p3, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;

    invoke-virtual {p0, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembleFragment(Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;

    move-result-object p3

    if-nez p3, :cond_4

    goto/16 :goto_3

    .line 926
    :cond_4
    instance-of v3, p3, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;

    if-eqz v3, :cond_5

    .line 927
    check-cast p3, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;

    .line 928
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getParameter()Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;

    move-result-object v3

    invoke-static {p3, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->fromGenericHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p3

    .line 930
    :cond_5
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timeoutLastFlight:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    .line 932
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    if-eqz p1, :cond_6

    .line 933
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "last flight missing, handshake already failed! {}"

    invoke-interface {p2, v0, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    .line 935
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "last flight missing, resend failed! {}"

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 937
    :cond_7
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "last flight missing, resend for buffered message {} failed! {}"

    invoke-interface {p1, v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return v1

    .line 946
    :cond_8
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string p3, "Received ({}) FINISHED message again, retransmitting last flight..."

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 947
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->incrementTries()V

    .line 949
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return v1

    .line 953
    :cond_9
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 955
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageSeq()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Processing %s message from peer [%s], seqn: [%d]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ":"

    .line 959
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 961
    :cond_a
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_b
    if-nez p1, :cond_c

    .line 964
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_c
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesChanged:Z

    .line 967
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 969
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string v6, "Processed {} message from peer [{}]"

    invoke-interface {v3, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 975
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timeoutLastFlight:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_d

    .line 978
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextReceiveMessageSequence:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextReceiveMessageSequence:I

    .line 979
    iget-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesChanged:Z

    if-nez v3, :cond_d

    .line 980
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    .line 983
    :cond_d
    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getNextHandshakeMessage()Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p3

    .line 984
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiHandshakeMessagesRecord:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    .line 985
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiHandshakeMessagesRecord:Ljava/lang/Boolean;

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 971
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_e
    :goto_3
    return v2
.end method

.method private processNextMessages(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recursionProtection:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "recursion-protection"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "Called from doProcessMessage, return immediately to process next message!"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 805
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v4

    if-eqz p1, :cond_1

    goto :goto_0

    .line 807
    :cond_1
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->getNextRecord()Lorg/eclipse/californium/scandium/dtls/Record;

    move-result-object p1

    :goto_0
    move v5, v2

    :goto_1
    if-eqz p1, :cond_8

    .line 809
    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiRecordMessages:Ljava/lang/Boolean;

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->isFollowUpRecord()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 810
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiRecordMessages:Ljava/lang/Boolean;

    .line 812
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getFragment()Lorg/eclipse/californium/scandium/dtls/DTLSMessage;

    move-result-object v6

    .line 814
    invoke-interface {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v7

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/ContentType;->CHANGE_CIPHER_SPEC:Lorg/eclipse/californium/scandium/dtls/ContentType;

    if-ne v7, v8, :cond_3

    .line 815
    invoke-virtual {p0, v6}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->expectMessage(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    .line 817
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Processing {} message from peer [{}]"

    invoke-interface {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    invoke-interface {p1, v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 819
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setCurrentReadState()V

    .line 820
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    .line 821
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Processed {} message from peer [{}]"

    invoke-interface {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v6

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    invoke-interface {p1, v7, v6, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 823
    :cond_3
    invoke-interface {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v7

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    if-ne v7, v8, :cond_7

    .line 824
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v7

    check-cast v6, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    invoke-direct {p0, v7, v5, v6}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processNextHandshakeMessages(IILorg/eclipse/californium/scandium/dtls/HandshakeMessage;)Z

    move-result v6

    .line 825
    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v8

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markRecordAsRead(IJ)Z

    if-nez v6, :cond_4

    goto :goto_4

    .line 835
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->getNextRecord()Lorg/eclipse/californium/scandium/dtls/Record;

    move-result-object p1

    .line 836
    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v6

    if-ge v4, v6, :cond_6

    if-nez p1, :cond_5

    .line 837
    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    invoke-virtual {v6}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 838
    :cond_5
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v4, "Unexpected handshake message left from peer %s"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v5, v6, v7}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v4, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 830
    :cond_7
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v4, "Received unexpected message type [%s] from peer %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v6}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v5, v6, v7}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v4, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 845
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result p1

    if-ge v4, p1, :cond_b

    .line 846
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object p1

    .line 847
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->takeDeferredRecordsOfNextEpoch()Ljava/util/List;

    move-result-object v4

    .line 848
    iget v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    if-gtz v5, :cond_a

    .line 853
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/californium/scandium/dtls/Record;

    if-eqz p1, :cond_9

    .line 854
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SerialExecutor;->isShutdown()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_9

    .line 857
    :try_start_1
    new-instance v6, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;

    invoke-direct {v6, p0, v5}, Lorg/eclipse/californium/scandium/dtls/Handshaker$1;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Record;)V

    invoke-virtual {p1, v6}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception v6

    .line 866
    :try_start_2
    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Execution rejected while processing record [type: {}, peer: {}]"

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    aput-object v10, v9, v3

    aput-object v6, v9, v1

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    :cond_9
    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-interface {v6, v5, v7}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->processRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto :goto_5

    .line 849
    :cond_a
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v4, "Received message of next epoch left from peer %s"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v5, v6, v7}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, v4, v5}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    .line 875
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v5, v0, v2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    const-string v1, "Cannot process handshake message from peer [{}] due to [{}]"

    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 878
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process handshake message, caused by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeDeferredProcessedRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;)V"
        }
    .end annotation

    .line 1834
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1835
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->size()I

    move-result p2

    .line 1836
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    if-lt v0, p2, :cond_0

    sub-int/2addr v0, p2

    .line 1842
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    goto :goto_0

    .line 1837
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    iget p2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredIncomingRecordsSize:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "deferred processed incoming records corrupted for peer [{}]! Removing {} bytes exceeds available {} bytes!"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1840
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deferred processing of incoming records corrupted!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addApplicationDataForDeferredProcessing(Lorg/eclipse/californium/elements/RawData;)V
    .locals 2

    .line 1789
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxDeferredProcessedOutgoingApplicationDataMessages:I

    if-ge v0, v1, :cond_0

    .line 1790
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addRecordsOfNextEpochForDeferredProcessing(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 1

    .line 1801
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->addDeferredProcessedRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)Z

    return-void
.end method

.method public final addSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2157
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected applyMasterSecret(Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 1369
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ensureUndestroyed()V

    .line 1370
    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    .line 1371
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;)V

    .line 1372
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method protected calculateKeys(Ljavax/crypto/SecretKey;)V
    .locals 9

    .line 1396
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ensureUndestroyed()V

    .line 1413
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getMacKeyLength()I

    move-result v1

    .line 1415
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getEncKeyLength()I

    move-result v2

    .line 1416
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getFixedIvLength()I

    move-result v3

    .line 1417
    iget-boolean v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->generateClusterMacKeys:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int v6, v1, v2

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    .line 1422
    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-static {v7, v8}, Lorg/eclipse/californium/elements/util/Bytes;->concatenate(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)[B

    move-result-object v7

    .line 1423
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v0

    sget-object v8, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->KEY_EXPANSION_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-static {v0, p1, v8, v7, v6}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;[BI)[B

    move-result-object p1

    const-string v0, "Mac"

    .line 1428
    invoke-static {p1, v5, v1, v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteMACKey:Ljavax/crypto/SecretKey;

    add-int/lit8 v5, v1, 0x0

    .line 1430
    invoke-static {p1, v5, v1, v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteMACKey:Ljavax/crypto/SecretKey;

    add-int/2addr v5, v1

    const-string v1, "AES"

    .line 1434
    invoke-static {p1, v5, v2, v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteKey:Ljavax/crypto/SecretKey;

    add-int/2addr v5, v2

    .line 1436
    invoke-static {p1, v5, v2, v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteKey:Ljavax/crypto/SecretKey;

    add-int/2addr v5, v2

    .line 1440
    invoke-static {p1, v5, v3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->createIv([BII)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    add-int/2addr v5, v3

    .line 1442
    invoke-static {p1, v5, v3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->createIv([BII)Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    .line 1444
    iget-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->generateClusterMacKeys:Z

    if-eqz v1, :cond_2

    .line 1446
    invoke-static {p1, v5, v4, v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    add-int/2addr v5, v4

    .line 1448
    invoke-static {p1, v5, v4, v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create([BIILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1450
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1451
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setClusterMacKeys(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    goto :goto_1

    .line 1453
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setClusterMacKeys(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    .line 1455
    :goto_1
    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 1456
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 1458
    :cond_2
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    return-void
.end method

.method protected final cloneMessageDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1348
    :try_start_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1350
    :catch_0
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v1, "Cannot create hash for second FINISHED message"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
.end method

.method public completePendingFlight()V
    .locals 1

    const/4 v0, 0x0

    .line 1891
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmitFlight:Ljava/lang/Runnable;

    .line 1892
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    if-eqz v0, :cond_0

    .line 1894
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->setResponseCompleted()V

    :cond_0
    return-void
.end method

.method protected final contextEstablished()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 2193
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->contextEstablished:Z

    if-nez v0, :cond_1

    .line 2194
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteState()Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSConnectionState;->hasValidCipherSuite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v2, "dtls context established {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2196
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->amendPeerPrincipal()V

    const/4 v0, 0x1

    .line 2197
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->contextEstablished:Z

    .line 2198
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 2199
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-interface {v1, p0, v2}, Lorg/eclipse/californium/scandium/dtls/SessionListener;->contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V

    goto :goto_0

    .line 2202
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DtlsException;

    const-string v1, "Failed establishing a incomplete session."

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DtlsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final createFinishedMessage([B)Lorg/eclipse/californium/scandium/dtls/Finished;
    .locals 4

    .line 1538
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 1541
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/eclipse/californium/scandium/dtls/Finished;-><init>(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)V

    return-object v0

    .line 1539
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "master secret not available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFlight()Lorg/eclipse/californium/scandium/dtls/DTLSFlight;
    .locals 4

    .line 1720
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->flightNumber:I

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;-><init>(Lorg/eclipse/californium/scandium/dtls/DTLSContext;ILjava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 2513
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    const/4 v0, 0x0

    .line 2514
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    .line 2515
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 2516
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    .line 2517
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteKey:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 2518
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteKey:Ljavax/crypto/SecretKey;

    .line 2519
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteMACKey:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 2520
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteMACKey:Ljavax/crypto/SecretKey;

    .line 2521
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 2522
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    .line 2523
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteKey:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 2524
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteKey:Ljavax/crypto/SecretKey;

    .line 2525
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteMACKey:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 2526
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteMACKey:Ljavax/crypto/SecretKey;

    .line 2527
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 2528
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    const/4 v0, 0x1

    .line 2529
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->destroyed:Z

    return-void
.end method

.method protected abstract doProcessMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation
.end method

.method protected ensureUndestroyed()V
    .locals 3

    .line 2543
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->destroyed:Z

    if-eqz v0, :cond_2

    .line 2544
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed:Z

    if-nez v0, :cond_1

    .line 2546
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->contextEstablished:Z

    if-eqz v0, :cond_0

    .line 2547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "secrets destroyed after success!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2549
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "secrets destroyed ???"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2545
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    const-string v2, "secrets destroyed after failure!"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void
.end method

.method protected final expectChangeCipherSpecMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 2424
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->changeCipherSuiteMessageExpected:Z

    return-void
.end method

.method protected expectEcc()V
    .locals 1

    const/4 v0, 0x1

    .line 2435
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->eccExpected:Z

    return-void
.end method

.method protected expectMessage(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->expectedStates:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    const-string v1, "Cannot process "

    if-eqz v0, :cond_5

    .line 1035
    array-length v2, v0

    if-nez v2, :cond_0

    return-void

    .line 1039
    :cond_0
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 1046
    aget-object v0, v0, v2

    .line 1047
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->expect(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1048
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1049
    iget v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->expectedStates:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    add-int/2addr v4, v3

    .line 1050
    aget-object v4, v6, v4

    .line 1051
    invoke-virtual {v4, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->expect(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1052
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    move v2, v3

    :cond_1
    if-nez v2, :cond_3

    .line 1061
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;

    if-eqz v2, :cond_2

    .line 1062
    invoke-virtual {v2, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->contains(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string v5, "Cannot process {} message from itself [{}]!"

    invoke-interface {v2, v5, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1066
    :cond_2
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const-string v3, "Cannot process {} message from peer [{}], {} expected!"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    :goto_0
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 1070
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " handshake message, "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expected!"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v3

    :cond_3
    return-void

    .line 1040
    :cond_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string v4, "Cannot process {} message from peer [{}], no more expected!"

    invoke-interface {v0, v4, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1042
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 1043
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " handshake message, no more expected!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v2

    .line 1029
    :cond_5
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    const-string v4, "Cannot process {} message from peer [{}], not expected!"

    invoke-interface {v0, v4, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1031
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 1032
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " handshake message, not expected!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v2
.end method

.method protected generateMasterSecretSeed()[B
    .locals 8

    .line 1468
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1469
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 1471
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 1472
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1473
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v6

    const-string v7, "  [{}] - {}"

    invoke-interface {v4, v7, v1, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1474
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->CLIENT_KEY_EXCHANGE:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    if-ne v1, v3, :cond_0

    .line 1475
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v5

    goto :goto_0

    .line 1478
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client key exchange missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    invoke-static {v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;->concatenate(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)[B

    move-result-object v0

    return-object v0
.end method

.method public getClientRandom()Lorg/eclipse/californium/scandium/dtls/Random;
    .locals 1

    .line 1761
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    return-object v0
.end method

.method public final getConnection()Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 1

    .line 1709
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    return-object v0
.end method

.method public final getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 1

    .line 1686
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    return-object v0
.end method

.method public getFailureCause()Ljava/lang/Throwable;
    .locals 1

    .line 2365
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected final getHandshakeMessageDigest()Ljava/security/MessageDigest;
    .locals 7

    .line 1328
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 1330
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 1331
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1332
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v3

    const-string v6, "  [{}] - {}"

    invoke-interface {v4, v6, v5, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final getNextReceiveMessageSequenceNumber()I
    .locals 1

    .line 1780
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextReceiveMessageSequence:I

    return v0
.end method

.method getParameter()Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;
    .locals 3

    .line 1654
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 1655
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getKeyExchange()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->receiveCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    return-object v1
.end method

.method public final getPeerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1700
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peer:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getReadConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 1744
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->useConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    return-object v0

    .line 1747
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->supportsConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1749
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->EMPTY:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;
    .locals 1

    .line 1667
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sniEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getServerRandom()Lorg/eclipse/californium/scandium/dtls/Random;
    .locals 1

    .line 1770
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverRandom:Lorg/eclipse/californium/scandium/dtls/Random;

    return-object v0
.end method

.method public final getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 1

    .line 1676
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    return-object v0
.end method

.method public final handshakeAborted(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2274
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeAborted:Z

    .line 2275
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final handshakeCompleted()V
    .locals 3

    .line 2212
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeCompleted:Z

    if-nez v0, :cond_2

    .line 2213
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timeoutLastFlight:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2214
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 2216
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeCompleted:Z

    .line 2217
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->completePendingFlight()V

    .line 2218
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 2219
    invoke-interface {v1, p0}, Lorg/eclipse/californium/scandium/dtls/SessionListener;->handshakeCompleted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    goto :goto_0

    .line 2221
    :cond_1
    invoke-static {p0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 2222
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v2, "handshake completed {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final handshakeFailed(Ljava/lang/Throwable;)V
    .locals 3

    .line 2242
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2243
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    .line 2245
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    if-ne v0, p1, :cond_2

    .line 2246
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v2, "handshake failed {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2247
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed:Z

    .line 2248
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->completePendingFlight()V

    .line 2249
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 2250
    invoke-interface {v1, p0, p1}, Lorg/eclipse/californium/scandium/dtls/SessionListener;->handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2252
    :cond_1
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 2253
    invoke-static {p0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    :cond_2
    return-void
.end method

.method public final handshakeFlightRetransmitted(I)V
    .locals 2

    .line 2402
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 2403
    invoke-interface {v1, p0, p1}, Lorg/eclipse/californium/scandium/dtls/SessionListener;->handshakeFlightRetransmitted(Lorg/eclipse/californium/scandium/dtls/Handshaker;I)V

    goto :goto_0

    .line 2405
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/RawData;

    .line 2406
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/elements/RawData;->onDtlsRetransmission(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final handshakeStarted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 2179
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v2, "handshake started {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2180
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 2181
    invoke-interface {v1, p0}, Lorg/eclipse/californium/scandium/dtls/SessionListener;->handshakeStarted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasContextEstablished()Z
    .locals 1

    .line 2289
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->contextEstablished:Z

    return v0
.end method

.method public final hasMasterSecret()Z
    .locals 1

    .line 1567
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasPendingApiCall()Z
    .locals 1

    .line 1296
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerificationPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pskRequestPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isChangeCipherSpecMessageExpected()Z
    .locals 1

    .line 2417
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->changeCipherSuiteMessageExpected:Z

    return v0
.end method

.method protected abstract isClient()Z
.end method

.method public isDestroyed()Z
    .locals 1

    .line 2534
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->destroyed:Z

    return v0
.end method

.method protected isExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)Z
    .locals 1

    .line 1002
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->expectedStates:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isExpired()Z
    .locals 4

    .line 2331
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->contextEstablished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nanosExpireTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInboundMessageProcessed()Z
    .locals 1

    .line 746
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPskRequestPending()Z
    .locals 1

    .line 2341
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pskRequestPending:Z

    return v0
.end method

.method public isRemovingConnection()Z
    .locals 1

    .line 2354
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeAborted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processAsyncHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1103
    instance-of v0, p1, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    if-eqz v0, :cond_0

    .line 1104
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskSecretResult;)V

    goto :goto_0

    .line 1105
    :cond_0
    instance-of v0, p1, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    if-eqz v0, :cond_1

    .line 1106
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateVerificationResult(Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;)V

    goto :goto_0

    .line 1107
    :cond_1
    instance-of v0, p1, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    if-eqz v0, :cond_2

    .line 1108
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateIdentityResult(Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;)V

    .line 1110
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->changeCipherSuiteMessageExpected:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1111
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processNextMessages(Lorg/eclipse/californium/scandium/dtls/Record;)V

    :cond_3
    return-void
.end method

.method protected abstract processCertificateIdentityAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation
.end method

.method protected processCertificateIdentityResult(Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1248
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityPending:Z

    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ensureUndestroyed()V

    const/4 v0, 0x0

    .line 1252
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityPending:Z

    .line 1253
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Process result of certificate identity."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->privateKey:Ljava/security/PrivateKey;

    .line 1255
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->publicKey:Ljava/security/PublicKey;

    .line 1256
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;->getCertificateChain()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateChain:Ljava/util/List;

    const/4 p1, 0x1

    .line 1257
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityAvailable:Z

    .line 1258
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateIdentityAvailable()V

    return-void

    .line 1249
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificate identity not pending!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processCertificateVerificationResult(Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1200
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerificationPending:Z

    if-eqz v0, :cond_5

    .line 1203
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ensureUndestroyed()V

    const/4 v0, 0x0

    .line 1204
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerificationPending:Z

    .line 1205
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Process result of certificate verification."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getCertificatePath()Ljava/security/cert/CertPath;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1207
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertificateVerified:Z

    .line 1208
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getCertificatePath()Ljava/security/cert/CertPath;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertPath:Ljava/security/cert/CertPath;

    .line 1209
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersSignatureVerified:Z

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/elements/auth/X509CertPath;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertPath:Ljava/security/cert/CertPath;

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setPeerIdentity(Ljava/security/Principal;)V

    .line 1212
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setCustomArgument(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    .line 1213
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateVerified()V

    goto :goto_0

    .line 1214
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1215
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertificateVerified:Z

    .line 1216
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersSignatureVerified:Z

    if-eqz v0, :cond_2

    .line 1217
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersPublicKey:Ljava/security/PublicKey;

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setPeerIdentity(Ljava/security/Principal;)V

    .line 1219
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setCustomArgument(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    .line 1220
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateVerified()V

    :goto_0
    return-void

    .line 1221
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getException()Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1222
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;->getException()Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    move-result-object p1

    throw p1

    .line 1224
    :cond_4
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 1225
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Bad Certificate"

    invoke-direct {v0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 1201
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificate verification not pending!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract processCertificateVerified()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation
.end method

.method protected abstract processMasterSecret()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation
.end method

.method public final processMessage(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v0

    .line 769
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v0, v1, :cond_2

    .line 774
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->flightSendNanos:J

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getReceiveNanos()J

    move-result-wide v7

    sub-long/2addr v0, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    .line 776
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "Discarding {} message received from peer [{}] before last flight was sent:{}{}"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->inboundMessageBuffer:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;->getNextRecord(Lorg/eclipse/californium/scandium/dtls/Record;)Lorg/eclipse/californium/scandium/dtls/Record;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 782
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processNextMessages(Lorg/eclipse/californium/scandium/dtls/Record;)V

    :cond_1
    return-void

    .line 770
    :cond_2
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    aput-object p1, v6, v2

    const-string v2, "Discarding {} message with wrong epoch received from peer [{}]:{}{}"

    invoke-interface {v1, v2, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing record with wrong epoch! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected processPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskSecretResult;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1125
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pskRequestPending:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 1128
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pskRequestPending:Z

    const/4 v1, 0x0

    .line 1130
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ensureUndestroyed()V

    .line 1131
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    .line 1132
    iget-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sniEnabled:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getHostName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 1133
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getPskPublicInformation()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object v4

    .line 1134
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    if-eqz v3, :cond_1

    .line 1137
    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v9, "client [{}] uses PSK identity [{}] for server [{}]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v11, v10, v0

    aput-object v4, v10, v7

    aput-object v3, v10, v6

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1140
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "client [{}] uses PSK identity [{}]"

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    invoke-interface {v0, v6, v7, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1143
    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sniEnabled:Z

    if-eqz v0, :cond_2

    .line 1144
    new-instance v0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->getPublicInfoAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1146
    :cond_2
    new-instance v0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;->getPublicInfoAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(Ljava/lang/String;)V

    .line 1148
    :goto_2
    invoke-virtual {v2, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setPeerIdentity(Ljava/security/Principal;)V

    const-string v0, "PSK"

    .line 1149
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1150
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v0

    .line 1151
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    invoke-static {v3, v5}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->generatePremasterSecretFromPSK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 1153
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecretSeed:[B

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v2

    invoke-static {v0, v3, v4, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->generateMasterSecret(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1155
    invoke-static {v3}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 1156
    invoke-static {v5}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    goto :goto_3

    :cond_3
    move-object v0, v5

    .line 1159
    :goto_3
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setCustomArgument(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    .line 1160
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->applyMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 1161
    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 1162
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processMasterSecret()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 1177
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    return-void

    .line 1164
    :cond_4
    :try_start_1
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v5, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNKNOWN_PSK_IDENTITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v2, v5}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    if-eqz v3, :cond_5

    .line 1166
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v5, "No pre-shared key found for [virtual host: %s, identity: %s]"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v2

    .line 1171
    :cond_5
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v3, "No pre-shared key found for [identity: %s]"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 1176
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 1177
    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    throw p1

    .line 1126
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "psk secret not pending!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected reassembleFragment(Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    const-string v2, "Processing {} message fragment ..."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1616
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageLength()I

    move-result v0

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxFragmentedHandshakeMessageLength:I

    if-gt v0, v1, :cond_3

    .line 1621
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageSeq()I

    move-result v0

    .line 1622
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    if-nez v1, :cond_0

    .line 1623
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    goto :goto_0

    .line 1625
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageSeq()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1629
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->add(Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;)V

    .line 1631
    :goto_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->isComplete()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1632
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    .line 1633
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Successfully re-assembled {} message"

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1634
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    return-object p1

    :cond_1
    return-object v0

    .line 1626
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current reassemble message has different seqn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->reassembledMessage:Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/ReassemblingHandshakeMessage;->getMessageSeq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1617
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragmented message length exceeded ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;->getMessageLength()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxFragmentedHandshakeMessageLength:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1638
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
.end method

.method public final removeSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2169
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sessionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestCertificateIdentity(Ljava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x1

    .line 2494
    iput-boolean v1, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityPending:Z

    .line 2496
    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    if-nez v2, :cond_0

    .line 2497
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    iget-object v3, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    goto :goto_0

    .line 2499
    :cond_0
    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Start certificate identity."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 2500
    iget-object v4, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateIdentityProvider:Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;

    iget-object v2, v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v6

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface/range {v4 .. v11}, Lorg/eclipse/californium/scandium/dtls/x509/CertificateProvider;->requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 2504
    invoke-virtual {p0, v2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateIdentityResult(Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;)V

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method protected requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1500
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 1501
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v3

    .line 1502
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getPseudoRandomFunctionMacName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    .line 1503
    iput-boolean v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pskRequestPending:Z

    .line 1504
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecretSeed:[B

    .line 1505
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherSecret:Ljavax/crypto/SecretKey;

    .line 1506
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->advancedPskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {p3}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v2

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecretSeed:[B

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->useExtendedMasterSecret()Z

    move-result v8

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1509
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processPskSecretResult(Lorg/eclipse/californium/scandium/dtls/PskSecretResult;)V

    :cond_0
    return-void

    .line 1498
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "seed must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetProbing()V
    .locals 0

    return-void
.end method

.method protected resumeMasterSecret()V
    .locals 1

    .line 1383
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ensureUndestroyed()V

    .line 1384
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    .line 1385
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 12

    const-string v0, " failed!"

    const-string v1, "handshake flight "

    .line 1919
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->completePendingFlight()V

    .line 1921
    :try_start_0
    iget v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionTimeout:I

    .line 1922
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmissionRandomFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 1924
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentRandom()Ljava/util/Random;

    move-result-object v4

    int-to-float v5, v2

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1926
    :cond_0
    iget-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->eccExpected:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1927
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->additionalTimeoutForEcc:I

    add-int/2addr v2, v3

    .line 1928
    iput-boolean v4, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->eccExpected:Z

    .line 1930
    :cond_1
    iget v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->maxRetransmissionTimeout:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1931
    invoke-virtual {p1, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->setTimeout(I)V

    .line 1932
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->flightSendNanos:J

    .line 1933
    iget-wide v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nanosExpireTimeout:J

    iget-wide v7, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->flightSendNanos:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nanosExpireTime:J

    .line 1934
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    iget-boolean v5, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->ipv6:Z

    invoke-interface {v3, v5}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->getMaxDatagramSize(Z)I

    move-result v3

    .line 1935
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getEffectiveFragmentLimit()I

    move-result v8

    .line 1936
    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiHandshakeMessagesRecord:Ljava/lang/Boolean;

    iget-object v10, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useMultiRecordMessages:Ljava/lang/Boolean;

    const/4 v11, 0x0

    move-object v6, p1

    move v7, v3

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getDatagrams(IILjava/lang/Boolean;Ljava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v5

    .line 1938
    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Sending flight of {} message(s) to peer [{}] using {} datagram(s) of max. {} bytes and {} ms timeout."

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getNumberOfMessages()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->peerToLog:Ljava/lang/Object;

    aput-object v9, v8, v4

    const/4 v4, 0x2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    const/4 v3, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->recordLayer:Lorg/eclipse/californium/scandium/dtls/RecordLayer;

    invoke-interface {v2, v5}, Lorg/eclipse/californium/scandium/dtls/RecordLayer;->sendFlight(Ljava/util/List;)V

    .line 1942
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->pendingFlight:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1943
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->isRetransmissionNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1944
    new-instance v2, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutPeerTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/Handshaker$1;)V

    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmitFlight:Ljava/lang/Runnable;

    .line 1945
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->retransmitFlight:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->scheduleRetransmission(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 1947
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getEffectiveMaxMessageSize()I

    move-result v2

    if-lez v2, :cond_3

    .line 1949
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v3, v2}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setEffectiveMaxMessageSize(I)V
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1954
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1952
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->getFlightNumber()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public sendLastFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V
    .locals 5

    .line 1907
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/californium/scandium/dtls/Handshaker$TimeoutCompletedTask;-><init>(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/Handshaker$1;)V

    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nanosExpireTimeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->timeoutLastFlight:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 1908
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->setRetransmissionNeeded(Z)V

    .line 1909
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendFlight(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;)V

    return-void
.end method

.method protected final setCurrentReadState()V
    .locals 4

    .line 1514
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteMACKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->createReadState(Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)V

    goto :goto_0

    .line 1517
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteMACKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->createReadState(Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)V

    :goto_0
    return-void
.end method

.method protected final setCurrentWriteState()V
    .locals 4

    .line 1522
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->clientWriteMACKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->createWriteState(Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)V

    goto :goto_0

    .line 1525
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteIV:Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->serverWriteMACKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->createWriteState(Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;Ljavax/crypto/SecretKey;)V

    :goto_0
    return-void
.end method

.method protected setCustomArgument(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 0

    .line 1278
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;->getCustomArgument()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1280
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->customArgument:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected setExpectedStates([Lorg/eclipse/californium/scandium/dtls/HandshakeState;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->expectedStates:[Lorg/eclipse/californium/scandium/dtls/HandshakeState;

    const/4 p1, 0x0

    .line 1017
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesIndex:I

    const/4 p1, 0x1

    .line 1018
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->statesChanged:Z

    return-void
.end method

.method public setFailureCause(Ljava/lang/Throwable;)V
    .locals 0

    .line 2380
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->completePendingFlight()V

    .line 2381
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public setGenerateClusterMacKeys(Z)V
    .locals 0

    .line 2392
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->generateClusterMacKeys:Z

    return-void
.end method

.method protected setOtherPeersSignatureVerified()Z
    .locals 3

    const/4 v0, 0x1

    .line 1310
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersSignatureVerified:Z

    .line 1311
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertificateVerified:Z

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertPath:Ljava/security/cert/CertPath;

    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/elements/auth/X509CertPath;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertPath:Ljava/security/cert/CertPath;

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/auth/X509CertPath;-><init>(Ljava/security/cert/CertPath;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setPeerIdentity(Ljava/security/Principal;)V

    goto :goto_0

    .line 1314
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersPublicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 1315
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersPublicKey:Ljava/security/PublicKey;

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->setPeerIdentity(Ljava/security/Principal;)V

    .line 1318
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersCertificateVerified:Z

    return v0
.end method

.method public supportsConnectionId()Z
    .locals 1

    .line 1732
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->supportsConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Z

    move-result v0

    return v0
.end method

.method public takeDeferredApplicationData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/RawData;",
            ">;"
        }
    .end annotation

    .line 1852
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1853
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public takeDeferredApplicationData(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 1

    .line 1881
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->deferredApplicationData:Ljava/util/List;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->takeDeferredApplicationData()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public takeDeferredRecordsOfNextEpoch()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/Record;",
            ">;"
        }
    .end annotation

    .line 1863
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1864
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/scandium/dtls/Record;

    .line 1865
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->removeDeferredProcessedRecord(Lorg/eclipse/californium/scandium/dtls/Record;Ljava/util/Collection;)V

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1868
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "{} left deferred records"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1869
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->nextEpochDeferredRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    return-object v0
.end method

.method public verifyCertificate(Lorg/eclipse/californium/scandium/dtls/CertificateMessage;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 2457
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    if-eqz v0, :cond_1

    .line 2462
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Start certificate verification."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2463
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerificationPending:Z

    .line 2464
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->otherPeersPublicKey:Ljava/security/PublicKey;

    .line 2466
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->certificateVerifier:Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getServerNames()Lorg/eclipse/californium/scandium/util/ServerNames;

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    iget-boolean v8, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->useTruncatedCertificatePathForVerification:Z

    move v7, p2

    move-object v9, p1

    invoke-interface/range {v2 .. v9}, Lorg/eclipse/californium/scandium/dtls/x509/NewAdvancedCertificateVerifier;->verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2470
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processCertificateVerificationResult(Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;)V

    :cond_0
    return-void

    .line 2458
    :cond_1
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Certificate validation failed: no verifier available!"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2459
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 2460
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v0, "Trust is not possible!"

    invoke-direct {p2, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2
.end method

.method protected final verifyFinished(Lorg/eclipse/californium/scandium/dtls/Finished;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getCipherSuite()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getThreadLocalPseudoRandomFunctionMac()Ljavax/crypto/Mac;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->masterSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->isClient()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)V

    return-void

    .line 1555
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "master secret not available!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/ChangeCipherSpecMessage;)V
    .locals 1

    .line 1597
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteEpoch()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->addDtlsMessage(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    return-void
.end method

.method protected final wrapMessage(Lorg/eclipse/californium/scandium/dtls/DTLSFlight;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 2

    .line 1580
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendMessageSequence:I

    invoke-virtual {p2, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->setMessageSeq(I)V

    .line 1581
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendMessageSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->sendMessageSequence:I

    .line 1582
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->context:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteEpoch()I

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeMessages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    :cond_0
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/californium/scandium/dtls/DTLSFlight;->addDtlsMessage(ILorg/eclipse/californium/scandium/dtls/DTLSMessage;)V

    return-void
.end method
