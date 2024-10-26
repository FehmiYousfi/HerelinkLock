.class Lorg/mockito/internal/junit/ArgMismatchFinder;
.super Ljava/lang/Object;
.source "ArgMismatchFinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getStubbingArgMismatches(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/StubbingArgMismatches;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/junit/StubbingArgMismatches;"
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/mockito/internal/junit/StubbingArgMismatches;

    invoke-direct {v0}, Lorg/mockito/internal/junit/StubbingArgMismatches;-><init>()V

    .line 18
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->find(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 19
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/stubbing/Stubbing;

    .line 24
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_2

    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/mockito/internal/junit/StubbingArgMismatches;->add(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method
