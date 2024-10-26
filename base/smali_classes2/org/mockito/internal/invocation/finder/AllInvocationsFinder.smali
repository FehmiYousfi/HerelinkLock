.class public Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;
.super Ljava/lang/Object;
.source "AllInvocationsFinder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/mockito/internal/invocation/InvocationComparator;

    invoke-direct {v1}, Lorg/mockito/internal/invocation/InvocationComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 29
    new-instance v2, Lorg/mockito/internal/util/DefaultMockingDetails;

    invoke-direct {v2, v1}, Lorg/mockito/internal/util/DefaultMockingDetails;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/mockito/internal/util/DefaultMockingDetails;->getInvocations()Ljava/util/Collection;

    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/util/Set<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/mockito/internal/stubbing/StubbingComparator;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/StubbingComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 45
    new-instance v2, Lorg/mockito/internal/util/DefaultMockingDetails;

    invoke-direct {v2, v1}, Lorg/mockito/internal/util/DefaultMockingDetails;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/mockito/internal/util/DefaultMockingDetails;->getStubbings()Ljava/util/Collection;

    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
