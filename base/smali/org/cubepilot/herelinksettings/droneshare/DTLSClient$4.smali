.class Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;
.super Ljava/lang/Object;
.source "DTLSClient.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->connect()V
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

    .line 164
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    return-void
.end method

.method public handshakeCompleted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    const-string v0, "connected"

    invoke-static {p1, v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->access$100(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;Ljava/lang/String;)V

    return-void
.end method

.method public handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    const-string p2, "failed to connect"

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->access$100(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;Ljava/lang/String;)V

    return-void
.end method

.method public handshakeFlightRetransmitted(Lorg/eclipse/californium/scandium/dtls/Handshaker;I)V
    .locals 0

    .line 183
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    const-string p2, "retrying..."

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->access$100(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;Ljava/lang/String;)V

    return-void
.end method

.method public handshakeStarted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    return-void
.end method
