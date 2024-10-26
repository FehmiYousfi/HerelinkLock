.class Lorg/eclipse/californium/scandium/DTLSConnector$8;
.super Lorg/eclipse/californium/scandium/DTLSConnector$Worker;
.source "DTLSConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final packet:Ljava/net/DatagramPacket;

.field private final receiverBuffer:[B

.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/lang/String;)V
    .locals 1

    .line 1048
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/lang/String;)V

    .line 1050
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget p1, p1, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->receiverBuffer:[B

    .line 1051
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->receiverBuffer:[B

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget v0, v0, Lorg/eclipse/californium/scandium/DTLSConnector;->inboundDatagramBufferSize:I

    invoke-direct {p1, p2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1055
    sget-boolean v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 1056
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->packet:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->receiverBuffer:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 1059
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$8;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->receiveNextDatagramFromNetwork(Ljava/net/DatagramPacket;)V

    return-void
.end method
