.class public Lorg/mockito/internal/invocation/InvocationMarker;
.super Ljava/lang/Object;
.source "InvocationMarker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 1
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

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/invocation/Invocation;

    .line 19
    invoke-static {v0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0

    .line 24
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->markVerified()V

    .line 25
    invoke-interface {p1, p0}, Lorg/mockito/invocation/MatchableInvocation;->captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V

    return-void
.end method

.method public static markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 0
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

    .line 29
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/invocation/Invocation;

    .line 32
    invoke-interface {p2, p1}, Lorg/mockito/internal/verification/api/InOrderContext;->markVerified(Lorg/mockito/invocation/Invocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
