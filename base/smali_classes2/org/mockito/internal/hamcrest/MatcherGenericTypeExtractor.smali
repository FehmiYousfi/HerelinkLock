.class public Lorg/mockito/internal/hamcrest/MatcherGenericTypeExtractor;
.super Ljava/lang/Object;
.source "MatcherGenericTypeExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genericTypeOfMatcher(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 23
    const-class v0, Lorg/hamcrest/BaseMatcher;

    const-class v1, Lorg/hamcrest/Matcher;

    invoke-static {p0, v0, v1}, Lorg/mockito/internal/util/reflection/GenericTypeExtractor;->genericTypeOf(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
