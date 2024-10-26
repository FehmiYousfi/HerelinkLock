.class public Lorg/eclipse/californium/scandium/dtls/SessionAdapter;
.super Ljava/lang/Object;
.source "SessionAdapter.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/SessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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
    .locals 0

    return-void
.end method

.method public handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public handshakeFlightRetransmitted(Lorg/eclipse/californium/scandium/dtls/Handshaker;I)V
    .locals 0

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
