.class public Lch/qos/logback/core/util/InterruptUtil;
.super Lch/qos/logback/core/spi/ContextAwareBase;


# instance fields
.field final previouslyInterrupted:Z


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    invoke-virtual {p0, p1}, Lch/qos/logback/core/util/InterruptUtil;->setContext(Lch/qos/logback/core/Context;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    iput-boolean p1, p0, Lch/qos/logback/core/util/InterruptUtil;->previouslyInterrupted:Z

    return-void
.end method


# virtual methods
.method public maskInterruptFlag()V
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/util/InterruptUtil;->previouslyInterrupted:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_0
    return-void
.end method

.method public unmaskInterruptFlag()V
    .locals 2

    iget-boolean v0, p0, Lch/qos/logback/core/util/InterruptUtil;->previouslyInterrupted:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to intrreupt current thread"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/util/InterruptUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
