.class public Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
.super Ljava/lang/Object;
.source "DetachedThreadLocal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Thread;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$3;->$SwitchMap$org$mockito$internal$util$concurrent$DetachedThreadLocal$Cleaner:[I

    invoke-virtual {p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 30
    new-instance p1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;

    invoke-direct {p1, p0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;)V

    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    goto :goto_1

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;

    sget-object v2, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Z)V

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    return-void
.end method

.method public define(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "TT;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fetchFrom(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->inheritValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBackingMap()Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Thread;",
            "TT;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    return-object v0
.end method

.method protected inheritValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method protected initialValue(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public pushTo(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->inheritValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->run()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->map:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
