.class public Lorg/eclipse/californium/elements/util/Statistic$Summary;
.super Ljava/lang/Object;
.source "Statistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Statistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Summary"
.end annotation


# instance fields
.field private final count:I

.field private final maximum:J

.field private final overallSum:Ljava/lang/Long;

.field private final percentileValues:[J

.field private final percentiles:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    const-wide/16 v0, 0x0

    .line 235
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    .line 236
    iput-wide v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->maximum:J

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    .line 238
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    return-void
.end method

.method public constructor <init>(ILjava/lang/Long;J[I[J)V
    .locals 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    .line 261
    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Number of values must match percentiles! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " != "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p6

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "values must not be null, if percentiles are provided!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_2
    :goto_0
    iput p1, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    .line 267
    iput-object p2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    .line 268
    iput-wide p3, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->maximum:J

    .line 269
    iput-object p5, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    .line 270
    iput-object p6, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/util/Statistic$Summary;Lorg/eclipse/californium/elements/util/Statistic$Scale;)V
    .locals 6

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iget v0, p1, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    iput v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    .line 283
    iget-object v0, p1, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lorg/eclipse/californium/elements/util/Statistic$Scale;->scale(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    goto :goto_0

    .line 286
    :cond_0
    iput-object v1, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    .line 288
    :goto_0
    iget-wide v2, p1, Lorg/eclipse/californium/elements/util/Statistic$Summary;->maximum:J

    invoke-interface {p2, v2, v3}, Lorg/eclipse/californium/elements/util/Statistic$Scale;->scale(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->maximum:J

    .line 289
    iget-object v0, p1, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    iput-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    .line 290
    iget-object v0, p1, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    if-eqz v0, :cond_1

    .line 291
    array-length v0, v0

    .line 292
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 294
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    iget-object v3, p1, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    aget-wide v4, v3, v1

    invoke-interface {p2, v4, v5}, Lorg/eclipse/californium/elements/util/Statistic$Scale;->scale(J)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_1
    iput-object v1, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    :cond_2
    return-void
.end method


# virtual methods
.method public getAverage()D
    .locals 4

    .line 316
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 319
    :cond_0
    iget v1, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    if-nez v1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iget v2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .line 307
    iget v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    return v0
.end method

.method public getMaximum()J
    .locals 2

    .line 337
    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->maximum:J

    return-wide v0
.end method

.method public getOverallSum()Ljava/lang/Long;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    return-object v0
.end method

.method public getPercentileCount()I
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPercentilePerMill(I)J
    .locals 2

    .line 357
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    if-eqz v0, :cond_0

    aget p1, v0, p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getPercentileValue(I)J
    .locals 3

    .line 367
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    if-eqz v0, :cond_0

    aget-wide v1, v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method public scale(Lorg/eclipse/californium/elements/util/Statistic$Scale;)Lorg/eclipse/californium/elements/util/Statistic$Summary;
    .locals 1

    .line 424
    new-instance v0, Lorg/eclipse/californium/elements/util/Statistic$Summary;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/californium/elements/util/Statistic$Summary;-><init>(Lorg/eclipse/californium/elements/util/Statistic$Summary;Lorg/eclipse/californium/elements/util/Statistic$Scale;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 376
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/Statistic$Summary;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 386
    iget v0, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    if-lez v0, :cond_4

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 388
    iget v3, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Statistic$Summary;->getAverage()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_0

    .line 392
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->overallSum:Ljava/lang/Long;

    aput-object v6, v5, v4

    aput-object p1, v5, v1

    const-string v6, ", sum.: %d%s"

    invoke-static {v2, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 394
    :cond_0
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v7, v4

    aput-object p1, v7, v1

    const-string v5, ", avg.: %.2f%s"

    invoke-static {v2, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    if-eqz v2, :cond_3

    move v2, v4

    .line 398
    :goto_1
    iget-object v5, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentiles:[I

    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 399
    aget v6, v5, v2

    div-int/lit8 v6, v6, 0xa

    .line 400
    aget v5, v5, v2

    rem-int/lit8 v5, v5, 0xa

    const/4 v7, 0x3

    if-lez v5, :cond_2

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 402
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v1

    iget-object v5, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    aget-wide v9, v5, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v3

    aput-object p1, v8, v7

    const-string v5, ", %d.%d%%: %d%s"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-array v5, v7, [Ljava/lang/Object;

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->percentileValues:[J

    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object p1, v5, v3

    const-string v6, ", %d%%: %d%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-array v2, v3, [Ljava/lang/Object;

    .line 408
    iget-wide v5, p0, Lorg/eclipse/californium/elements/util/Statistic$Summary;->maximum:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v1

    const-string p1, ", max.: %d%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "no values available!"

    return-object p1
.end method
