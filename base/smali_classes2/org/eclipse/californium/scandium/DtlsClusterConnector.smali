.class public Lorg/eclipse/californium/scandium/DtlsClusterConnector;
.super Lorg/eclipse/californium/scandium/DTLSConnector;
.source "DtlsClusterConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;
    }
.end annotation


# static fields
.field protected static final CLUSTER_ADDRESS_LENGTH_OFFSET:I = 0x3

.field protected static final CLUSTER_ADDRESS_OFFSET:I = 0x4

.field protected static final CLUSTER_MAC_LENGTH:I = 0x8

.field protected static final CLUSTER_PORT_OFFSET:I = 0x1

.field protected static final CLUSTER_RECORD_TYPE_OFFSET:I = 0x0

.field private static final LOGGER:Lorg/slf4j/Logger;

.field protected static final MAX_ADDRESS_LENGTH:I = 0x10

.field protected static final MAX_DATAGRAM_OFFSET:I = 0x1c

.field protected static final MIN_ADDRESS_LENGTH:I = 0x4

.field public static final RECORD_TYPE_INCOMING:Ljava/lang/Byte;

.field public static final RECORD_TYPE_OUTGOING:Ljava/lang/Byte;


# instance fields
.field private final FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

.field private final backwardMessages:Z

.field protected final clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

.field protected volatile clusterInternalSocket:Ljava/net/DatagramSocket;

.field private final clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

.field private final clusterReceiverThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeCidGenerator:Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

.field private volatile nodesProvider:Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;

.field private final startReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const/16 v0, 0x3f

    .line 118
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_INCOMING:Ljava/lang/Byte;

    const/16 v0, 0x3e

    .line 128
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_OUTGOING:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;)V
    .locals 2

    .line 176
    invoke-static {p1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->createConnectionStore(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;Z)V

    .line 177
    invoke-virtual {p0, p3}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->setClusterNodesProvider(Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;)V

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;Z)V
    .locals 6

    .line 197
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    .line 72
    new-instance p1, Lorg/eclipse/californium/elements/util/FilteredLogger;

    sget-object v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {p3, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const-wide/16 v2, 0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/util/FilteredLogger;-><init>(Lorg/slf4j/Logger;JJ)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

    .line 136
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterReceiverThreads:Ljava/util/List;

    .line 198
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeConnectionIdGenerator()Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->nodeCidGenerator:Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

    .line 199
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

    .line 200
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->useBackwardMessages()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->backwardMessages:Z

    .line 201
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    instance-of p1, p1, Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    check-cast p1, Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    .line 202
    iput-boolean p4, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->startReceiver:Z

    .line 203
    sget-object p1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x1

    iget-object p4, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

    invoke-static {p4}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x2

    iget-boolean p4, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->backwardMessages:Z

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "cluster-node {}: on internal {}, backwards {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private decode(Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;
    .locals 8

    const/4 v0, 0x0

    .line 621
    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 622
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    .line 623
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    add-int/lit8 v4, v2, 0x3

    .line 624
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    .line 625
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x4

    add-int v7, v6, v4

    .line 627
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    add-int/lit8 v4, v4, 0x4

    .line 629
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getClusterMacLength()I

    move-result v7

    add-int/2addr v4, v7

    .line 630
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .line 631
    invoke-virtual {p1, v6}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 632
    invoke-virtual {p1, v5}, Ljava/net/DatagramPacket;->setPort(I)V

    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    .line 633
    invoke-virtual {p1, v1, v2, v3}, Ljava/net/DatagramPacket;->setData([BII)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private encode(BLjava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 6

    .line 586
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 588
    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getClusterMacLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 589
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    if-nez p3, :cond_0

    .line 593
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result p3

    .line 594
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    if-eq p3, v1, :cond_1

    .line 596
    invoke-static {v3, p3, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 600
    :cond_0
    array-length v5, p3

    .line 601
    invoke-static {p3, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    :cond_1
    :goto_0
    aput-byte p1, v3, v4

    const/4 p1, 0x1

    .line 604
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result p3

    int-to-byte p3, p3

    aput-byte p3, v3, p1

    const/4 p1, 0x2

    .line 605
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result p3

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    aput-byte p3, v3, p1

    const/4 p1, 0x3

    .line 606
    array-length p3, v0

    int-to-byte p3, p3

    aput-byte p3, v3, p1

    .line 607
    array-length p1, v0

    invoke-static {v0, v4, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v1

    .line 608
    invoke-virtual {p2, v3, v4, v5}, Ljava/net/DatagramPacket;->setData([BII)V

    return-object p2
.end method

.method private getNodeConnectionIdGenerator()Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->useConnectionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    instance-of v0, v0, Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CID generator not supports nodes!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CID not used!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CID generator missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createDefaultHealthHandler(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/DtlsHealth;
    .locals 1

    .line 233
    new-instance v0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getLoggingTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected ensureLength(Ljava/lang/Byte;Ljava/net/DatagramPacket;)Z
    .locals 2

    .line 390
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-ge p1, v1, :cond_0

    return v0

    .line 394
    :cond_0
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 395
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    .line 396
    aget-byte p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    .line 397
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getClusterMacLength()I

    move-result v1

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x19

    if-le p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getClusterInternalAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 352
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    .line 355
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0

    .line 357
    :cond_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2
.end method

.method protected getClusterMacLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getClusterRecordType(Ljava/net/DatagramPacket;)Ljava/lang/Byte;
    .locals 1

    .line 370
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    aget-byte p1, v0, p1

    .line 371
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_INCOMING:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne p1, v0, :cond_0

    .line 372
    sget-object p1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_INCOMING:Ljava/lang/Byte;

    return-object p1

    .line 373
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_OUTGOING:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne p1, v0, :cond_1

    .line 374
    sget-object p1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_OUTGOING:Ljava/lang/Byte;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNodeID()I
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->nodeCidGenerator:Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;->getNodeId()I

    move-result v0

    return v0
.end method

.method protected init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V

    .line 252
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->startReceiver:Z

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->startReceiver()V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 247
    sget-object p2, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cluster-node {}: management-interface {} failed!"

    invoke-interface {p2, v1, p3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    throw p1
.end method

.method protected processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 467
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v0

    .line 468
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    .line 469
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    .line 470
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    .line 471
    aget-byte v6, v4, v0

    sget-object v7, Lorg/eclipse/californium/scandium/dtls/ContentType;->TLS12_CID:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-virtual {v7}, Lorg/eclipse/californium/scandium/dtls/ContentType;->getCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v6, v7, :cond_7

    const/16 v6, 0xd

    if-le v3, v6, :cond_6

    .line 473
    new-instance v6, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-direct {v6, v4, v0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BII)V

    .line 474
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->connectionIdGenerator:Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;

    invoke-static {v6, v0}, Lorg/eclipse/californium/scandium/dtls/Record;->readConnectionIdFromReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 476
    iget-object v4, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->nodeCidGenerator:Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;

    invoke-interface {v4, v0}, Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;->getNodeId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)I

    move-result v4

    .line 477
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 478
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "cluster-node {}: received foreign message for {} from {}"

    invoke-interface {v0, v7, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->nodesProvider:Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;

    invoke-interface {v0, v4}, Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;->getClusterNode(I)Ljava/net/InetSocketAddress;

    move-result-object v6

    const/4 v7, 0x4

    if-eqz v6, :cond_2

    .line 482
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_INCOMING:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {v1, v0, v2, v8}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->encode(BLjava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object v0

    .line 483
    invoke-virtual {v0, v6}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 485
    :try_start_0
    sget-object v13, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v14, "cluster-node {}: forwards received message from {} to {}, {} bytes"

    new-array v15, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v15, v12

    invoke-static {v6}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v15, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v9

    invoke-interface {v13, v14, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->sendDatagramToClusterNetwork(Ljava/net/DatagramPacket;)V

    .line 488
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->forwardMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 493
    sget-object v3, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v12

    invoke-static {v6}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v10

    aput-object v0, v5, v9

    const-string v0, "cluster-node {}: error forwarding to {}/{}:"

    invoke-interface {v3, v0, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz v0, :cond_1

    .line 496
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->dropForwardMessage()V

    goto/16 :goto_0

    .line 498
    :cond_1
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v0, v12}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    goto/16 :goto_0

    .line 502
    :cond_2
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    const-string v3, "cluster-node {}: received foreign message from {} for unknown node {}, {} bytes, dropping."

    invoke-virtual {v0, v3, v6}, Lorg/eclipse/californium/elements/util/FilteredLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz v0, :cond_3

    .line 506
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->dropForwardMessage()V

    goto/16 :goto_0

    .line 508
    :cond_3
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->health:Lorg/eclipse/californium/scandium/DtlsHealth;

    invoke-interface {v0, v12}, Lorg/eclipse/californium/scandium/DtlsHealth;->receivingRecord(Z)V

    goto :goto_0

    .line 512
    :cond_4
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    const-string v3, "cluster-node {}: received own message from {}, {} bytes"

    invoke-interface {v0, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_5
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "cluster-node {}: received broken CID message from {}"

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/californium/elements/util/FilteredLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 519
    :cond_6
    iget-object v0, v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "cluster-node {}: received too short CID message from {}"

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/californium/elements/util/FilteredLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 522
    :cond_7
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    const-string v3, "cluster-node {}: received no CID message from {}, {} bytes."

    invoke-interface {v0, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    :goto_0
    invoke-super {v1, v2, v8}, Lorg/eclipse/californium/scandium/DTLSConnector;->processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method protected processDatagramFromClusterNetwork(Ljava/lang/Byte;Ljava/net/DatagramPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 412
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->decode(Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;

    move-result-object p2

    if-nez p2, :cond_1

    .line 415
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_0

    .line 416
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->dropForwardMessage()V

    :cond_0
    return-void

    .line 420
    :cond_1
    sget-object v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_INCOMING:Ljava/lang/Byte;

    invoke-virtual {v1, p1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    sget-object p1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cluster-node {}: received forwarded message"

    invoke-interface {p1, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    invoke-super {p0, p2, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->processDatagram(Ljava/net/DatagramPacket;Ljava/net/InetSocketAddress;)V

    .line 423
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_3

    .line 424
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->processForwardedMessage()V

    goto :goto_0

    .line 426
    :cond_2
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_OUTGOING:Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 427
    sget-object p1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cluster-node {}: received backwarded outgoing message"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    invoke-super {p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendNextDatagramOverNetwork(Ljava/net/DatagramPacket;)V

    .line 429
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_3

    .line 430
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->sendBackwardedMessage()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected processManagementDatagramFromClusterNetwork(Ljava/net/DatagramPacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected sendDatagramToClusterNetwork(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method protected sendRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 536
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->getRouter()Ljava/net/InetSocketAddress;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_3

    .line 537
    iget-boolean v6, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->backwardMessages:Z

    if-eqz v6, :cond_3

    .line 538
    iget-object v6, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->nodesProvider:Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;

    invoke-interface {v6, v1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;->available(Ljava/net/InetSocketAddress;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 539
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->toByteArray()[B

    move-result-object p1

    .line 540
    array-length v6, p1

    add-int/lit8 v7, v6, 0x1c

    .line 541
    new-array v7, v7, [B

    .line 542
    sget-object v8, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v1, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v5

    const-string v2, "cluster-node {}: backwards send message for {} to {}, {} bytes"

    invoke-interface {v8, v2, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v7

    invoke-direct {v2, v7, v3, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 545
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->RECORD_TYPE_OUTGOING:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->encode(BLjava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object p1

    .line 546
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 548
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->sendDatagramToClusterNetwork(Ljava/net/DatagramPacket;)V

    .line 549
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_4

    .line 550
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->backwardMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 553
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cluster-node {}: sending internal message failed!"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->dropBackwardMessage()V

    .line 557
    :cond_0
    throw p1

    .line 560
    :cond_1
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_2

    .line 561
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->dropBackwardMessage()V

    .line 563
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cluster internal destination "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not longer available!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 567
    :cond_3
    sget-object v1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Record;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "cluster-node {}: sends message to {}, {} bytes"

    invoke-interface {v1, v0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->sendRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setClusterNodesProvider(Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->nodesProvider:Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;

    return-void
.end method

.method protected startReceiver()V
    .locals 5

    .line 265
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getReceiverThreadCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 267
    new-instance v2, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTLS-Cluster-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-Receiver-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;-><init>(Lorg/eclipse/californium/scandium/DtlsClusterConnector;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 289
    invoke-virtual {v2, v3}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->setDaemon(Z)V

    .line 290
    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;->start()V

    .line 291
    iget-object v3, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterReceiverThreads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getNodeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    const-string v3, "cluster-node {}: started {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 303
    invoke-super {p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->stop()V

    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 306
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterReceiverThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 307
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1f4

    .line 309
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterReceiverThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
