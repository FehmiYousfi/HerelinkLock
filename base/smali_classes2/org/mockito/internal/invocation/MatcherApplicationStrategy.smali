.class public Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
.super Ljava/lang/Object;
.source "MatcherApplicationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    }
.end annotation


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

.field private final matchingType:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;


# direct methods
.method private constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;",
            "Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->invocation:Lorg/mockito/invocation/Invocation;

    .line 29
    sget-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    if-ne p3, v0, :cond_0

    .line 30
    invoke-static {p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->varargLength(Lorg/mockito/invocation/Invocation;)I

    move-result p1

    .line 31
    invoke-static {p2, p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->appendLastMatcherNTimes(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchers:Ljava/util/List;

    goto :goto_0

    .line 33
    :cond_0
    iput-object p2, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchers:Ljava/util/List;

    .line 36
    :goto_0
    iput-object p3, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchingType:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-void
.end method

.method private static appendLastMatcherNTimes(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;I)",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->lastMatcher(Ljava/util/List;)Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_0

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getMatcherApplicationStrategyFor(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)",
            "Lorg/mockito/internal/invocation/MatcherApplicationStrategy;"
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->getMatcherApplicationType(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;

    invoke-direct {v1, p0, p1, v0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;-><init>(Lorg/mockito/invocation/Invocation;Ljava/util/List;Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;)V

    return-object v1
.end method

.method private static getMatcherApplicationType(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)",
            "Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;"
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    .line 91
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 95
    sget-object p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object p0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 98
    invoke-static {p1}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->isLastMatcherVargargMatcher(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 99
    sget-object p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object p0

    .line 102
    :cond_1
    sget-object p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object p0
.end method

.method private static isLastMatcherVargargMatcher(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)Z"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->lastMatcher(Ljava/util/List;)Lorg/mockito/ArgumentMatcher;

    move-result-object p0

    instance-of p0, p0, Lorg/mockito/internal/matchers/VarargMatcher;

    return p0
.end method

.method private static lastMatcher(Ljava/util/List;)Lorg/mockito/ArgumentMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;>;)",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;"
        }
    .end annotation

    .line 126
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mockito/ArgumentMatcher;

    return-object p0
.end method

.method private static varargLength(Lorg/mockito/invocation/Invocation;)I
    .locals 1

    .line 120
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    .line 121
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public forEachMatcherAndArgument(Lorg/mockito/internal/invocation/ArgumentMatcherAction;)Z
    .locals 5

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchingType:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    sget-object v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    .line 78
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 79
    iget-object v3, p0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy;->matchers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/ArgumentMatcher;

    .line 80
    aget-object v4, v0, v1

    .line 82
    invoke-interface {p1, v3, v4}, Lorg/mockito/internal/invocation/ArgumentMatcherAction;->apply(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
