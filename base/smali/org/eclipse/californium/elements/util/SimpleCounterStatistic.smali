.class public Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;
.super Ljava/lang/Object;
.source "SimpleCounterStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;
    }
.end annotation


# instance fields
.field private final align:I

.field private final currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final group:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

.field private final name:Ljava/lang/String;

.field private final overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final startCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->align:I

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->group:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->name:Ljava/lang/String;

    .line 86
    iput p2, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->align:I

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->group:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->align:I

    .line 100
    invoke-virtual {p2, p0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->group:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    return-void
.end method

.method public static format(ILjava/lang/String;J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    .line 290
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "%s: %8d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "s: %8d"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(I)Ljava/lang/String;
    .locals 6

    .line 125
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 127
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->name:Ljava/lang/String;

    invoke-static {p1, v5, v1, v2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->format(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, " (%8d overall)."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCounter()J
    .locals 5

    .line 205
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCountersPair()[J
    .locals 5

    .line 218
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    aput-wide v3, v1, v2

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public increment()J
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment(I)J
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isStarted()Z
    .locals 4

    .line 267
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsed()Z
    .locals 5

    .line 253
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()J
    .locals 8

    .line 232
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 234
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 235
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 236
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 242
    :goto_0
    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception v1

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(J)V
    .locals 6

    .line 169
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 173
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    move-wide v1, v3

    .line 175
    :cond_0
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr p1, v4

    sub-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setStart(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->startCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " must not be less than 0!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->group:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->align:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->getAlign()I

    move-result v0

    .line 273
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->dump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferCounter()V
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->currentCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v1

    .line 111
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->overallCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
