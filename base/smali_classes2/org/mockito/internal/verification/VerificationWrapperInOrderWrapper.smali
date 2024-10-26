.class public Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;
.super Ljava/lang/Object;
.source "VerificationWrapperInOrderWrapper.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final delegate:Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/internal/InOrderImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/VerificationWrapper<",
            "*>;",
            "Lorg/mockito/internal/InOrderImpl;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lorg/mockito/internal/verification/VerificationWrapper;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    .line 19
    invoke-direct {p0, p1, v0, p2}, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->wrapInOrder(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/InOrderImpl;)Lorg/mockito/verification/VerificationMode;

    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    return-void
.end method

.method private wrapInOrder(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/InOrderImpl;)Lorg/mockito/verification/VerificationMode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/VerificationWrapper<",
            "*>;",
            "Lorg/mockito/verification/VerificationMode;",
            "Lorg/mockito/internal/InOrderImpl;",
            ")",
            "Lorg/mockito/verification/VerificationMode;"
        }
    .end annotation

    .line 35
    instance-of v0, p2, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    if-eqz v0, :cond_0

    .line 36
    check-cast p2, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    .line 37
    new-instance p1, Lorg/mockito/internal/verification/InOrderWrapper;

    invoke-direct {p1, p2, p3}, Lorg/mockito/internal/verification/InOrderWrapper;-><init>(Lorg/mockito/internal/verification/api/VerificationInOrderMode;Lorg/mockito/internal/InOrderImpl;)V

    return-object p1

    .line 40
    :cond_0
    instance-of v0, p2, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    if-eqz v0, :cond_1

    .line 41
    move-object v0, p2

    check-cast v0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    .line 42
    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->isReturnOnSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    new-instance p2, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->getPollingPeriodMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->getTimer()Lorg/mockito/internal/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mockito/internal/util/Timer;->duration()J

    move-result-wide v5

    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->getDelegate()Lorg/mockito/verification/VerificationMode;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->wrapInOrder(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/InOrderImpl;)Lorg/mockito/verification/VerificationMode;

    move-result-object v7

    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->isReturnOnSuccess()Z

    move-result v8

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    return-object p2

    .line 50
    :cond_1
    new-instance p3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not implemented to work with InOrder wrapped inside a "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    return-void
.end method
