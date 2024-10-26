.class Lorg/eclipse/californium/elements/UDPConnector$Receiver;
.super Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;
.source "UDPConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/UDPConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private final datagram:Ljava/net/DatagramPacket;

.field private final size:I

.field final synthetic this$0:Lorg/eclipse/californium/elements/UDPConnector;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V
    .locals 1

    .line 474
    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    .line 475
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/UDPConnector$NetworkStageThread;-><init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V

    .line 477
    invoke-static {p1}, Lorg/eclipse/californium/elements/UDPConnector;->access$200(Lorg/eclipse/californium/elements/UDPConnector;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->size:I

    .line 478
    new-instance p1, Ljava/net/DatagramPacket;

    iget p2, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->size:I

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->datagram:Ljava/net/DatagramPacket;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;Lorg/eclipse/californium/elements/UDPConnector$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/UDPConnector$Receiver;-><init>(Lorg/eclipse/californium/elements/UDPConnector;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected work()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->datagram:Ljava/net/DatagramPacket;

    iget v1, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->size:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 483
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    invoke-static {v0}, Lorg/eclipse/californium/elements/UDPConnector;->access$300(Lorg/eclipse/californium/elements/UDPConnector;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 486
    iget-object v0, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->this$0:Lorg/eclipse/californium/elements/UDPConnector;

    iget-object v1, p0, Lorg/eclipse/californium/elements/UDPConnector$Receiver;->datagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/UDPConnector;->processDatagram(Ljava/net/DatagramPacket;)V

    :cond_0
    return-void
.end method
