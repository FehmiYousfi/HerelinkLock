.class public abstract Lorg/eclipse/californium/elements/util/CounterStatisticManager;
.super Ljava/lang/Object;
.source "CounterStatisticManager.java"


# instance fields
.field protected final align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final interval:J

.field private lastTransfer:Ljava/util/concurrent/atomic/AtomicLong;

.field private final orderedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final statistics:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;",
            ">;"
        }
    .end annotation
.end field

.field protected final tag:Ljava/lang/String;

.field private taskHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->orderedKeys:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->lastTransfer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->normalizeLoggingTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->interval:J

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->unit:Ljava/util/concurrent/TimeUnit;

    .line 109
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->orderedKeys:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->lastTransfer:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p5, :cond_2

    .line 132
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->normalizeLoggingTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->tag:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->isEnabled()Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 134
    iput-wide p2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->interval:J

    .line 135
    iput-object p4, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->unit:Ljava/util/concurrent/TimeUnit;

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, v2

    .line 136
    :goto_0
    iput-object p5, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    .line 138
    :cond_1
    iput-wide v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->interval:J

    .line 139
    iput-object v2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->unit:Ljava/util/concurrent/TimeUnit;

    .line 140
    iput-object v2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    :goto_1
    return-void

    .line 130
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "executor must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/eclipse/californium/elements/util/CounterStatisticManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected add(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V
    .locals 1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->addByKey(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    return-void
.end method

.method protected add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->addByKey(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    return-void
.end method

.method protected addByKey(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    if-eqz p2, :cond_0

    .line 178
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->orderedKeys:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->orderedKeys:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract dump()V
.end method

.method protected get(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    return-object p1
.end method

.method public getByKey(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    return-object p1
.end method

.method public getCounter(Ljava/lang/String;)J
    .locals 2

    .line 350
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->getByKey(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->getCounter()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCounterByKey(Ljava/lang/String;)J
    .locals 2

    .line 366
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->getByKey(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->getCounter()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->orderedKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastTransferTime()J
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->lastTransfer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isEnabled()Z
.end method

.method protected removeByKey(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected removeByKey(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 194
    iget-object p2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->orderedKeys:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 330
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 331
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->reset()J

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->lastTransfer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 9

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->taskHandle:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 263
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lorg/eclipse/californium/elements/util/CounterStatisticManager$1;

    invoke-direct {v3, p0}, Lorg/eclipse/californium/elements/util/CounterStatisticManager$1;-><init>(Lorg/eclipse/californium/elements/util/CounterStatisticManager;)V

    iget-wide v4, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->interval:J

    iget-wide v6, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->interval:J

    iget-object v8, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->taskHandle:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .locals 2

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->taskHandle:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->taskHandle:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->taskHandle:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 288
    monitor-exit p0

    return v0

    .line 290
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public transferCounter()V
    .locals 3

    .line 320
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->statistics:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 321
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->transferCounter()V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->lastTransfer:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
