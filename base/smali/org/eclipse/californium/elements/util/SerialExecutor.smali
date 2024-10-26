.class public Lorg/eclipse/californium/elements/util/SerialExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SerialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private currentlyExecutedJob:Ljava/lang/Runnable;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final owner:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private shutdown:Z

.field private final tasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final terminated:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/SerialExecutor;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->tasks:Ljava/util/concurrent/BlockingQueue;

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->terminated:Ljava/util/concurrent/locks/Condition;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z

    .line 98
    :cond_0
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/elements/util/SerialExecutor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->setOwner()V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/elements/util/SerialExecutor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/eclipse/californium/elements/util/SerialExecutor;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/californium/elements/util/SerialExecutor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->clearOwner()V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/californium/elements/util/SerialExecutor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->scheduleNextJob()V

    return-void
.end method

.method private clearOwner()V
    .locals 4

    .line 169
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not owned, clear failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clear failed!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private final scheduleNextJob()V
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->tasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;

    .line 276
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;

    .line 278
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/eclipse/californium/elements/util/SerialExecutor$1;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/californium/elements/util/SerialExecutor$1;-><init>(Lorg/eclipse/californium/elements/util/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 311
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->terminated:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setOwner()V
    .locals 4

    .line 152
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 153
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was already owned!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public assertOwner()V
    .locals 4

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not owned!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 255
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 256
    :cond_0
    iget-boolean p3, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;

    if-eqz p3, :cond_2

    .line 257
    :cond_1
    iget-object p3, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->terminated:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    .line 262
    :cond_2
    iget-boolean p1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 264
    :goto_0
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public checkOwner()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->owner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->tasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->scheduleNextJob()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 106
    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "SerialExecutor already shutdown!"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 113
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isShutdown()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 235
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->currentlyExecutedJob:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setExecutionListener(Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;)Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;

    return-object p1
.end method

.method public shutdown()V
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 188
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public shutdownNow(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;)I"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdown()V

    .line 225
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->tasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 205
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->tasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->shutdownNow(Ljava/util/Collection;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
