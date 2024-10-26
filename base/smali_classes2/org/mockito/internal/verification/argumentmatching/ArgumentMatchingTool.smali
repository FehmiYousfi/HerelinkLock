.class public Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;
.super Ljava/lang/Object;
.source "ArgumentMatchingTool.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List;[Ljava/lang/Object;)[Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-array p0, v2, [Ljava/lang/Integer;

    return-object p0

    .line 25
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/ArgumentMatcher;

    .line 28
    instance-of v4, v3, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    if-eqz v4, :cond_1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->safelyMatches(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->toStringEquals(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;->typeMatches(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/Integer;

    .line 36
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method private static safelyMatches(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 0

    .line 41
    :try_start_0
    invoke-interface {p0, p1}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method private static toStringEquals(Lorg/mockito/ArgumentMatcher;Ljava/lang/Object;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
