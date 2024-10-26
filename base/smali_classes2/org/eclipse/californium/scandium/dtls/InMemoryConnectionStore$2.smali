.class Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;
.super Ljava/lang/Object;
.source "InMemoryConnectionStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToAddressConnections(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

.field final synthetic val$peerAddress:Ljava/net/InetSocketAddress;

.field final synthetic val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$peerAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 565
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$peerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->equalsPeerAddress(Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/Connection;->updatePeerAddress(Ljava/net/InetSocketAddress;)V

    .line 567
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iget-object v0, v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->connectionsByEstablishedSession:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->expectCid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$2;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    :cond_0
    return-void
.end method
