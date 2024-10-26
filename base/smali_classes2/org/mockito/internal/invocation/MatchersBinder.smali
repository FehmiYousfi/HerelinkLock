.class public Lorg/mockito/internal/invocation/MatchersBinder;
.super Ljava/lang/Object;
.source "MatchersBinder.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateMatchers(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 37
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->invalidUseOfMatchers(ILjava/util/List;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;
    .locals 2

    .line 24
    invoke-interface {p1}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->pullLocalizedMatchers()Ljava/util/List;

    move-result-object p1

    .line 25
    invoke-direct {p0, p2, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->validateMatchers(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/matchers/LocalizedMatcher;

    .line 29
    invoke-virtual {v1}, Lorg/mockito/internal/matchers/LocalizedMatcher;->getMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {p1, p2, v0}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    return-object p1
.end method
