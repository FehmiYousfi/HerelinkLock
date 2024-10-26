.class public abstract Lorg/mockito/internal/util/collections/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newIdentitySet()Lorg/mockito/internal/util/collections/IdentitySet;
    .locals 1

    .line 22
    new-instance v0, Lorg/mockito/internal/util/collections/IdentitySet;

    invoke-direct {v0}, Lorg/mockito/internal/util/collections/IdentitySet;-><init>()V

    return-object v0
.end method

.method public static newMockSafeHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->of(Ljava/lang/Iterable;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newMockSafeHashSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->of([Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected an array of elements (or empty array) but received a null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
