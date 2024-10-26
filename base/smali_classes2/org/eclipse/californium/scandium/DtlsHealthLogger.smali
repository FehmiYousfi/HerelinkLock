.class public Lorg/eclipse/californium/scandium/DtlsHealthLogger;
.super Lorg/eclipse/californium/elements/util/CounterStatisticManager;
.source "DtlsHealthLogger.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/DtlsHealth;
.implements Lorg/eclipse/californium/scandium/DtlsHealthExtended;


# static fields
.field public static final DROPPED_UDP_MESSAGES:Ljava/lang/String; = "dropped udp messages"

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected final align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

.field private final connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final pendingHandshakes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".health"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 64
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->pendingHandshakes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-direct {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    .line 48
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "connections"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 49
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "handshakes succeeded"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 51
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "handshakes failed"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 52
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "received records"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 53
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "dropped received records"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 55
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "sending records"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 56
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "dropped sending records"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 58
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "dropped udp messages"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 74
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6

    int-to-long v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 91
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->pendingHandshakes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-direct {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    .line 48
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "connections"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 49
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "handshakes succeeded"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 51
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "handshakes failed"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 52
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "received records"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 53
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "dropped received records"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 55
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "sending records"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 56
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "dropped sending records"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 58
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "dropped udp messages"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 92
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 97
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 98
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 99
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 100
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 102
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 103
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 5

    const-string v0, "{}"

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dtls statistic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v4}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->dump(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 126
    sget-object v1, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->transferCounter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 131
    sget-object v2, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->tag:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;III)V
    .locals 9

    const-string v0, " ("

    const-string v1, "{}"

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->transferCounter()V

    .line 139
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    sub-int/2addr p2, p3

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->set(J)V

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->isUsed()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 141
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "associations"

    const-string v6, "handshakes pending"

    .line 145
    iget-object v7, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-virtual {v7, v5}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->add(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    .line 146
    iget-object v7, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-virtual {v7, v6}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->add(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "dtls statistic:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v8, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-virtual {v8}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->getAlign()I

    move-result v8

    invoke-static {v8, v5, v3, v4}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->format(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " remaining capacity)."

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    invoke-virtual {p3}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->getAlign()I

    move-result p3

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->pendingHandshakes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p3, v6, v3, v4}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->format(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 154
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " without verify)."

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    iget-object p3, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p3}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isStarted()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 163
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-virtual {p0, v2, v7}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->dump(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 166
    sget-object p2, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->transferCounter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 171
    sget-object p3, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p3, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    return-void
.end method

.method public endHandshake(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->pendingHandshakes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->succeededHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->failedHandshakes:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 201
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method protected isUsed()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isUsed()Z

    move-result v0

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

.method public receivingRecord(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedReceivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->receivedRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    :goto_0
    return-void
.end method

.method public sendingRecord(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->droppedSentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->sentRecords:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    :goto_0
    return-void
.end method

.method public setConnections(I)V
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->connections:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->set(J)V

    return-void
.end method

.method public startHandshake()V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->pendingHandshakes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
