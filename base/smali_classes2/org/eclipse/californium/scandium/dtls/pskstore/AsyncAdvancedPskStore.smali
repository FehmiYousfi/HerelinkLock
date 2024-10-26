.class public Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;
.super Ljava/lang/Object;
.source "AsyncAdvancedPskStore.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field protected static final MAC:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;


# instance fields
.field private volatile delayMillis:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile generateMasterSecret:Z

.field private final pskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

.field private volatile resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->LOGGER:Lorg/slf4j/Logger;

    .line 54
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$1;

    invoke-direct {v1}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->MAC:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    .line 66
    new-instance v0, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;

    sget-object v1, Lorg/eclipse/californium/elements/util/NamedThreadFactory;->SCANDIUM_THREAD_GROUP:Ljava/lang/ThreadGroup;

    const-string v2, "AsyncPskStoreTimer#"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/elements/util/DaemonThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    .line 102
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->pskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    .line 103
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->THREAD_FACTORY:Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->getSecretAsynchronous(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)V

    return-void
.end method

.method private getPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
    .locals 8

    .line 219
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->pskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    move-result-object p2

    .line 221
    iget-boolean p3, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->generateMasterSecret:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object p3

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PSK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 223
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, p0

    move-object v1, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->generateMasterSecret(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 224
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getSecret()Ljavax/crypto/SecretKey;

    move-result-object p4

    invoke-static {p4}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 225
    new-instance p4, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;->getPskPublicInformation()Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3}, Lorg/eclipse/californium/scandium/dtls/PskSecretResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljavax/crypto/SecretKey;)V

    return-object p4

    :cond_0
    return-object p2
.end method

.method private getSecretAsynchronous(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)V
    .locals 0

    .line 196
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->getPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    invoke-interface {p2, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;->apply(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method


# virtual methods
.method protected generateMasterSecret(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;
    .locals 1

    .line 232
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->MAC:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;->get(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;

    .line 233
    invoke-static {p3, p2}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->generatePremasterSecretFromPSK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 234
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalMac;->current()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    invoke-static {p1, p2, p4, p5}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->generateMasterSecret(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;[BZ)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 235
    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    return-object p1
.end method

.method public getDelay()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    return v0
.end method

.method public getIdentity(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->pskStore:Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;->getIdentity(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/scandium/util/ServerNames;)Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    move-result-object p1

    return-object p1
.end method

.method public hasEcdhePskSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
    .locals 12

    move-object v9, p0

    move-object/from16 v0, p6

    .line 159
    iget v1, v9, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    if-gtz v1, :cond_1

    .line 160
    iget v1, v9, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    if-gez v1, :cond_0

    .line 162
    :try_start_0
    iget v1, v9, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    :cond_0
    invoke-direct/range {p0 .. p7}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->getPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 169
    invoke-static/range {p5 .. p5}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 170
    iget-object v10, v9, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;-><init>(Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)V

    iget v0, v9, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v11, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    return-object v0
.end method

.method public setDelay(I)Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;
    .locals 2

    .line 127
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->delayMillis:I

    if-lez p1, :cond_0

    .line 129
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Asynchronous delayed PSK store {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 131
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->LOGGER:Lorg/slf4j/Logger;

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Synchronous delayed PSK store {}ms."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Synchronous PSK store."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setResultHandler(Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handshake result handler already set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->resultHandler:Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    return-void
.end method

.method public setSecretMode(Z)Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;
    .locals 0

    .line 114
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->generateMasterSecret:Z

    return-object p0
.end method

.method public shutdown()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
