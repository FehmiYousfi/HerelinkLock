.class Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;
.super Ljava/lang/Object;
.source "DtlsManagedClusterConnector.java"

# interfaces
.implements Lorg/eclipse/californium/elements/RawDataChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;

.field final synthetic val$messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;Lorg/eclipse/californium/elements/RawDataChannel;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;->this$1:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;->val$messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveData(Lorg/eclipse/californium/elements/RawData;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;->val$messageHandler:Lorg/eclipse/californium/elements/RawDataChannel;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/elements/RawDataChannel;->receiveData(Lorg/eclipse/californium/elements/RawData;)V

    .line 501
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;->this$1:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector$1;->this$1:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->receivingClusterManagementMessage()V

    :cond_0
    return-void
.end method
