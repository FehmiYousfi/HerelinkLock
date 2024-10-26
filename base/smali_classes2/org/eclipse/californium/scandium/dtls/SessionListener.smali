.class public interface abstract Lorg/eclipse/californium/scandium/dtls/SessionListener;
.super Ljava/lang/Object;
.source "SessionListener.java"


# virtual methods
.method public abstract contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation
.end method

.method public abstract handshakeCompleted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
.end method

.method public abstract handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V
.end method

.method public abstract handshakeFlightRetransmitted(Lorg/eclipse/californium/scandium/dtls/Handshaker;I)V
.end method

.method public abstract handshakeStarted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation
.end method
