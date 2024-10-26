.class public Lorg/mockito/internal/invocation/InvocationMatcher;
.super Ljava/lang/Object;
.source "InvocationMatcher.java"

# interfaces
.implements Lorg/mockito/invocation/MatchableInvocation;
.implements Lorg/mockito/invocation/DescribedInvocation;
.implements Ljava/io/Serializable;


# instance fields
.field private final invocation:Lorg/mockito/invocation/Invocation;

.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/Invocation;)V
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->argumentsToMatchers([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    goto :goto_0

    .line 41
    :cond_0
    iput-object p2, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    :goto_0
    return-void
.end method

.method private argumentsMatch(Lorg/mockito/invocation/Invocation;)Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getMatchers()Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->getMatcherApplicationStrategyFor(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy;

    move-result-object p1

    invoke-static {}, Lorg/mockito/internal/invocation/TypeSafeMatching;->matchesTypeSafe()Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->forEachMatcherAndArgument(Lorg/mockito/internal/invocation/ArgumentMatcherAction;)Z

    move-result p1

    return p1
.end method

.method private captureArgument()Lorg/mockito/internal/invocation/ArgumentMatcherAction;
    .locals 1

    .line 136
    new-instance v0, Lorg/mockito/internal/invocation/InvocationMatcher$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/invocation/InvocationMatcher$1;-><init>(Lorg/mockito/internal/invocation/InvocationMatcher;)V

    return-object v0
.end method

.method public static createFrom(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/internal/invocation/InvocationMatcher;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 53
    new-instance v2, Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {v2, v1}, Lorg/mockito/internal/invocation/InvocationMatcher;-><init>(Lorg/mockito/invocation/Invocation;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->getMatcherApplicationStrategyFor(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy;

    move-result-object p1

    .line 132
    invoke-direct {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->captureArgument()Lorg/mockito/internal/invocation/ArgumentMatcherAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->forEachMatcherAndArgument(Lorg/mockito/internal/invocation/ArgumentMatcherAction;)Z

    return-void
.end method

.method public getInvocation()Lorg/mockito/invocation/Invocation;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    return-object v0
.end method

.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public hasSameMethod(Lorg/mockito/invocation/Invocation;)Z
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    .line 115
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 119
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasSimilarMethod(Lorg/mockito/invocation/Invocation;)Z
    .locals 3

    .line 89
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_2

    return v1

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->hasSameMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 105
    :cond_3
    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->argumentsMatch(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public matches(Lorg/mockito/invocation/Invocation;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->hasSameMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->argumentsMatch(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->matchers:Ljava/util/List;

    iget-object v2, p0, Lorg/mockito/internal/invocation/InvocationMatcher;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
