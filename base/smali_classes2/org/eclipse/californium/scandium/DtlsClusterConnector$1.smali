.class Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;
.super Lorg/eclipse/californium/scandium/DTLSConnector$Worker;
.source "DtlsClusterConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DtlsClusterConnector;->startReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clusterPacket:Ljava/net/DatagramPacket;

.field private final receiverBuffer:[B

.field final synthetic this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DtlsClusterConnector;Ljava/lang/String;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector$Worker;-><init>(Lorg/eclipse/californium/scandium/DTLSConnector;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget p1, p1, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->inboundDatagramBufferSize:I

    add-int/lit8 p1, p1, 0x1c

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->receiverBuffer:[B

    .line 271
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->receiverBuffer:[B

    array-length v0, p2

    invoke-direct {p1, p2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->receiverBuffer:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 276
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 277
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->getClusterRecordType(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->ensureLength(Ljava/lang/Byte;Ljava/net/DatagramPacket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->processDatagramFromClusterNetwork(Ljava/lang/Byte;Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->dropForwardMessage()V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsClusterConnector;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterConnector$1;->clusterPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->processManagementDatagramFromClusterNetwork(Ljava/net/DatagramPacket;)V

    :cond_2
    :goto_0
    return-void
.end method
