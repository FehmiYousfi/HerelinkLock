.class public Lorg/mockito/internal/verification/checkers/NumberOfInvocationsInOrderChecker;
.super Ljava/lang/Object;
.source "NumberOfInvocationsInOrderChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
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

    .line 26
    invoke-static {p1, p2, p3, p4}, Lorg/mockito/internal/invocation/InvocationsFinder;->findMatchingChunk(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-lt p3, v0, :cond_0

    .line 39
    invoke-static {p1, p2, p4}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    return-void

    .line 35
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p1

    .line 36
    invoke-static {p3, v0, p2, p1}, Lorg/mockito/internal/exceptions/Reporter;->tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;

    move-result-object p1

    .line 32
    new-instance p4, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {p4, p3, v0}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    invoke-static {p4, p2, p1}, Lorg/mockito/internal/exceptions/Reporter;->tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1
.end method
