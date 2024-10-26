.class Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Connection;


# direct methods
.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection$1;)V
    .locals 0

    .line 879
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;-><init>(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method


# virtual methods
.method public contextEstablished(Lorg/eclipse/californium/scandium/dtls/Handshaker;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 889
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$802(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/DTLSContext;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    .line 890
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$600(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/net/InetSocketAddress;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Session context with [{}] has been established"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public handshakeCompleted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 4

    .line 895
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$900(Lorg/eclipse/californium/scandium/dtls/Connection;)Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1000()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->assertOwner()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 900
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1000()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on handshake completed: connection {}"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 901
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1000()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 902
    :cond_0
    throw v0

    .line 906
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$500(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 907
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$600(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Handshake with [{}] has been completed"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public handshakeFailed(Lorg/eclipse/californium/scandium/dtls/Handshaker;Ljava/lang/Throwable;)V
    .locals 3

    .line 913
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$900(Lorg/eclipse/californium/scandium/dtls/Connection;)Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 914
    invoke-virtual {p2}, Lorg/eclipse/californium/elements/util/SerialExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1000()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/californium/elements/util/SerialExecutor;->assertOwner()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 918
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1000()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on handshake failed: connection {}"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 919
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1000()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    throw p2

    .line 924
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$500(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 925
    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {p1, v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$1102(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;)Lorg/eclipse/californium/scandium/dtls/Connection$ClientHelloIdentifier;

    .line 926
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$600(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/net/InetSocketAddress;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Handshake with [{}] has failed"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public handshakeFlightRetransmitted(Lorg/eclipse/californium/scandium/dtls/Handshaker;I)V
    .locals 0

    return-void
.end method

.method public handshakeStarted(Lorg/eclipse/californium/scandium/dtls/Handshaker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$500(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 884
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$700()Lorg/slf4j/Logger;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$ConnectionSessionListener;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$600(Lorg/eclipse/californium/scandium/dtls/Connection;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Handshake with [{}] has been started"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
