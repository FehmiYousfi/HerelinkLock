.class public Lorg/eclipse/californium/elements/UDPConnector;
.super Ljava/lang/Object;
.source "UDPConnector.java"

# interfaces
.implements Lorg/eclipse/californium/elements/Connector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/UDPConnector$Sender;,
        Lorg/eclipse/californium/elements/UDPConnector$Receiver;,
        Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;
    }
.end annotation


# static fields
.field static final ELEMENTS_THREAD_GROUP:Ljava/lang/ThreadGroup;

.field public static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final configReceiveBufferSize:Ljava/lang/Integer;

.field private final configSendBufferSize:Ljava/lang/Integer;

.field protected volatile effectiveAddr:Ljava/net/InetSocketAddress;

.field private volatile endpointContextMatcher:Lorg/eclipse/californium/elements/EndpointContextMatcher;

.field protected final localAddr:Ljava/net/InetSocketAddress;

.field protected multicast:Z

.field private final multicastReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/UdpMulticastConnector;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoing:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/eclipse/californium/elements/RawData;",
            ">;"
        }
    .end annotation
.end field

.field private receiveBufferSize:Ljava/lang/Integer;

.field private volatile receiver:Lorg/eclipse/californium/elements/RawDataChannel;

.field private final receiverCount:I

.field private final receiverPacketSize:I

.field private final receiverThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private reuseAddress:Z

.field protected volatile running:Z

.field private sendBufferSize:Ljava/lang/Integer;

.field private final senderCount:I

.field private final senderThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private volatile socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    const-class v0, Lorg/eclipse/californium/elements/UDPConnector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    .line 91
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "Californium/Elements"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/UDPConnector;->ELEMENTS_THREAD_GROUP:Ljava/lang/ThreadGroup;

    .line 94
    sget-object v0, Lorg/eclipse/californium/elements/UDPConnector;->ELEMENTS_THREAD_GROUP:Ljava/lang/ThreadGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverThreads:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderThreads:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 180
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->localAddr:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 182
    :cond_0
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->localAddr:Ljava/net/InetSocketAddress;

    .line 184
    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    .line 185
    iget-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->localAddr:Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    .line 186
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_CONNECTOR_OUT_CAPACITY:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p2, v0}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->outgoing:Ljava/util/concurrent/BlockingQueue;

    .line 187
    sget-object p1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverCount:I

    .line 188
    sget-object p1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SENDER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderCount:I

    .line 189
    sget-object p1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_DATAGRAM_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverPacketSize:I

    .line 190
    sget-object p1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->configReceiveBufferSize:Ljava/lang/Integer;

    .line 191
    sget-object p1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p2, p1}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->configSendBufferSize:Ljava/lang/Integer;

    .line 192
    iget-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->configReceiveBufferSize:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiveBufferSize:Ljava/lang/Integer;

    .line 193
    iget-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->configSendBufferSize:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->sendBufferSize:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/californium/elements/UDPConnector;)I
    .locals 0

    .line 87
    iget p0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverPacketSize:I

    return p0
.end method

.method static synthetic access$300(Lorg/eclipse/californium/elements/UDPConnector;)Ljava/net/DatagramSocket;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/eclipse/californium/elements/UDPConnector;->socket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/californium/elements/UDPConnector;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/eclipse/californium/elements/UDPConnector;->outgoing:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/elements/UDPConnector;)Lorg/eclipse/californium/elements/EndpointContextMatcher;
    .locals 0

    .line 87
    iget-object p0, p0, Lorg/eclipse/californium/elements/UDPConnector;->endpointContextMatcher:Lorg/eclipse/californium/elements/EndpointContextMatcher;

    return-object p0
.end method

.method private notifyMsgAsInterrupted(Lorg/eclipse/californium/elements/RawData;)V
    .locals 2

    .line 423
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connector is not running."

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addMulticastReceiver(Lorg/eclipse/californium/elements/UdpMulticastConnector;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 393
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->isMutlicastReceiver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicast:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiver:Lorg/eclipse/californium/elements/RawDataChannel;

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V

    return-void

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connector itself is a multicast receiver!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connector is no valid multicast receiver!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Connector must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 324
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector;->stop()V

    .line 325
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/Connector;

    .line 326
    invoke-interface {v1}, Lorg/eclipse/californium/elements/Connector;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiver:Lorg/eclipse/californium/elements/RawDataChannel;

    return-void
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    const-string v0, "UDP"

    return-object v0
.end method

.method public getReceiveBufferSize()Ljava/lang/Integer;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiveBufferSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReceiverPacketSize()I
    .locals 1

    .line 626
    iget v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverPacketSize:I

    return v0
.end method

.method public getReceiverThreadCount()I
    .locals 1

    .line 618
    iget v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverCount:I

    return v0
.end method

.method public getReuseAddress()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->reuseAddress:Z

    return v0
.end method

.method public getSendBufferSize()Ljava/lang/Integer;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->sendBufferSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSenderThreadCount()I
    .locals 1

    .line 622
    iget v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderCount:I

    return v0
.end method

.method protected init(Ljava/net/DatagramSocket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->socket:Ljava/net/DatagramSocket;

    .line 226
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    .line 228
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->configReceiveBufferSize:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiveBufferSize:Ljava/lang/Integer;

    .line 233
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->configSendBufferSize:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 236
    :cond_1
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->sendBufferSize:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    .line 242
    sget-object v0, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    iget v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UDPConnector starts up {} sender threads and {} receiver threads"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_0
    iget v2, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverCount:I

    const/4 v3, 0x0

    const-string v4, "]"

    const-string v5, "["

    if-ge v1, v2, :cond_2

    .line 245
    iget-object v2, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverThreads:Ljava/util/List;

    new-instance v6, Lorg/eclipse/californium/elements/UDPConnector$Receiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UDP-Receiver-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/eclipse/californium/elements/UDPConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v4, v3}, Lorg/eclipse/californium/elements/UDPConnector$Receiver;-><init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;Lorg/eclipse/californium/elements/UDPConnector$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicast:Z

    if-nez v1, :cond_3

    move v1, v0

    .line 249
    :goto_1
    iget v2, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderCount:I

    if-ge v1, v2, :cond_3

    .line 250
    iget-object v2, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderThreads:Ljava/util/List;

    new-instance v6, Lorg/eclipse/californium/elements/UDPConnector$Sender;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UDP-Sender-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/eclipse/californium/elements/UDPConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3}, Lorg/eclipse/californium/elements/UDPConnector$Sender;-><init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;Lorg/eclipse/californium/elements/UDPConnector$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_3
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 255
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 257
    :cond_4
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 258
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 268
    :cond_5
    sget-object v1, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiveBufferSize:Ljava/lang/Integer;

    aput-object v0, v2, p1

    const/4 p1, 0x2

    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->sendBufferSize:Ljava/lang/Integer;

    aput-object v0, v2, p1

    const/4 p1, 0x3

    iget v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverPacketSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "UDPConnector listening on {}, recv buf = {}, send buf = {}, recv packet size = {}"

    invoke-interface {v1, p1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    return v0
.end method

.method public processDatagram(Ljava/net/DatagramPacket;)V
    .locals 11

    .line 547
    iget-object v5, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    .line 548
    iget-object v6, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiver:Lorg/eclipse/californium/elements/RawDataChannel;

    .line 549
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    sget-object v0, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Discarding message with {} bytes from [{}] without source-port"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverPacketSize:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    .line 562
    sget-object v0, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverPacketSize:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "UDPConnector ({}) received truncated UDP datagram from {}. Maximum size allowed {}. Discarding ..."

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    if-nez v6, :cond_2

    .line 566
    sget-object v0, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "UDPConnector ({}) received UDP datagram from {} without receiver. Discarding ..."

    invoke-interface {v0, v1, v5, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 569
    :cond_2
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v8

    .line 570
    invoke-static {v5}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 571
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicast:Z

    if-eqz v1, :cond_3

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mc/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_3
    sget-object v1, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v2

    const-string v0, "UDPConnector ({}) received {} bytes from {}"

    invoke-interface {v1, v0, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 577
    new-instance v1, Lorg/eclipse/californium/elements/UdpEndpointContext;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result p1

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/UdpEndpointContext;-><init>(Ljava/net/InetSocketAddress;)V

    iget-boolean v2, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicast:Z

    move-wide v3, v8

    invoke-static/range {v0 .. v5}, Lorg/eclipse/californium/elements/RawData;->inbound([BLorg/eclipse/californium/elements/EndpointContext;ZJLjava/net/InetSocketAddress;)Lorg/eclipse/californium/elements/RawData;

    move-result-object p1

    .line 580
    invoke-interface {v6, p1}, Lorg/eclipse/californium/elements/RawDataChannel;->receiveData(Lorg/eclipse/californium/elements/RawData;)V

    :goto_0
    return-void
.end method

.method public removeMulticastReceiver(Lorg/eclipse/californium/elements/UdpMulticastConnector;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V

    :cond_0
    return-void
.end method

.method public send(Lorg/eclipse/californium/elements/RawData;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 336
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicast:Z

    if-nez v0, :cond_4

    .line 339
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 341
    sget-object v1, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Discarding message with {} bytes to [{}] without destination-port"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoAP message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dropped, destination port 0!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    if-eqz v1, :cond_1

    .line 353
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->outgoing:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 357
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/UDPConnector;->notifyMsgAsInterrupted(Lorg/eclipse/californium/elements/RawData;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 359
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connector overloaded."

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 355
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 337
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connector is a multicast receiver!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 334
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Message must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndpointContextMatcher(Lorg/eclipse/californium/elements/EndpointContextMatcher;)V
    .locals 2

    .line 373
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->endpointContextMatcher:Lorg/eclipse/californium/elements/EndpointContextMatcher;

    .line 374
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/UdpMulticastConnector;

    .line 375
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->setEndpointContextMatcher(Lorg/eclipse/californium/elements/EndpointContextMatcher;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V
    .locals 2

    .line 365
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiver:Lorg/eclipse/californium/elements/RawDataChannel;

    .line 366
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/UdpMulticastConnector;

    .line 367
    invoke-virtual {v1, p1}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    .line 606
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UDPConnector;->reuseAddress:Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 205
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/UdpMulticastConnector;

    .line 209
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->start()V

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 213
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->reuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 214
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 215
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/UDPConnector;->init(Ljava/net/DatagramSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 5

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->outgoing:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    if-nez v1, :cond_0

    .line 278
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 280
    iput-boolean v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->running:Z

    .line 281
    sget-object v1, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "UDPConnector on [{}] stopping ..."

    iget-object v3, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->multicastReceivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/elements/Connector;

    .line 283
    invoke-interface {v2}, Lorg/eclipse/californium/elements/Connector;->stop()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 288
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 290
    :cond_2
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 291
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 293
    :cond_3
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->outgoing:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 294
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_4

    .line 295
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    const/4 v1, 0x0

    .line 296
    iput-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->socket:Ljava/net/DatagramSocket;

    .line 299
    :cond_4
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 306
    :cond_5
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->senderThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 307
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 308
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :try_start_3
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 314
    :cond_6
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector;->receiverThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 315
    sget-object v1, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "UDPConnector on [{}] has stopped."

    iget-object v3, p0, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/RawData;

    .line 318
    invoke-direct {p0, v1}, Lorg/eclipse/californium/elements/UDPConnector;->notifyMsgAsInterrupted(Lorg/eclipse/californium/elements/RawData;)V

    goto :goto_5

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 316
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UDPConnector;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
