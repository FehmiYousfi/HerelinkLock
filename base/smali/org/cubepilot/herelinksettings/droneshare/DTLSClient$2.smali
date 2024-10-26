.class Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$2;
.super Ljava/lang/Object;
.source "DTLSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->updatePeerByHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$2;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 138
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$2;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    new-instance v1, Lorg/eclipse/californium/elements/AddressEndpointContext;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "droneshare.cubepilot.com"

    const/16 v4, 0x1f6a

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lorg/eclipse/californium/elements/AddressEndpointContext;-><init>(Ljava/net/InetSocketAddress;)V

    iput-object v1, v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->peer:Lorg/eclipse/californium/elements/AddressEndpointContext;

    return-void
.end method
