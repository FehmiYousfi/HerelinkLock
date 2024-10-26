.class Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;
.super Lorg/eclipse/californium/scandium/DTLSConnector;
.source "DtlsManagedClusterConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterManagementDtlsConnector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    .line 476
    invoke-direct {p0, p2}, Lorg/eclipse/californium/scandium/DTLSConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    return-void
.end method


# virtual methods
.method protected onInitializeHandshaker(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->access$100(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->access$100(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->setGenerateClusterMacKeys(Z)V

    :cond_0
    return-void
.end method

.method public send(Lorg/eclipse/californium/elements/RawData;)V
    .locals 0

    .line 510
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->send(Lorg/eclipse/californium/elements/RawData;)V

    .line 511
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->sendingClusterManagementMessage()V

    :cond_0
    return-void
.end method

.method public setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V
    .locals 1

    .line 496
    new-instance v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;-><init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;Lorg/eclipse/californium/elements/RawDataChannel;)V

    invoke-super {p0, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V

    return-void
.end method

.method protected start(Ljava/net/InetSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterInternalSocket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getMaxTransmissionUnit()Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V

    return-void
.end method
