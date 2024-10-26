.class public Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;
.super Ljava/lang/Object;
.source "MissingInvocationChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findSimilarInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0

    .line 41
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getMatchers()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List;[Ljava/lang/Object;)[Ljava/lang/Integer;

    move-result-object p0

    .line 42
    new-instance v1, Lorg/mockito/internal/reporting/SmartPrinter;

    invoke-direct {v1, p1, v0, p0}, Lorg/mockito/internal/reporting/SmartPrinter;-><init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/invocation/Invocation;[Ljava/lang/Integer;)V

    .line 43
    invoke-virtual {v1}, Lorg/mockito/internal/reporting/SmartPrinter;->getWanted()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lorg/mockito/internal/reporting/SmartPrinter;->getActual()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/invocation/Location;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method public static checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->findPreviousVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;

    move-result-object p2

    if-nez p2, :cond_1

    .line 59
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    return-void

    .line 56
    :cond_1
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p0

    throw p0
.end method
