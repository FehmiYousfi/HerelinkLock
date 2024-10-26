.class public final Lorg/eclipse/californium/elements/RawData;
.super Ljava/lang/Object;
.source "RawData.java"


# instance fields
.field public final bytes:[B

.field private final callback:Lorg/eclipse/californium/elements/MessageCallback;

.field private final connector:Ljava/net/InetSocketAddress;

.field private final multicast:Z

.field private final peerEndpointContext:Lorg/eclipse/californium/elements/EndpointContext;

.field private final receiveNanoTimestamp:J


# direct methods
.method private constructor <init>([BLorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MessageCallback;ZJLjava/net/InetSocketAddress;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 112
    iput-object p1, p0, Lorg/eclipse/californium/elements/RawData;->bytes:[B

    .line 113
    iput-object p2, p0, Lorg/eclipse/californium/elements/RawData;->peerEndpointContext:Lorg/eclipse/californium/elements/EndpointContext;

    .line 114
    iput-object p3, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    .line 115
    iput-boolean p4, p0, Lorg/eclipse/californium/elements/RawData;->multicast:Z

    .line 116
    iput-wide p5, p0, Lorg/eclipse/californium/elements/RawData;->receiveNanoTimestamp:J

    .line 117
    iput-object p7, p0, Lorg/eclipse/californium/elements/RawData;->connector:Ljava/net/InetSocketAddress;

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Peer\'s EndpointContext must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Data must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static inbound([BLorg/eclipse/californium/elements/EndpointContext;ZJLjava/net/InetSocketAddress;)Lorg/eclipse/californium/elements/RawData;
    .locals 9

    if-eqz p5, :cond_0

    .line 146
    new-instance v8, Lorg/eclipse/californium/elements/RawData;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/elements/RawData;-><init>([BLorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MessageCallback;ZJLjava/net/InetSocketAddress;)V

    return-object v8

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Connectors\'s address must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static outbound([BLorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MessageCallback;Z)Lorg/eclipse/californium/elements/RawData;
    .locals 9

    .line 178
    new-instance v8, Lorg/eclipse/californium/elements/RawData;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/californium/elements/RawData;-><init>([BLorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MessageCallback;ZJLjava/net/InetSocketAddress;)V

    return-object v8
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->bytes:[B

    return-object v0
.end method

.method public getConnectorAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->connector:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getEndpointContext()Lorg/eclipse/californium/elements/EndpointContext;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->peerEndpointContext:Lorg/eclipse/californium/elements/EndpointContext;

    return-object v0
.end method

.method public getInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->peerEndpointContext:Lorg/eclipse/californium/elements/EndpointContext;

    invoke-interface {v0}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveNanoTimestamp()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lorg/eclipse/californium/elements/RawData;->receiveNanoTimestamp:J

    return-wide v0
.end method

.method public getSenderIdentity()Ljava/security/Principal;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->peerEndpointContext:Lorg/eclipse/californium/elements/EndpointContext;

    invoke-interface {v0}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public isMulticast()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/RawData;->multicast:Z

    return v0
.end method

.method public onConnecting()V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lorg/eclipse/californium/elements/MessageCallback;->onConnecting()V

    :cond_0
    return-void
.end method

.method public onContextEstablished(Lorg/eclipse/californium/elements/EndpointContext;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, p1}, Lorg/eclipse/californium/elements/MessageCallback;->onContextEstablished(Lorg/eclipse/californium/elements/EndpointContext;)V

    :cond_0
    return-void
.end method

.method public onDtlsRetransmission(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1}, Lorg/eclipse/californium/elements/MessageCallback;->onDtlsRetransmission(I)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 312
    new-instance p1, Ljava/lang/UnknownError;

    invoke-direct {p1}, Ljava/lang/UnknownError;-><init>()V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/elements/MessageCallback;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onSent()V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/eclipse/californium/elements/RawData;->callback:Lorg/eclipse/californium/elements/MessageCallback;

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0}, Lorg/eclipse/californium/elements/MessageCallback;->onSent()V

    :cond_0
    return-void
.end method
