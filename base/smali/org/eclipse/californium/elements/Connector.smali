.class public interface abstract Lorg/eclipse/californium/elements/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract processDatagram(Ljava/net/DatagramPacket;)V
.end method

.method public abstract send(Lorg/eclipse/californium/elements/RawData;)V
.end method

.method public abstract setEndpointContextMatcher(Lorg/eclipse/californium/elements/EndpointContextMatcher;)V
.end method

.method public abstract setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
