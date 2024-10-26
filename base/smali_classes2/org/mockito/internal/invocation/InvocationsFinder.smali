.class public Lorg/mockito/internal/invocation/InvocationsFinder;
.super Ljava/lang/Object;
.source "InvocationsFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;,
        Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object p0

    .line 29
    new-instance p2, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;-><init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/invocation/InvocationsFinder$1;)V

    invoke-static {p0, p2}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static findFirstMatchingUnverifiedInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 71
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mockito/invocation/Invocation;

    .line 72
    invoke-interface {p1, p2}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findFirstUnverified(Ljava/util/List;)Lorg/mockito/invocation/Invocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverified(Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;

    move-result-object p0

    return-object p0
.end method

.method static findFirstUnverified(Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/invocation/Invocation;

    if-eqz p1, :cond_2

    .line 102
    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 103
    :goto_1
    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->isVerified()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findFirstUnverifiedInOrder(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;)Lorg/mockito/invocation/Invocation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 182
    invoke-interface {p0, v2}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;-><init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/invocation/InvocationsFinder$1;)V

    invoke-static {p0, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static findMatchingChunk(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "I",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getFirstMatchingChunk(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 52
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static findPreviousVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;

    invoke-direct {v0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;-><init>(Lorg/mockito/internal/verification/api/InOrderContext;)V

    invoke-static {p0, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mockito/invocation/Invocation;

    return-object p0
.end method

.method public static findSimilarInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Lorg/mockito/invocation/Invocation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 82
    invoke-interface {p1, v1}, Lorg/mockito/invocation/MatchableInvocation;->hasSimilarMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 88
    :cond_2
    invoke-interface {p1, v1}, Lorg/mockito/invocation/MatchableInvocation;->hasSameMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static getFirstMatchingChunk(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 61
    invoke-interface {p0, v1}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public static getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/invocation/Location;"
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mockito/invocation/Invocation;

    .line 115
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    return-object p0
.end method

.method private static removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 132
    invoke-interface {p1, v1}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
