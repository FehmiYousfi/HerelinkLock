.class public Lorg/mockito/internal/verification/checkers/AtLeastXNumberOfInvocationsChecker;
.super Ljava/lang/Object;
.source "AtLeastXNumberOfInvocationsChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAtLeastNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "I)V"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    return-void

    .line 29
    :cond_0
    invoke-static {p0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 30
    new-instance v1, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;

    invoke-direct {v1, p2, v0}, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;-><init>(II)V

    invoke-static {v1, p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0
.end method

.method public static checkAtLeastNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "I",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 46
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    return-void

    .line 42
    :cond_0
    invoke-static {p0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 43
    new-instance p3, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;

    invoke-direct {p3, p2, v0}, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;-><init>(II)V

    invoke-static {p3, p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0
.end method
