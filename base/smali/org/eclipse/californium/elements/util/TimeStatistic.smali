.class public Lorg/eclipse/californium/elements/util/TimeStatistic;
.super Ljava/lang/Object;
.source "TimeStatistic.java"


# static fields
.field private static final NANOS_TO_MILLIS:Lorg/eclipse/californium/elements/util/Statistic$Scale;


# instance fields
.field private final statistic:Lorg/eclipse/californium/elements/util/Statistic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/eclipse/californium/elements/util/TimeStatistic$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/TimeStatistic$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/TimeStatistic;->NANOS_TO_MILLIS:Lorg/eclipse/californium/elements/util/Statistic$Scale;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 54
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p3

    .line 55
    new-instance p5, Lorg/eclipse/californium/elements/util/Statistic;

    invoke-direct {p5, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/util/Statistic;-><init>(JJ)V

    iput-object p5, p0, Lorg/eclipse/californium/elements/util/TimeStatistic;->statistic:Lorg/eclipse/californium/elements/util/Statistic;

    return-void
.end method


# virtual methods
.method public add(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 66
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 67
    iget-object p3, p0, Lorg/eclipse/californium/elements/util/TimeStatistic;->statistic:Lorg/eclipse/californium/elements/util/Statistic;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/californium/elements/util/Statistic;->add(J)V

    :cond_0
    return-void
.end method

.method public available()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/TimeStatistic;->statistic:Lorg/eclipse/californium/elements/util/Statistic;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/Statistic;->available()Z

    move-result v0

    return v0
.end method

.method public varargs getSummary([I)Lorg/eclipse/californium/elements/util/Statistic$Summary;
    .locals 2

    .line 103
    new-instance v0, Lorg/eclipse/californium/elements/util/Statistic$Summary;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/TimeStatistic;->statistic:Lorg/eclipse/californium/elements/util/Statistic;

    invoke-virtual {v1, p1}, Lorg/eclipse/californium/elements/util/Statistic;->getSummary([I)Lorg/eclipse/californium/elements/util/Statistic$Summary;

    move-result-object p1

    sget-object v1, Lorg/eclipse/californium/elements/util/TimeStatistic;->NANOS_TO_MILLIS:Lorg/eclipse/californium/elements/util/Statistic$Scale;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/californium/elements/util/Statistic$Summary;-><init>(Lorg/eclipse/californium/elements/util/Statistic$Summary;Lorg/eclipse/californium/elements/util/Statistic$Scale;)V

    return-object v0
.end method

.method public getSummaryAsText()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 89
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/TimeStatistic;->getSummary([I)Lorg/eclipse/californium/elements/util/Statistic$Summary;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/util/Statistic$Summary;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3b6
        0x3de
        0x3e7
    .end array-data
.end method
