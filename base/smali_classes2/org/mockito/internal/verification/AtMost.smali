.class public Lorg/mockito/internal/verification/AtMost;
.super Ljava/lang/Object;
.source "AtMost.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final maxNumberOfInvocations:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 29
    iput p1, p0, Lorg/mockito/internal/verification/AtMost;->maxNumberOfInvocations:I

    return-void

    .line 27
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "Negative value is not allowed here"

    invoke-direct {p1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeAlreadyVerified(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/invocation/Invocation;

    .line 54
    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3

    .line 33
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 38
    iget v2, p0, Lorg/mockito/internal/verification/AtMost;->maxNumberOfInvocations:I

    if-gt v1, v2, :cond_0

    .line 42
    invoke-direct {p0, v0}, Lorg/mockito/internal/verification/AtMost;->removeAlreadyVerified(Ljava/util/List;)V

    .line 43
    invoke-static {v0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    return-void

    .line 39
    :cond_0
    invoke-static {v2, v1}, Lorg/mockito/internal/exceptions/Reporter;->wantedAtMostX(II)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1
.end method
