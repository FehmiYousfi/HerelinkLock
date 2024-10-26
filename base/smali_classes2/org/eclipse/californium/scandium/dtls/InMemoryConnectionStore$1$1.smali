.class Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;
.super Ljava/lang/Object;
.source "InMemoryConnectionStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->onEviction(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

.field final synthetic val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->this$1:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 188
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->getOngoingHandshake()Lorg/eclipse/californium/scandium/dtls/Handshaker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ConnectionEvictedException;

    const-string v2, "Evicted!"

    invoke-direct {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ConnectionEvictedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->handshakeFailed(Ljava/lang/Throwable;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->this$1:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->this$1:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->access$000(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 194
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->this$1:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getEstablishedSessionIdentifier()Lorg/eclipse/californium/scandium/dtls/SessionId;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->access$100(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 195
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->this$1:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;

    iget-object v1, v1, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->access$200(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;)Lorg/eclipse/californium/scandium/ConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;->val$staleConnection:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-interface {v1, v2}, Lorg/eclipse/californium/scandium/ConnectionListener;->onConnectionRemoved(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 199
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
