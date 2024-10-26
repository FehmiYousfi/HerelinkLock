.class Lorg/mockito/internal/junit/StubbingArgMismatches;
.super Ljava/lang/Object;
.source "StubbingArgMismatches.java"


# instance fields
.field final mismatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Set<",
            "Lorg/mockito/invocation/Invocation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    iget-object v1, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public format(Ljava/lang/String;Lorg/mockito/internal/util/MockitoLogger;)V
    .locals 9

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/StubbingHint;

    invoke-direct {v0, p1}, Lorg/mockito/internal/junit/StubbingHint;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-string v2, ". Unused... "

    aput-object v2, v4, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v4, v7

    invoke-virtual {v0, v4}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v8, " ...args ok? "

    aput-object v8, v4, v6

    .line 41
    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Lorg/mockito/internal/junit/StubbingHint;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mockito/internal/util/MockitoLogger;->log(Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/junit/StubbingArgMismatches;->mismatches:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
