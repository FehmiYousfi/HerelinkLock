.class Lorg/eclipse/californium/elements/UDPConnector$Sender;
.super Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;
.source "UDPConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/UDPConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sender"
.end annotation


# instance fields
.field private final datagram:Ljava/net/DatagramPacket;

.field final synthetic this$0:Lorg/eclipse/californium/elements/UDPConnector;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V
    .locals 1

    .line 495
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    .line 496
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;-><init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V

    .line 497
    new-instance p1, Ljava/net/DatagramPacket;

    sget-object p2, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->datagram:Ljava/net/DatagramPacket;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;Lorg/eclipse/californium/elements/UDPConnector$1;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/UDPConnector$Sender;-><init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected work()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    invoke-static {v0}, Lorg/eclipse/californium/elements/UDPConnector;->access$400(Lorg/eclipse/californium/elements/UDPConnector;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/RawData;

    .line 506
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/RawData;->getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;

    move-result-object v1

    .line 507
    invoke-interface {v1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 508
    new-instance v3, Lorg/eclipse/californium/elements/UdpEndpointContext;

    invoke-direct {v3, v2}, Lorg/eclipse/californium/elements/UdpEndpointContext;-><init>(Ljava/net/InetSocketAddress;)V

    .line 509
    iget-object v4, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    invoke-static {v4}, Lorg/eclipse/californium/elements/UDPConnector;->access$500(Lorg/eclipse/californium/elements/UDPConnector;)Lorg/eclipse/californium/elements/EndpointContextMatcher;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v4, :cond_0

    .line 510
    invoke-interface {v4, v1, v3}, Lorg/eclipse/californium/elements/EndpointContextMatcher;->isToBeSent(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    sget-object v1, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    iget-object v4, v4, Lorg/eclipse/californium/elements/UDPConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "UDPConnector ({}) drops {} bytes to {}"

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance v1, Lorg/eclipse/californium/elements/exception/EndpointMismatchException;

    const-string v2, "UDP sending"

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/exception/EndpointMismatchException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/RawData;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/DatagramPacket;->setData([B)V

    .line 517
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 519
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    invoke-static {v1}, Lorg/eclipse/californium/elements/UDPConnector;->access$300(Lorg/eclipse/californium/elements/UDPConnector;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 522
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/eclipse/californium/elements/RawData;->onContextEstablished(Lorg/eclipse/californium/elements/EndpointContext;)V

    .line 523
    iget-object v3, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 524
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/RawData;->onSent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 526
    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    .line 528
    :goto_0
    sget-object v0, Lorg/eclipse/californium/elements/UDPConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    iget-object v3, p0, Lorg/eclipse/californium/elements/UDPConnector$Sender;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "UDPConnector ({}) sent {} bytes to {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 531
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "socket already closed!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/RawData;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
