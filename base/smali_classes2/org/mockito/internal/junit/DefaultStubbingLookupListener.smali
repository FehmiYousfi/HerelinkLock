.class Lorg/mockito/internal/junit/DefaultStubbingLookupListener;
.super Ljava/lang/Object;
.source "DefaultStubbingLookupListener.java"

# interfaces
.implements Lorg/mockito/internal/listeners/StubbingLookupListener;


# instance fields
.field private currentStrictness:Lorg/mockito/quality/Strictness;

.field private mismatchesReported:Z


# direct methods
.method constructor <init>(Lorg/mockito/quality/Strictness;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    return-void
.end method

.method private static potentialArgMismatches(Lorg/mockito/invocation/Invocation;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/Mockito;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/MockingDetails;->getStubbings()Ljava/util/Collection;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 53
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method isMismatchesReported()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->mismatchesReported:Z

    return v0
.end method

.method public onStubbingLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 37
    invoke-static {p1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->potentialArgMismatches(Lorg/mockito/invocation/Invocation;)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->mismatchesReported:Z

    .line 40
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->potentialStubbingProblem(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->markVerified()V

    :cond_2
    :goto_0
    return-void
.end method

.method setCurrentStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    return-void
.end method
