.class public Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;
.super Ljava/lang/Object;
.source "InMemoryConnectionStore.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x249f0

.field private static final DEFAULT_EXPIRATION_THRESHOLD:J = 0x1fa40L

.field private static final DEFAULT_LARGE_EXTRA_CID_LENGTH:I = 0x3

.field private static final DEFAULT_SMALL_EXTRA_CID_LENGTH:I = 0x2

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static SINGLE_SESSION_STORE:Z


# instance fields
.field private connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

.field private connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

.field protected final connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache<",
            "Lorg/eclipse/californium/scandium/dtls/ConnectionId;",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected final connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/net/InetSocketAddress;",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected final connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/eclipse/californium/scandium/dtls/SessionId;",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

.field protected tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-class v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    .line 111
    sput-boolean v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->SINGLE_SESSION_STORE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0x249f0

    const-wide/32 v1, 0x1fa40

    const/4 v3, 0x0

    .line 132
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;-><init>(IJLorg/eclipse/californium/scandium/dtls/SessionStore;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;-><init>(IJLorg/eclipse/californium/scandium/dtls/SessionStore;)V

    return-void
.end method

.method public constructor <init>(IJLorg/eclipse/californium/scandium/dtls/SessionStore;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 125
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    .line 169
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;-><init>(IJ)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    .line 170
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->setEvictingOnReadAccess(Z)V

    .line 171
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->setUpdatingOnReadAccess(Z)V

    .line 172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;

    .line 173
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    .line 174
    sget-boolean v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->SINGLE_SESSION_STORE:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 175
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    .line 177
    :cond_0
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    .line 180
    :goto_0
    iget-object p4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;-><init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;)V

    invoke-virtual {p4, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->addEvictionListener(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener;)V

    .line 210
    sget-object p4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Created new InMemoryConnectionStore [capacity: {}, connection expiration threshold: {}s]"

    invoke-interface {p4, p3, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/SessionStore;)V
    .locals 3

    const v0, 0x249f0

    const-wide/32 v1, 0x1fa40

    .line 143
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;-><init>(IJLorg/eclipse/californium/scandium/dtls/SessionStore;)V

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->removeByAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->removeByEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;)Lorg/eclipse/californium/scandium/ConnectionListener;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    return-object p0
.end method

.method private addToAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 10

    .line 557
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 559
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/Connection;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 561
    new-instance v6, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;

    invoke-direct {v6, p0, v1, v0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;-><init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/net/InetSocketAddress;)V

    .line 575
    sget-object v7, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v9, v8, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    aput-object p1, v8, v3

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v8, v2

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    aput-object p1, v8, v5

    const-string p1, "{}connection: {} - {} added! {} removed from address."

    invoke-interface {v7, p1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object p1

    invoke-virtual {p1, v6}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 583
    :cond_1
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "{}connection: {} - {} added!"

    invoke-interface {v1, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    const-string v2, "{}connection: {} - missing address!"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private addToEstablishedConnections(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_1

    .line 593
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Connection;

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    .line 595
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;-><init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 602
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private findLocally(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 9

    if-eqz p1, :cond_4

    .line 424
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Connection;

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 432
    sget-object v6, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v4

    aput-object v4, v7, v3

    aput-object p1, v7, v2

    aput-object v1, v7, v5

    const-string p1, "{}connection {} changed session {}!={}!"

    invoke-interface {v6, p1, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_1
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v4

    aput-object v4, v5, v3

    aput-object p1, v5, v2

    const-string p1, "{}connection {} lost session {}!"

    invoke-interface {v1, p1, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->update(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    .line 422
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "DTLS Session ID must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private newConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 235
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-interface {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->createConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeByAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 2

    .line 543
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 546
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->updatePeerAddress(Ljava/net/InetSocketAddress;)V

    :cond_0
    return-void
.end method

.method private removeByEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeSessionFromStore(Lorg/eclipse/californium/scandium/dtls/SessionId;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SessionStore;->remove(Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 253
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->useConnectionId()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    goto :goto_1

    .line 254
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->getCapacity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, 0x7

    .line 255
    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    add-int/2addr p1, v0

    .line 257
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    :goto_1
    return-void

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection id generator already attached!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 613
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 614
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->clear()V

    .line 620
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 623
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public find(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 394
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 398
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {v1, p1}, Lorg/eclipse/californium/scandium/dtls/SessionStore;->get(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 401
    :goto_0
    monitor-enter p0

    .line 402
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->findLocally(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 404
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    if-nez v2, :cond_2

    .line 405
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 407
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;-><init>(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    .line 412
    monitor-exit p0

    return-object v0

    .line 415
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public declared-synchronized get(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 10

    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Connection;

    if-nez v0, :cond_0

    .line 464
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}connection: missing connection for {}!"

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_1

    .line 468
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "{}connection {} lost ip-address {}!"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-interface {v1, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v1, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 471
    sget-object v6, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "{}connection {} changed ip-address {}!={}!"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v9, v8, v4

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v8, v2

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v8, v5

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 7

    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Connection;

    if-nez v0, :cond_0

    .line 482
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}connection: missing connection for {}!"

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    if-nez v1, :cond_1

    .line 486
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}connection lost cid {}!"

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 488
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{}connection changed cid {}!={}!"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadConnections(Ljava/io/InputStream;J)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 697
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v2

    .line 698
    new-instance v0, Lorg/eclipse/californium/elements/util/DataStreamReader;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Lorg/eclipse/californium/elements/util/DataStreamReader;-><init>(Ljava/io/InputStream;)V

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_0
    const/4 v9, 0x3

    move-wide/from16 v11, p2

    .line 702
    :try_start_0
    invoke-static {v0, v11, v12}, Lorg/eclipse/californium/scandium/dtls/Connection;->fromReader(Lorg/eclipse/californium/elements/util/DataStreamReader;J)Lorg/eclipse/californium/scandium/dtls/Connection;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 703
    invoke-virtual {v13}, Lorg/eclipse/californium/scandium/dtls/Connection;->getLastMessageNanos()J

    move-result-wide v14

    sub-long v16, v14, v2

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_0

    .line 705
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v10, "{}read {} ts is after {} (future)"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v9, v4, v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v4, v16

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v19, 0x2

    aput-object v9, v4, v19

    invoke-interface {v8, v10, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    :cond_0
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "{}read {} ts, {}s"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v9, v10, v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v10, v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v14, v2, v14

    invoke-virtual {v9, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v14, 0x2

    aput-object v9, v10, v14

    invoke-interface {v4, v8, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    invoke-virtual {v1, v13}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->restore(Lorg/eclipse/californium/scandium/dtls/Connection;)Z

    add-int/lit8 v5, v5, 0x1

    .line 711
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v8

    sub-long v13, v8, v6

    .line 712
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v19, v2

    const-wide/16 v2, 0x2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    cmp-long v2, v13, v2

    if-lez v2, :cond_1

    .line 713
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{}read {} connections"

    iget-object v4, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v3, v4, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v6, v8

    :cond_1
    move-wide/from16 v2, v19

    goto/16 :goto_0

    :cond_2
    return v5

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 719
    :try_start_1
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{}reading failed after {} connections"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->clear()V

    .line 721
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->clear()V

    .line 725
    throw v0
.end method

.method public declared-synchronized markAllAsResumptionRequired()V
    .locals 5

    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 446
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isResumptionRequired()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 447
    invoke-virtual {v1, v2}, Lorg/eclipse/californium/scandium/dtls/Connection;->setResumptionRequired(Z)V

    .line 448
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{}connection: mark for resumption {}!"

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 451
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 280
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 283
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    if-eqz v1, :cond_1

    .line 288
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->newConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->setConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V

    goto :goto_0

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection ids exhausted!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection id generator must be attached before!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 295
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 298
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v2

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v3, v1, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 302
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v3, :cond_3

    .line 303
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{}connection: add {} (size {})"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v7, v0

    aput-object p1, v7, v4

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    new-instance v0, Ljava/lang/Throwable;

    const-string v5, "connection added!"

    invoke-direct {v0, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v6

    invoke-interface {v1, v3, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 306
    :cond_3
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "{}connection: add {} (size {})"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v6, v0

    aput-object v1, v6, v4

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-interface {v3, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :goto_1
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    if-eqz v2, :cond_4

    .line 310
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToEstablishedConnections(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :cond_4
    move v0, v4

    goto :goto_2

    .line 314
    :cond_5
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{}connection store is full! {} max. entries."

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->getCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 317
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 318
    invoke-interface {p1, v2}, Lorg/eclipse/californium/scandium/dtls/SessionStore;->put(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    :cond_6
    return v0

    :catchall_0
    move-exception p1

    .line 316
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 296
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection id already used! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection must have a none empty connection id!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is not executing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return v0
.end method

.method public putEstablishedSession(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 3

    .line 363
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1, p1}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionEstablished(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 371
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    invoke-direct {p0, v1, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToEstablishedConnections(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 375
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->sessionStore:Lorg/eclipse/californium/scandium/dtls/SessionStore;

    if-eqz p1, :cond_1

    .line 377
    invoke-interface {p1, v0}, Lorg/eclipse/californium/scandium/dtls/SessionStore;->put(Lorg/eclipse/californium/scandium/dtls/DTLSSession;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 375
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection has no established session!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized remainingCapacity()I
    .locals 6

    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->remainingCapacity()I

    move-result v0

    .line 456
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}connection: size {}, remaining {}!"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v5}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z
    .locals 12

    .line 497
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_6

    .line 501
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v4, :cond_3

    .line 502
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v4

    .line 503
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 504
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v9, "{}connection: remove {} (size {}, left jobs: {})"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v11, v10, v3

    aput-object p1, v10, v2

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v7

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "connection removed!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v2, v10, v5

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 506
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 507
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "{}connection: remove {} (size {})"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v7, v3

    aput-object p1, v7, v2

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-interface {v4, v5, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 509
    :cond_2
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v9, "{}connection: remove {} (size {}, left jobs: {})"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v10, v5, v3

    aput-object p1, v5, v2

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-interface {v8, v9, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 513
    :cond_3
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 514
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "{}connection: remove {} (size {})"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v9, v5, v3

    aput-object p1, v5, v2

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "connection removed!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v7

    invoke-interface {v4, v8, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 517
    :cond_4
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "{}connection: remove {} (size {})"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v7, v3

    aput-object p1, v7, v2

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-interface {v4, v5, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :goto_1
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->removeByAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 521
    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->removeByEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 522
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz v2, :cond_5

    .line 524
    invoke-interface {v2, p1}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionRemoved(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 527
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    .line 529
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_7

    .line 531
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->removeSessionFromStore(Lorg/eclipse/californium/scandium/dtls/SessionId;)V

    :cond_7
    return v1

    :catchall_0
    move-exception p1

    .line 529
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeFromEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 1

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->removeByEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection has no established session!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public restore(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
    .locals 9

    .line 734
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 737
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 739
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v1, v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 743
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getLastMessageNanos()J

    move-result-wide v3

    invoke-virtual {v2, v0, p1, v3, v4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 745
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    .line 746
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}connection: add {} (size {})"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v7, v4

    aput-object p1, v7, v3

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "connection added!"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v6

    invoke-interface {v0, v2, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 749
    :cond_0
    sget-object v2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "{}connection: add {} (size {})"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v6, v4

    aput-object v0, v6, v3

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-interface {v2, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    goto :goto_1

    .line 754
    :cond_1
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{}connection store is full! {} max. entries."

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v5}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->getCapacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v3, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v4

    .line 756
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 757
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->putEstablishedSession(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    .line 756
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 740
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection id already used! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection must have a none empty connection id!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 736
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection must have a connection id!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveConnections(Ljava/io/OutputStream;J)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 649
    iget-object v0, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->size()I

    move-result v0

    .line 650
    div-int/lit8 v2, v0, 0x14

    .line 652
    new-instance v3, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 653
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v4

    .line 656
    iget-object v6, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    monitor-enter v6

    .line 657
    :try_start_0
    iget-object v7, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v7}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->timestampedIterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v11, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 658
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 659
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    .line 660
    invoke-virtual {v13}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->getLastUpdate()J

    move-result-wide v14

    .line 661
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v17, v10

    move-wide/from16 v18, v11

    sub-long v10, v4, v14

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    cmp-long v8, v10, p2

    const/4 v12, 0x3

    const/16 v20, 0x1

    if-lez v8, :cond_0

    .line 663
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v13, "{}skip {} ts, {}s too quiet!"

    new-array v12, v12, [Ljava/lang/Object;

    move-wide/from16 v21, v4

    iget-object v4, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v12, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v20

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v12, v5

    invoke-interface {v8, v13, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, p1

    move/from16 v10, v17

    move-wide/from16 v11, v18

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_0
    move-wide/from16 v21, v4

    .line 665
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "{}write {} ts, {}s "

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v12, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v8, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v20

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v8, v11

    invoke-interface {v4, v5, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    invoke-virtual {v13}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v4, v3}, Lorg/eclipse/californium/scandium/dtls/Connection;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p1

    .line 667
    invoke-virtual {v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeTo(Ljava/io/OutputStream;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    .line 670
    invoke-virtual {v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->reset()V

    :goto_1
    const/16 v5, 0x64

    if-le v2, v5, :cond_2

    .line 672
    rem-int v5, v9, v2

    if-nez v5, :cond_2

    move/from16 v17, v20

    :cond_2
    if-eqz v17, :cond_3

    .line 676
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v10

    if-eqz v17, :cond_3

    sub-long v12, v10, v18

    .line 677
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x2

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-lez v5, :cond_3

    .line 678
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "{}written {} connections of {}"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v12, v15

    invoke-interface {v5, v8, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v11, v10

    move v10, v14

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    move/from16 v10, v17

    move-wide/from16 v11, v18

    :goto_2
    move-wide/from16 v4, v21

    goto/16 :goto_0

    :cond_4
    move-object/from16 v4, p1

    .line 685
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    invoke-static/range {p1 .. p1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeNoItem(Ljava/io/OutputStream;)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 688
    invoke-virtual {v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->close()V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->clear()V

    return v9

    :catchall_0
    move-exception v0

    .line 685
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setConnectionListener(Lorg/eclipse/californium/scandium/ConnectionListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    return-void
.end method

.method public declared-synchronized setTag(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;
    .locals 0

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->normalizeLoggingTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stop(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 630
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdownNow(Ljava/util/Collection;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 635
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/net/InetSocketAddress;)Z
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 329
    monitor-exit p0

    return v0

    .line 331
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connections:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;->update(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 332
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->refreshAutoResumptionTime()V

    if-nez p2, :cond_1

    .line 334
    sget-object p2, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "{}connection: {} updated usage!"

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->equalsPeerAddress(Ljava/net/InetSocketAddress;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 336
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 337
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_2

    .line 338
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "{}connection: {} updated, address changed from {} to {}!"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v3

    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "connection updated!"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v0, v8, v6

    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_2
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "{}connection: {} updated, address changed from {} to {}!"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v8, v6, v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 347
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByAddress:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->updatePeerAddress(Ljava/net/InetSocketAddress;)V

    .line 350
    :cond_3
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->updatePeerAddress(Ljava/net/InetSocketAddress;)V

    .line 351
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_4
    :goto_1
    monitor-exit p0

    return v4

    .line 355
    :cond_5
    :try_start_1
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "{}connection: {} - {} update failed!"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->tag:Ljava/lang/String;

    aput-object v6, v3, v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v1, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
