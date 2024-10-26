.class public Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;
.super Lorg/eclipse/californium/scandium/DtlsHealthLogger;
.source "DtlsClusterHealthLogger.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/DtlsClusterHealth;


# static fields
.field public static final DROPPED_INTERNAL_UDP_MESSAGES:Ljava/lang/String; = "dropped internal udp"


# instance fields
.field private final backwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final badBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final dropBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final droppedInternalMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final processedForwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final receivingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final sendBackwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

.field private final sendingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 59
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "forwarded"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 39
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "process forwarded"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->processedForwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 41
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "bad forward"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 42
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "drop forward"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 43
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "backwarded"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->backwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 44
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "send backwarded"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendBackwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 45
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "bad backward"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 46
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "drop backward"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 48
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "sent cluster mgmt"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 50
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "recv cluster mgmt"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->receivingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 52
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string v1, "dropped internal udp"

    invoke-direct {p1, v1, v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->droppedInternalMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 69
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 38
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "forwarded"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 39
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "process forwarded"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->processedForwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 41
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "bad forward"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 42
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "drop forward"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 43
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "backwarded"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->backwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 44
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "send backwarded"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendBackwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 45
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "bad backward"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 46
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "drop backward"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 48
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "sent cluster mgmt"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 50
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "recv cluster mgmt"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->receivingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 52
    new-instance p1, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->align:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    const-string p3, "dropped internal udp"

    invoke-direct {p1, p3, p2}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;-><init>(Ljava/lang/String;Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;)V

    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->droppedInternalMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    .line 87
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 92
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->processedForwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->backwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 96
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendBackwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 97
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 98
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 99
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 100
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->receivingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->droppedInternalMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)V

    return-void
.end method


# virtual methods
.method public backwardMessage()V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->backwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public badBackwardMessage()V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public badForwardMessage()V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public dropBackwardMessage()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public dropForwardMessage()V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 109
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->processedForwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->backwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendBackwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropBackwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->receivingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->droppedInternalMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->droppedInternalMessages:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public forwardMessage()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method protected isUsed()Z
    .locals 1

    .line 105
    invoke-super {p0}, Lorg/eclipse/californium/scandium/DtlsHealthLogger;->isUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->forwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->dropForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->isUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->badForwardMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

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

.method public processForwardedMessage()V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->processedForwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public receivingClusterManagementMessage()V
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->receivingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public sendBackwardedMessage()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendBackwardedMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method

.method public sendingClusterManagementMessage()V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsClusterHealthLogger;->sendingClusterManagementMessage:Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->increment()J

    return-void
.end method
