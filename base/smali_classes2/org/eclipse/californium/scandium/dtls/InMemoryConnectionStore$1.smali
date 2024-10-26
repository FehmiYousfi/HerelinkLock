.class Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;
.super Ljava/lang/Object;
.source "InMemoryConnectionStore.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;-><init>(IJLorg/eclipse/californium/scandium/dtls/SessionStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$EvictionListener<",
        "Lorg/eclipse/californium/scandium/dtls/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEviction(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;->onEviction(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method public onEviction(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 2

    .line 184
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1$1;-><init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$1;Lorg/eclipse/californium/scandium/dtls/Connection;)V

    .line 202
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->isExecuting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getExecutor()Lorg/eclipse/californium/elements/util/SerialExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
