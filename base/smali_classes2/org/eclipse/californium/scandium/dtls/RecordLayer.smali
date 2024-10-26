.class public interface abstract Lorg/eclipse/californium/scandium/dtls/RecordLayer;
.super Ljava/lang/Object;
.source "RecordLayer.java"


# static fields
.field public static final DEFAULT_ETH_MTU:I = 0x5dc

.field public static final DEFAULT_IPV4_MTU:I = 0x240

.field public static final DEFAULT_IPV6_MTU:I = 0x500

.field public static final IPV4_HEADER_LENGTH:I = 0x40

.field public static final IPV6_HEADER_LENGTH:I = 0x80

.field public static final MAX_MTU:I = 0xffff


# virtual methods
.method public abstract dropReceivedRecord(Lorg/eclipse/californium/scandium/dtls/Record;)V
.end method

.method public abstract getMaxDatagramSize(Z)I
.end method

.method public abstract isRunning()Z
.end method

.method public abstract processHandshakeException(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V
.end method

.method public abstract processRecord(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract sendFlight(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/DatagramPacket;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
