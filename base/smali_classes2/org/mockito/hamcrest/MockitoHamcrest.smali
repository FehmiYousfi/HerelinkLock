.class public Lorg/mockito/hamcrest/MockitoHamcrest;
.super Ljava/lang/Object;
.source "MockitoHamcrest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argThat(Lorg/hamcrest/Matcher;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/hamcrest/MatcherGenericTypeExtractor;->genericTypeOfMatcher(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static booleanThat(Lorg/hamcrest/Matcher;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 89
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static byteThat(Lorg/hamcrest/Matcher;)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Byte;",
            ">;)B"
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static charThat(Lorg/hamcrest/Matcher;)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Character;",
            ">;)C"
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static doubleThat(Lorg/hamcrest/Matcher;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 173
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static floatThat(Lorg/hamcrest/Matcher;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static intThat(Lorg/hamcrest/Matcher;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static longThat(Lorg/hamcrest/Matcher;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 145
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static reportMatcher(Lorg/hamcrest/Matcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;

    invoke-direct {v1, p0}, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    return-void
.end method

.method public static shortThat(Lorg/hamcrest/Matcher;)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)S"
        }
    .end annotation

    .line 117
    invoke-static {p0}, Lorg/mockito/hamcrest/MockitoHamcrest;->reportMatcher(Lorg/hamcrest/Matcher;)V

    const/4 p0, 0x0

    return p0
.end method
