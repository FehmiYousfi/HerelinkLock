.class public Lorg/eclipse/californium/scandium/MdcConnectionListener;
.super Ljava/lang/Object;
.source "MdcConnectionListener.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/ConnectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 97
    sget-boolean p1, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    if-eqz p1, :cond_0

    .line 98
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    :cond_0
    return-void
.end method

.method public beforeExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 2

    .line 64
    sget-boolean v0, Lorg/eclipse/californium/scandium/DTLSConnector;->MDC_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PEER"

    invoke-static {v1, v0}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECTION_ID"

    invoke-static {v1, v0}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedDtlsContext()Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getWriteConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WRITE_CONNECTION_ID"

    invoke-static {v1, v0}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSSession;->getSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/SessionId;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SESSION_ID"

    invoke-static {v0, p1}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
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
    .locals 0

    return-void
.end method

.method public onConnectionUpdatesSequenceNumbers(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/MdcConnectionListener;->beforeExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method
