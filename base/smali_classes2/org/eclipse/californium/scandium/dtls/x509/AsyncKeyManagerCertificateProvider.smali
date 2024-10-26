.class public Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;
.super Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;
.source "AsyncKeyManagerCertificateProvider.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;


# instance fields
.field private volatile delayMillis:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-class v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    .line 54
    new-instance v0, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;

    sget-object v1, Lorg/eclipse/californium/elements/util/NamedThreadFactory;->SCANDIUM_THREAD_GROUP:Ljava/lang/ThreadGroup;

    const-string v2, "AsyncKeyManagerCertProvider#"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 64
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    .line 135
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    const/4 p1, 0x1

    .line 64
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    .line 118
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 64
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    .line 101
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public varargs constructor <init>(Ljavax/net/ssl/X509KeyManager;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;-><init>(Ljavax/net/ssl/X509KeyManager;[Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    const/4 p1, 0x1

    .line 64
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    .line 85
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$001(Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
    .locals 0

    .line 47
    invoke-super/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;)Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    return-object p0
.end method


# virtual methods
.method public getDelay()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    return v0
.end method

.method public requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
    .locals 12
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

    move-object v9, p0

    .line 181
    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    if-gtz v0, :cond_1

    .line 182
    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    if-gez v0, :cond_0

    .line 184
    :try_start_0
    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/x509/KeyManagerCertificateProvider;->requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    move-result-object v0

    return-object v0

    .line 191
    :cond_1
    iget-object v10, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider$1;-><init>(Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v11, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    return-object v0
.end method

.method public setDelay(I)Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;
    .locals 2

    .line 147
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->delayMillis:I

    if-lez p1, :cond_0

    .line 149
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Asynchronous delayed certificate provider {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 151
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Synchronous delayed certificate provider {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Synchronous certificate provider."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handshake result handler already set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncKeyManagerCertificateProvider;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
