.class public Lorg/eclipse/californium/elements/util/FilteredLogger;
.super Ljava/lang/Object;
.source "FilteredLogger.java"


# static fields
.field private static final ENABLE:Z


# instance fields
.field private counter:J

.field private final logger:Lorg/slf4j/Logger;

.field private final maxPerPeriod:J

.field private final nanosPerPeriod:J

.field private startNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "COAP_LOGGING_FILTER"

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/StringUtil;->getConfigurationBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/eclipse/californium/elements/util/FilteredLogger;->ENABLE:Z

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/Logger;JJ)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    .line 68
    iput-wide p2, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->maxPerPeriod:J

    .line 69
    iput-wide p4, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->nanosPerPeriod:J

    .line 70
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->startNanos:J

    return-void
.end method

.method private varargs log(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    .line 123
    sget-boolean v0, Lorg/eclipse/californium/elements/util/FilteredLogger;->ENABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 125
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v2

    .line 126
    iget-wide v4, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->nanosPerPeriod:J

    iget-wide v6, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->startNanos:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v2

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v6, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->counter:J

    iget-wide v8, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->maxPerPeriod:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 130
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->counter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->counter:J

    goto :goto_1

    .line 132
    :cond_1
    iput-wide v2, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->startNanos:J

    if-nez v0, :cond_2

    .line 134
    array-length v0, p3

    add-int/lit8 v2, v0, 0x1

    .line 135
    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 136
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->counter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p3, v0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ({} additional errors.)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move v0, v1

    .line 140
    :cond_2
    iput-wide v6, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->counter:J

    .line 142
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    .line 147
    sget-object v0, Lorg/eclipse/californium/elements/util/FilteredLogger$1;->$SwitchMap$org$slf4j$event$Level:[I

    invoke-virtual {p1}, Lorg/slf4j/event/Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    goto :goto_3

    .line 161
    :cond_4
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 158
    :cond_5
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 155
    :cond_6
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 152
    :cond_7
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 149
    :cond_8
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/elements/util/FilteredLogger;->log(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/elements/util/FilteredLogger;->log(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/elements/util/FilteredLogger;->log(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/FilteredLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/elements/util/FilteredLogger;->log(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
