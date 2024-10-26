.class public Lorg/mockito/internal/verification/checkers/NumberOfInvocationsChecker;
.super Ljava/lang/Object;
.source "NumberOfInvocationsChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;I)V
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

    .line 33
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-nez p2, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mockito/invocation/Invocation;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 42
    invoke-static {p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    if-lt p2, v0, :cond_2

    .line 49
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    return-void

    .line 45
    :cond_2
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mockito/invocation/Invocation;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 46
    invoke-static {p2, v0, p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0

    .line 37
    :cond_3
    invoke-static {p0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 38
    new-instance v1, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {v1, p2, v0}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    invoke-static {v1, p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0
.end method

.method public static checkNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
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

    .line 53
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findMatchingChunk(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-lt p2, v0, :cond_0

    .line 66
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    return-void

    .line 62
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mockito/invocation/Invocation;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 63
    invoke-static {p2, v0, p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0

    .line 58
    :cond_1
    invoke-static {p0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;

    move-result-object p0

    .line 59
    new-instance p3, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {p3, p2, v0}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    invoke-static {p3, p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0
.end method

.method public static checkNumberOfInvocationsNonGreedy(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 3
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 73
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstMatchingUnverifiedInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {v2, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 78
    invoke-interface {p3, v2}, Lorg/mockito/internal/verification/api/InOrderContext;->markVerified(Lorg/mockito/invocation/Invocation;)V

    .line 79
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance p0, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {p0, p2, v0}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    invoke-static {p0, p1, v1}, Lorg/mockito/internal/exceptions/Reporter;->tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method
