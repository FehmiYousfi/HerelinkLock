.class public Lorg/eclipse/californium/elements/util/Statistic;
.super Ljava/lang/Object;
.source "Statistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/Statistic$Scale;,
        Lorg/eclipse/californium/elements/util/Statistic$Summary;
    }
.end annotation


# instance fields
.field private final invalidSum:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final maximum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final slotWidth:J

.field private final statistic:[Ljava/util/concurrent/atomic/AtomicLong;

.field private final sum:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->sum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->invalidSum:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    div-long/2addr p1, p3

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 64
    new-array p2, p1, [Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iput-wide p3, p0, Lorg/eclipse/californium/elements/util/Statistic;->slotWidth:J

    return-void
.end method

.method private getUpperLimit(I)J
    .locals 6

    .line 104
    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->slotWidth:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-long v4, p1

    mul-long/2addr v4, v0

    sub-long/2addr v4, v2

    return-wide v4

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method


# virtual methods
.method public add(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 78
    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/Statistic;->slotWidth:J

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 79
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_0

    .line 80
    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    .line 82
    :cond_0
    array-length v2, v3

    sub-int/2addr v2, v5

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 84
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic;->invalidSum:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic;->sum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->invalidSum:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    :goto_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 89
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public available()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 118
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 119
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public varargs getSummary([I)Lorg/eclipse/californium/elements/util/Statistic$Summary;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    .line 147
    :goto_0
    iget-object v7, v0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 148
    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_0

    add-long/2addr v4, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long v3, v4, v1

    if-lez v3, :cond_b

    .line 154
    iget-object v3, v0, Lorg/eclipse/californium/elements/util/Statistic;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    if-eqz v6, :cond_8

    .line 157
    array-length v9, v6

    new-array v9, v9, [J

    .line 158
    array-length v10, v6

    if-lez v10, :cond_9

    .line 159
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 160
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    .line 161
    aget v11, v6, v10

    const-string v12, " is not in [0...999]%%"

    const-string v13, "line "

    if-ltz v11, :cond_7

    aget v11, v6, v10

    const/16 v14, 0x3e7

    if-gt v11, v14, :cond_7

    .line 165
    aget v11, v6, v10

    rsub-int v11, v11, 0x3e8

    int-to-long v14, v11

    mul-long/2addr v14, v4

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    .line 167
    iget-object v11, v0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v18, v14

    move-wide v14, v1

    :goto_1
    if-ltz v11, :cond_9

    .line 168
    iget-object v3, v0, Lorg/eclipse/californium/elements/util/Statistic;->statistic:[Ljava/util/concurrent/atomic/AtomicLong;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v20

    cmp-long v3, v20, v1

    if-lez v3, :cond_6

    add-long v20, v14, v20

    :goto_2
    cmp-long v3, v14, v18

    if-gtz v3, :cond_4

    cmp-long v3, v20, v18

    if-lez v3, :cond_4

    .line 172
    invoke-direct {v0, v11}, Lorg/eclipse/californium/elements/util/Statistic;->getUpperLimit(I)J

    move-result-wide v22

    cmp-long v3, v22, v7

    if-lez v3, :cond_2

    move-wide/from16 v22, v7

    .line 176
    :cond_2
    aput-wide v22, v9, v10

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    .line 179
    aget v3, v6, v10

    if-ltz v3, :cond_3

    aget v3, v6, v10

    const/16 v1, 0x3e7

    if-gt v3, v1, :cond_3

    .line 183
    aget v2, v6, v10

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v2, v4

    div-long v18, v2, v16

    const-wide/16 v1, 0x0

    goto :goto_2

    .line 180
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v6, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v1, 0x3e7

    if-gez v10, :cond_5

    goto :goto_4

    :cond_5
    move-wide/from16 v14, v20

    goto :goto_3

    :cond_6
    const/16 v1, 0x3e7

    :goto_3
    add-int/lit8 v11, v11, -0x1

    const-wide/16 v1, 0x0

    goto :goto_1

    .line 162
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v6, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/4 v9, 0x0

    .line 196
    :cond_9
    :goto_4
    new-instance v10, Lorg/eclipse/californium/elements/util/Statistic$Summary;

    long-to-int v2, v4

    iget-object v1, v0, Lorg/eclipse/californium/elements/util/Statistic;->invalidSum:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lorg/eclipse/californium/elements/util/Statistic;->sum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    :goto_5
    move-object v1, v10

    move-wide v4, v7

    move-object/from16 v6, p1

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/californium/elements/util/Statistic$Summary;-><init>(ILjava/lang/Long;J[I[J)V

    return-object v10

    .line 198
    :cond_b
    new-instance v1, Lorg/eclipse/californium/elements/util/Statistic$Summary;

    invoke-direct {v1}, Lorg/eclipse/californium/elements/util/Statistic$Summary;-><init>()V

    return-object v1
.end method

.method public getSummaryAsText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 134
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/Statistic;->getSummary([I)Lorg/eclipse/californium/elements/util/Statistic$Summary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/Statistic$Summary;->toString()Ljava/lang/String;

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
