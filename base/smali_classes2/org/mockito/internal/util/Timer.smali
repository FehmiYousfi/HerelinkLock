.class public Lorg/mockito/internal/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final durationMillis:J

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lorg/mockito/internal/util/Timer;->startTime:J

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/util/Timer;->validateInput(J)V

    .line 16
    iput-wide p1, p0, Lorg/mockito/internal/util/Timer;->durationMillis:J

    return-void
.end method

.method private validateInput(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->cannotCreateTimerWithNegativeDurationTime(J)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public duration()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/mockito/internal/util/Timer;->durationMillis:J

    return-wide v0
.end method

.method public isCounting()Z
    .locals 4

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mockito/internal/util/Timer;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/mockito/internal/util/Timer;->durationMillis:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mockito/internal/util/Timer;->startTime:J

    return-void
.end method
