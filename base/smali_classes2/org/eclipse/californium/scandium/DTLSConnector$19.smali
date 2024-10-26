.class Lorg/eclipse/californium/scandium/DTLSConnector$19;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->processAsynchronousHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

.field final synthetic val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

.field final synthetic val$handshakeResult:Lorg/eclipse/californium/scandium/dtls/HandshakeResult;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    .locals 0

    .line 2987
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$handshakeResult:Lorg/eclipse/californium/scandium/dtls/HandshakeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2991
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1200(Lorg/eclipse/californium/scandium/DTLSConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2992
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2995
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$handshakeResult:Lorg/eclipse/californium/scandium/dtls/HandshakeResult;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->processAsyncHandshakeResult(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V
    :try_end_0
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2999
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v3, "Exception while processing handshake result [{}]"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2997
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v1, v2, v3, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$1700(Lorg/eclipse/californium/scandium/DTLSConnector;Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/HandshakeException;)V

    goto :goto_0

    .line 3002
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v2, "No ongoing handshake for result [{}]"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3005
    :cond_1
    invoke-static {}, Lorg/eclipse/californium/scandium/DTLSConnector;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$19;->val$connection:Lorg/eclipse/californium/scandium/dtls/Connection;

    const-string v2, "Execution stopped while processing handshake result [{}]"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
