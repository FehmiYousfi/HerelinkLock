.class public Lorg/mockito/internal/junit/UnusedStubbingsFinder;
.super Ljava/lang/Object;
.source "UnusedStubbingsFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnusedStubbings(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/UnusedStubbings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/junit/UnusedStubbings;"
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 27
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbingsFinder$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder$1;-><init>(Lorg/mockito/internal/junit/UnusedStubbingsFinder;)V

    invoke-static {p1, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p1

    .line 33
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbings;

    invoke-direct {v0, p1}, Lorg/mockito/internal/junit/UnusedStubbings;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUnusedStubbingsByLocation(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 64
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/stubbing/Stubbing;

    .line 65
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    invoke-interface {v2}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
