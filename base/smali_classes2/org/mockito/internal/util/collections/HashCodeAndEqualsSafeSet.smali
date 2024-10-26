.class public Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
.super Ljava/lang/Object;
.source "HashCodeAndEqualsSafeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final backingHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;)Ljava/util/HashSet;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    return-object p0
.end method

.method private asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/HashSet<",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "Passed collection should notify() be null"

    .line 132
    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static of(Ljava/lang/Iterable;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;"
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    invoke-direct {v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;-><init>()V

    if-eqz p0, :cond_0

    .line 152
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;
    .locals 0

    .line 146
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->of(Ljava/lang/Iterable;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    move-result-object p0

    return-object p0
.end method

.method private unwrapTo([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    instance-of v0, p1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 86
    :cond_0
    check-cast p1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    .line 87
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    iget-object p1, p1, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;-><init>(Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->of(Ljava/lang/Object;)Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->asWrappedMocks(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->unwrapTo([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 111
    array-length v0, p1

    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 112
    :goto_0
    invoke-direct {p0, p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->unwrapTo([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->backingHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
