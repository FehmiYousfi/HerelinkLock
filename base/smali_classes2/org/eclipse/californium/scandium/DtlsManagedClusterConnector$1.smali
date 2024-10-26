.class Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$1;
.super Ljava/lang/Object;
.source "DtlsManagedClusterConnector.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    return-void
.end method

.method public beforeExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    return-void
.end method

.method public onConnectionEstablished(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    return-void
.end method

.method public onConnectionMacError(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onConnectionRemoved(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 3

    .line 171
    invoke-static {}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$1;->this$0:Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->getNodeID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    const-string v2, "cluster-node {}: lost connection {}!"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionUpdatesSequenceNumbers(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    return-void
.end method
