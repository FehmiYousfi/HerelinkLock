.class Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;
.super Lorg/eclipse/californium/elements/UDPConnector;
.source "DtlsManagedClusterConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterManagementUdpConnector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;Ljava/net/InetSocketAddress;Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    .line 442
    invoke-direct {p0, p2, p3}, Lorg/eclipse/californium/elements/UDPConnector;-><init>(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/elements/config/Configuration;)V

    return-void
.end method


# virtual methods
.method public processDatagram(Ljava/net/DatagramPacket;)V
    .locals 0

    .line 454
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/UDPConnector;->processDatagram(Ljava/net/DatagramPacket;)V

    .line 455
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->receivingClusterManagementMessage()V

    :cond_0
    return-void
.end method

.method public send(Lorg/eclipse/californium/elements/RawData;)V
    .locals 0

    .line 462
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/UDPConnector;->send(Lorg/eclipse/californium/elements/RawData;)V

    .line 463
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->sendingClusterManagementMessage()V

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 448
    monitor-exit p0

    return-void

    .line 449
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;->init(Ljava/net/DatagramSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
