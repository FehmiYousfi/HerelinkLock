.class public Lorg/mockito/internal/debugging/WarningsFinder;
.super Ljava/lang/Object;
.source "WarningsFinder.java"


# instance fields
.field private final baseAllInvocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/internal/invocation/InvocationMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final baseUnusedStubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/invocation/InvocationMatcher;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/mockito/internal/debugging/WarningsFinder;->baseUnusedStubs:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lorg/mockito/internal/debugging/WarningsFinder;->baseAllInvocations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public find(Lorg/mockito/internal/debugging/FindingsListener;)V
    .locals 7

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/mockito/internal/debugging/WarningsFinder;->baseUnusedStubs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 25
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/mockito/internal/debugging/WarningsFinder;->baseAllInvocations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 28
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mockito/internal/invocation/InvocationMatcher;

    .line 33
    invoke-virtual {v5, v3}, Lorg/mockito/internal/invocation/InvocationMatcher;->hasSimilarMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 34
    invoke-interface {p1, v3, v5}, Lorg/mockito/internal/debugging/FindingsListener;->foundStubCalledWithDifferentArgs(Lorg/mockito/invocation/Invocation;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 42
    invoke-interface {p1, v2}, Lorg/mockito/internal/debugging/FindingsListener;->foundUnusedStub(Lorg/mockito/invocation/Invocation;)V

    goto :goto_1

    .line 45
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/invocation/InvocationMatcher;

    .line 46
    invoke-interface {p1, v1}, Lorg/mockito/internal/debugging/FindingsListener;->foundUnstubbed(Lorg/mockito/internal/invocation/InvocationMatcher;)V

    goto :goto_2

    :cond_4
    return-void
.end method
