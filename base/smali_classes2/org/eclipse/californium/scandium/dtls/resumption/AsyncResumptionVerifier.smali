.class public Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;
.super Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;
.source "AsyncResumptionVerifier.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;


# instance fields
.field private volatile delayMillis:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->LOGGER:Lorg/slf4j/Logger;

    .line 50
    new-instance v0, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;

    const-string v1, "AsyncResumptionTimer#"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    .line 77
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;-><init>(Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    .line 91
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$001(Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;)Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    return-object p0
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    return v0
.end method

.method public setDelay(I)Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;
    .locals 2

    .line 103
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    if-lez p1, :cond_0

    .line 105
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Asynchronous delayed resumption verifier {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 107
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->LOGGER:Lorg/slf4j/Logger;

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Synchronous delayed resumption verifier {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Synchronous resumption verifier."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handshake result handler already set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;
    .locals 2

    .line 136
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    if-gtz v0, :cond_1

    .line 137
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    if-gez v0, :cond_0

    .line 139
    :try_start_0
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/resumption/ConnectionStoreResumptionVerifier;->verifyResumptionRequest(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;

    move-result-object p1

    return-object p1

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier$1;-><init>(Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/resumption/AsyncResumptionVerifier;->delayMillis:I

    int-to-long p1, p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x0

    return-object p1
.end method
