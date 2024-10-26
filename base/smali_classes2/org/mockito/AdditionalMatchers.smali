.class public Lorg/mockito/AdditionalMatchers;
.super Ljava/lang/Object;
.source "AdditionalMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(BB)B
    .locals 0

    .line 629
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return p0
.end method

.method public static and(CC)C
    .locals 0

    .line 645
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return p0
.end method

.method public static and(DD)D
    .locals 0

    .line 661
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static and(FF)F
    .locals 0

    .line 677
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return p0
.end method

.method public static and(II)I
    .locals 0

    .line 693
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return p0
.end method

.method public static and(JJ)J
    .locals 0

    .line 709
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static and(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 743
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static and(SS)S
    .locals 0

    .line 725
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return p0
.end method

.method public static and(ZZ)Z
    .locals 0

    .line 613
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportAnd()V

    const/4 p0, 0x0

    return p0
.end method

.method public static aryEq([B)[B
    .locals 1

    .line 582
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([C)[C
    .locals 1

    .line 567
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([D)[D
    .locals 1

    .line 552
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([F)[F
    .locals 1

    .line 537
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([I)[I
    .locals 1

    .line 522
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([J)[J
    .locals 1

    .line 507
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([S)[S
    .locals 1

    .line 492
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static aryEq([Z)[Z
    .locals 1

    .line 597
    new-instance v0, Lorg/mockito/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static cmpEq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 447
    new-instance v0, Lorg/mockito/internal/matchers/CompareEqual;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/CompareEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static eq(DD)D
    .locals 1

    .line 1034
    new-instance v0, Lorg/mockito/internal/matchers/EqualsWithDelta;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/matchers/EqualsWithDelta;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static eq(FF)F
    .locals 1

    .line 1051
    new-instance v0, Lorg/mockito/internal/matchers/EqualsWithDelta;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/matchers/EqualsWithDelta;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 460
    new-instance v0, Lorg/mockito/internal/matchers/Find;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Find;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static geq(B)B
    .locals 1

    .line 68
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static geq(D)D
    .locals 1

    .line 82
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static geq(F)F
    .locals 1

    .line 96
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static geq(I)I
    .locals 1

    .line 110
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static geq(J)J
    .locals 1

    .line 124
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static geq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static geq(S)S
    .locals 1

    .line 138
    new-instance v0, Lorg/mockito/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static gt(B)B
    .locals 1

    .line 264
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static gt(D)D
    .locals 1

    .line 278
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static gt(F)F
    .locals 1

    .line 292
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static gt(I)I
    .locals 1

    .line 306
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static gt(J)J
    .locals 1

    .line 320
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static gt(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static gt(S)S
    .locals 1

    .line 334
    new-instance v0, Lorg/mockito/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static leq(B)B
    .locals 1

    .line 166
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static leq(D)D
    .locals 1

    .line 180
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static leq(F)F
    .locals 1

    .line 194
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static leq(I)I
    .locals 1

    .line 208
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static leq(J)J
    .locals 1

    .line 222
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static leq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static leq(S)S
    .locals 1

    .line 236
    new-instance v0, Lorg/mockito/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static lt(B)B
    .locals 1

    .line 362
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static lt(D)D
    .locals 1

    .line 376
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static lt(F)F
    .locals 1

    .line 390
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static lt(I)I
    .locals 1

    .line 404
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static lt(J)J
    .locals 1

    .line 418
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static lt(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 348
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static lt(S)S
    .locals 1

    .line 432
    new-instance v0, Lorg/mockito/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/mockito/AdditionalMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static not(B)B
    .locals 0

    .line 1017
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return p0
.end method

.method public static not(C)C
    .locals 0

    .line 989
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return p0
.end method

.method public static not(D)D
    .locals 0

    .line 975
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static not(F)F
    .locals 0

    .line 961
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return p0
.end method

.method public static not(I)I
    .locals 0

    .line 933
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return p0
.end method

.method public static not(J)J
    .locals 0

    .line 947
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static not(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 905
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static not(S)S
    .locals 0

    .line 919
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return p0
.end method

.method public static not(Z)Z
    .locals 0

    .line 1003
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportNot()V

    const/4 p0, 0x0

    return p0
.end method

.method public static or(BB)B
    .locals 0

    .line 889
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return p0
.end method

.method public static or(CC)C
    .locals 0

    .line 873
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return p0
.end method

.method public static or(DD)D
    .locals 0

    .line 857
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static or(FF)F
    .locals 0

    .line 841
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return p0
.end method

.method public static or(II)I
    .locals 0

    .line 825
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return p0
.end method

.method public static or(JJ)J
    .locals 0

    .line 809
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static or(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 777
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static or(SS)S
    .locals 0

    .line 793
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return p0
.end method

.method public static or(ZZ)Z
    .locals 0

    .line 759
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object p0

    invoke-interface {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportOr()V

    const/4 p0, 0x0

    return p0
.end method

.method private static reportMatcher(Lorg/mockito/ArgumentMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 1056
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    return-void
.end method
