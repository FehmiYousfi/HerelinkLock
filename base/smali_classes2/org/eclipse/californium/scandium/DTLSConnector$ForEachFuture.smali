.class Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForEachFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile cancel:Z

.field private volatile done:Z

.field private volatile exception:Ljava/lang/Exception;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final waitDone:Ljava/util/concurrent/locks/Condition;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3176
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    .line 3177
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->waitDone:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector$1;)V
    .locals 0

    .line 3174
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 3193
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3195
    :try_start_0
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->cancel:Z

    if-nez p1, :cond_0

    .line 3197
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3200
    :goto_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public done()V
    .locals 2

    .line 3251
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 3253
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    .line 3254
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->waitDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3256
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    .line 3261
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3263
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->exception:Ljava/lang/Exception;

    const/4 p1, 0x1

    .line 3264
    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    .line 3265
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->waitDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3267
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3174
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3174
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3217
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3219
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    if-nez v0, :cond_0

    .line 3220
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->waitDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 3222
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->exception:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 3226
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    .line 3223
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 3226
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3233
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3235
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    if-nez v0, :cond_0

    .line 3236
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->waitDone:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 3238
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->exception:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 3242
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    .line 3239
    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->exception:Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 3242
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 3207
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->cancel:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 3212
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 3272
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DTLSConnector$ForEachFuture;->cancel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
