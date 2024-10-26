.class public Lorg/mockito/internal/verification/VerificationOverTimeImpl;
.super Ljava/lang/Object;
.source "VerificationOverTimeImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final delegate:Lorg/mockito/verification/VerificationMode;

.field private final pollingPeriodMillis:J

.field private final returnOnSuccess:Z

.field private final timer:Lorg/mockito/internal/util/Timer;


# direct methods
.method public constructor <init>(JJLorg/mockito/verification/VerificationMode;Z)V
    .locals 6

    .line 36
    new-instance v5, Lorg/mockito/internal/util/Timer;

    invoke-direct {v5, p3, p4}, Lorg/mockito/internal/util/Timer;-><init>(J)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JLorg/mockito/verification/VerificationMode;ZLorg/mockito/internal/util/Timer;)V

    return-void
.end method

.method public constructor <init>(JLorg/mockito/verification/VerificationMode;ZLorg/mockito/internal/util/Timer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    .line 52
    iput-object p3, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    .line 53
    iput-boolean p4, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z

    .line 54
    iput-object p5, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    return-void
.end method

.method private handleVerifyException(Ljava/lang/AssertionError;)Ljava/lang/AssertionError;
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->canRecoverFromFailure(Lorg/mockito/verification/VerificationMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-wide v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->sleep(J)V

    return-object p1

    .line 103
    :cond_0
    throw p1
.end method

.method private sleep(J)V
    .locals 1

    .line 117
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Thread sleep has been interrupted"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected canRecoverFromFailure(Lorg/mockito/verification/VerificationMode;)Z
    .locals 1

    .line 108
    instance-of v0, p1, Lorg/mockito/internal/verification/AtMost;

    if-nez v0, :cond_0

    instance-of p1, p1, Lorg/mockito/internal/verification/NoMoreInteractions;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copyWithVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/internal/verification/VerificationOverTimeImpl;
    .locals 8

    .line 112
    new-instance v7, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    iget-wide v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    invoke-virtual {v0}, Lorg/mockito/internal/util/Timer;->duration()J

    move-result-wide v3

    iget-boolean v6, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    return-object v7
.end method

.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    return-object v0
.end method

.method public getPollingPeriodMillis()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    return-wide v0
.end method

.method public getTimer()Lorg/mockito/internal/util/Timer;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    return-object v0
.end method

.method public isReturnOnSuccess()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z

    return v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    invoke-virtual {v0}, Lorg/mockito/internal/util/Timer;->start()V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 76
    :goto_0
    iget-object v2, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    invoke-virtual {v2}, Lorg/mockito/internal/util/Timer;->isCounting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v1, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 80
    iget-boolean v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoAssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-void

    :catch_0
    move-exception v1

    .line 89
    invoke-direct {p0, v1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->handleVerifyException(Ljava/lang/AssertionError;)Ljava/lang/AssertionError;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 86
    invoke-direct {p0, v1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->handleVerifyException(Ljava/lang/AssertionError;)Ljava/lang/AssertionError;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 94
    :cond_2
    throw v1
.end method
