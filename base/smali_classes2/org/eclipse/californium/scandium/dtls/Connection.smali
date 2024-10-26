.class public final Lorg/eclipse/californium/scandium/dtls/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;,
        Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final LOGGER_OWNER:Lorg/slf4j/Logger;

.field private static final VERSION:I = 0x1


# instance fields
.field private cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field private volatile connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

.field private volatile establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

.field private lastMessageNanos:J

.field private lastPeerAddressNanos:J

.field private final ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/eclipse/californium/scandium/dtls/Handshaker;",
            ">;"
        }
    .end annotation
.end field

.field private peerAddress:Ljava/net/InetSocketAddress;

.field private volatile resumptionRequired:Z

.field private rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

.field private router:Ljava/net/InetSocketAddress;

.field private serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

.field private final sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

.field private volatile startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-class v0, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/Connection;->LOGGER:Lorg/slf4j/Logger;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/Connection;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/Connection;->LOGGER_OWNER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;-><init>(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection$1;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    .line 131
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    .line 132
    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastPeerAddressNanos:J

    .line 133
    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Peer address must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;J)V
    .locals 5

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;-><init>(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection$1;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    .line 1000
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    const/16 v0, 0x40

    .line 1001
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v3

    add-long/2addr v3, p2

    iput-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    const/16 v0, 0x8

    .line 1002
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1006
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-direct {v3, v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    iput-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 1007
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readAddress(Lorg/eclipse/californium/elements/util/DataStreamReader;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    .line 1008
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1009
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;JLorg/eclipse/californium/scandium/dtls/Connection$1;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    .line 1011
    :cond_1
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    .line 1012
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz p2, :cond_3

    .line 1015
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result p2

    if-ne p2, v2, :cond_2

    .line 1016
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-virtual {p2, p3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->setReadConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V

    :cond_2
    const-string p2, "connection"

    .line 1018
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/DatagramReader;->assertFinished(Ljava/lang/String;)V

    return-void

    .line 1013
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DTLS Context must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1004
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CID must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/Connection;)Lorg/eclipse/californium/scandium/ConnectionListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    return-object p0
.end method

.method static synthetic access$1000()Lorg/slf4j/Logger;
    .locals 1

    .line 74
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Connection;->LOGGER_OWNER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;)Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    return-object p1
.end method

.method static synthetic access$500(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$600(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static synthetic access$700()Lorg/slf4j/Logger;
    .locals 1

    .line 74
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/Connection;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$802(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    return-object p1
.end method

.method static synthetic access$900(Lorg/eclipse/californium/scandium/dtls/Connection;)Lorg/eclipse/californium/elements/util/SerialExecutor;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

    return-object p0
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DataStreamReader;J)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 982
    invoke-static {p0, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I

    move-result v0

    if-lez v0, :cond_0

    .line 984
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 985
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/Connection;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 4

    .line 631
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markCloseNotify(IJ)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 771
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 774
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Connection;

    .line 775
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-static {v2, v3}, Lorg/eclipse/californium/elements/util/Bytes;->equals(Lorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 778
    :cond_3
    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    iget-boolean v3, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 781
    :cond_4
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    iget-wide v4, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    .line 784
    :cond_5
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 787
    :cond_6
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 790
    :cond_7
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 793
    :cond_8
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public equalsPeerAddress(Ljava/net/InetSocketAddress;)Z
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 331
    :cond_1
    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public expectCid()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->useConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-object v0
.end method

.method public getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 2

    .line 579
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-nez v0, :cond_0

    .line 581
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/scandium/dtls/Handshaker;

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDtlsContext(I)Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 2

    .line 554
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadEpoch()I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    return-object v0
.end method

.method public getEstablishedSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEstablishedSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

    return-object v0
.end method

.method public getLastMessageNanos()J
    .locals 2

    .line 737
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    return-wide v0
.end method

.method public getLastPeerAddressNanos()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastPeerAddressNanos:J

    return-wide v0
.end method

.method public getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/Handshaker;

    return-object v0
.end method

.method public getPeerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getReadContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/elements/DtlsEndpointContext;
    .locals 3

    .line 387
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->addReadEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    .line 391
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_VIA_ROUTER:Lorg/eclipse/californium/elements/Definition;

    const-string v1, "dtls-cid-router"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object p2, v0

    .line 397
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 398
    new-instance v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    invoke-direct {v1, p2, v2, v0, p1}, Lorg/eclipse/californium/elements/DtlsEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-object v1

    .line 388
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DTLS context must be established!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRootCauseAlert()Lorg/eclipse/californium/scandium/dtls/AlertMessage;
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    return-object v0
.end method

.method public getRouter()Ljava/net/InetSocketAddress;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSessionListener()Lorg/eclipse/californium/scandium/dtls/SessionListener;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->sessionListener:Lorg/eclipse/californium/scandium/dtls/SessionListener;

    return-object v0
.end method

.method public getStartNanos()Ljava/lang/Long;
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    if-eqz v0, :cond_0

    .line 487
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->access$200(Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriteContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/DtlsEndpointContext;
    .locals 4

    .line 366
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->addWriteEndpointContext(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    .line 370
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_VIA_ROUTER:Lorg/eclipse/californium/elements/Definition;

    const-string v1, "dtls-cid-router"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v0

    .line 374
    new-instance v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/eclipse/californium/elements/DtlsEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-object v1

    .line 367
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DTLS context must be established!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasEstablishedDtlsContext()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOngoingHandshake()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->ongoingHandshake:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 754
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 755
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 756
    iget-wide v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 757
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 758
    iget-boolean v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v3, 0x4d5

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 759
    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 760
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoResumptionRequired(Ljava/lang/Long;)Z
    .locals 7

    .line 709
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    .line 710
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    .line 711
    iget-wide v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 713
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->setResumptionRequired(Z)V

    .line 716
    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->isMarkedAsClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExecuting()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResumptionRequired()Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    return v0
.end method

.method public isStartedByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 510
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->access$300(Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;Lorg/eclipse/californium/scandium/dtls/ClientHello;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 508
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "client hello must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markRecordAsRead(Lorg/eclipse/californium/scandium/dtls/Record;)Z
    .locals 4

    .line 647
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getEpoch()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->markRecordAsRead(IJ)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public refreshAutoResumptionTime()V
    .locals 2

    .line 727
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    return-void
.end method

.method public resetContext()V
    .locals 2

    .line 600
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/security/auth/Destroyable;)V

    const/4 v0, 0x0

    .line 604
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    const/4 v0, 0x0

    .line 605
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    .line 606
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->updateConnectionState()V

    return-void

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No established context to resume available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 255
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->updateConnectionState()V

    return-void
.end method

.method public setConnectorContext(Ljava/util/concurrent/Executor;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/dtls/Connection;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/elements/util/SerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

    .line 165
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-nez p2, :cond_0

    .line 167
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/SerialExecutor;->setExecutionListener(Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;)Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->serialExecutor:Lorg/eclipse/californium/elements/util/SerialExecutor;

    new-instance p2, Lorg/eclipse/californium/scandium/dtls/Connection$1;

    invoke-direct {p2, p0}, Lorg/eclipse/californium/scandium/dtls/Connection$1;-><init>(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/SerialExecutor;->setExecutionListener(Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;)Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;

    :goto_0
    return-object p0

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Executor already available!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResumptionRequired(Z)V
    .locals 0

    .line 747
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    return-void
.end method

.method public setRootCause(Lorg/eclipse/californium/scandium/dtls/AlertMessage;)Z
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    if-nez v0, :cond_0

    .line 682
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setRouter(Ljava/net/InetSocketAddress;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->router:Ljava/net/InetSocketAddress;

    .line 353
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->updateConnectionState()V

    :cond_1
    return-void
.end method

.method public startByClientHello(Lorg/eclipse/californium/scandium/dtls/ClientHello;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 531
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    goto :goto_0

    .line 533
    :cond_0
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    invoke-direct {v1, p1, v0}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;-><init>(Lorg/eclipse/californium/scandium/dtls/ClientHello;Lorg/eclipse/californium/scandium/dtls/Connection$1;)V

    iput-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dtls-con: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 805
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_3

    const-string v1, ", "

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v4, ", ongoing handshake "

    .line 809
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 811
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 813
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->isResumptionRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", resumption required"

    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 818
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->hasEstablishedDtlsContext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", session established "

    .line 819
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 821
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 822
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", is alive"

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateConnectionState()V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->connectionListener:Lorg/eclipse/californium/scandium/ConnectionListener;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p0}, Lorg/eclipse/californium/scandium/ConnectionListener;->updateExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    :cond_0
    return-void
.end method

.method public updatePeerAddress(Ljava/net/InetSocketAddress;)V
    .locals 3

    .line 295
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->equalsPeerAddress(Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 296
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Address change without established dtls context is not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_1
    :goto_0
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastPeerAddressNanos:J

    .line 300
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    .line 301
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    if-nez p1, :cond_3

    .line 303
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 305
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->getDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    if-eq v1, v2, :cond_4

    .line 308
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " address reused during handshake!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/Connection;->updateConnectionState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)Z
    .locals 7

    .line 951
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->isMarkedAsClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->rootCause:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    const/4 v2, 0x1

    .line 954
    invoke-static {p1, v2, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v3

    .line 955
    iget-boolean v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->resumptionRequired:Z

    invoke-virtual {p1, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 956
    iget-wide v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->lastMessageNanos:J

    const/16 v6, 0x40

    invoke-virtual {p1, v4, v5, v6}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 957
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    const/16 v5, 0x8

    invoke-virtual {p1, v4, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    .line 958
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->peerAddress:Ljava/net/InetSocketAddress;

    invoke-static {p1, v4}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/net/InetSocketAddress;)V

    .line 959
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->startingHelloClient:Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    if-nez v4, :cond_1

    .line 961
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    goto :goto_0

    .line 963
    :cond_1
    invoke-virtual {p1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 964
    invoke-static {v4, p1}, Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;->access$1200(Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 966
    :goto_0
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v4, p1}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)Z

    .line 967
    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/Connection;->establishedDtlsContext:Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    invoke-virtual {v5}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getReadConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 968
    invoke-static {p1, v3, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    return v2

    :cond_3
    :goto_1
    return v1
.end method
