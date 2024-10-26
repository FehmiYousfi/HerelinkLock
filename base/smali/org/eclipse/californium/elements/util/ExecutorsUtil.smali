.class public Lorg/eclipse/californium/elements/util/ExecutorsUtil;
.super Ljava/lang/Object;
.source "ExecutorsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/ExecutorsUtil$SplitScheduledThreadPoolExecutor;
    }
.end annotation


# static fields
.field private static final DEFAULT_REMOVE_ON_CANCEL:Ljava/lang/Boolean;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final REMOVE_ON_CANCEL:Ljava/lang/Boolean;

.field private static final SPLIT_THRESHOLD:I = 0x1

.field public static final TIMER_THREAD_GROUP:Ljava/lang/ThreadGroup;

.field private static final WARMUP:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    const-class v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 57
    new-instance v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "Timer"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->TIMER_THREAD_GROUP:Ljava/lang/ThreadGroup;

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->DEFAULT_REMOVE_ON_CANCEL:Ljava/lang/Boolean;

    const-string v1, "EXECUTER_REMOVE_ON_CANCEL"

    .line 96
    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->getConfigurationBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->DEFAULT_REMOVE_ON_CANCEL:Ljava/lang/Boolean;

    :cond_0
    if-eqz v1, :cond_1

    .line 102
    :try_start_0
    const-class v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v3, "setRemoveOnCancelPolicy"

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 107
    :cond_1
    :goto_0
    sput-object v1, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->REMOVE_ON_CANCEL:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 52
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    .line 52
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->REMOVE_ON_CANCEL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static newDefaultSecondaryScheduler(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 173
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/eclipse/californium/elements/util/NamedThreadFactory;

    invoke-direct {v1, p0}, Lorg/eclipse/californium/elements/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 174
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 175
    sget-object p0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartAllCoreThreads()I

    return-object v0
.end method

.method public static newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 144
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "create thread pool of {} threads"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 146
    sget-object p1, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 122
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "create scheduled thread pool of {} threads"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    .line 124
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 125
    sget-object p1, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p0

    .line 128
    :cond_0
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "create special thread pool of {} threads"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil$SplitScheduledThreadPoolExecutor;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil$SplitScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 130
    sget-object p0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil$SplitScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 131
    sget-object p0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, p1}, Lorg/eclipse/californium/elements/util/ExecutorsUtil$SplitScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 157
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "create scheduled single thread pool"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    .line 159
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 160
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->WARMUP:Ljava/lang/Runnable;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method private static setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 247
    sget-object v0, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->REMOVE_ON_CANCEL:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 248
    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    :cond_0
    return-void
.end method

.method public static varargs shutdownExecutorGracefully(J[Ljava/util/concurrent/ExecutorService;)V
    .locals 12

    const-string v0, "await termination {} ms exceeded the maximum {} ms"

    .line 189
    array-length v1, p2

    if-nez v1, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v1

    .line 196
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p2, v5

    .line 197
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    :cond_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v5, p0

    if-lez v3, :cond_2

    .line 202
    sget-object v3, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "shutdown {} ms exceeded the maximum {} ms"

    invoke-interface {v3, v7, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    :cond_2
    :try_start_0
    array-length v3, p2

    int-to-long v5, v3

    div-long v5, p0, v5

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    .line 208
    array-length v3, p2

    move v7, v4

    :goto_1
    if-ge v7, v3, :cond_5

    aget-object v8, p2, v7

    .line 209
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v5, v6, v9}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 212
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v9

    .line 213
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 218
    sget-object v10, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "ignoring remaining {} scheduled task(s)"

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_3
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v5, v6, v9}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 230
    :cond_5
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long p2, v1, p0

    if-lez p2, :cond_7

    .line 232
    :goto_2
    sget-object p2, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    .line 225
    :catch_0
    :try_start_1
    array-length v3, p2

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, p2, v4

    .line 226
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 228
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long p2, v1, p0

    if-lez p2, :cond_7

    goto :goto_2

    :cond_7
    :goto_4
    return-void

    :goto_5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-lez v3, :cond_8

    .line 232
    sget-object v3, Lorg/eclipse/californium/elements/util/ExecutorsUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v3, v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw p2
.end method
