.class public Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;
.super Ljava/lang/Object;
.source "NameBasedCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# instance fields
.field private final next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    return-void
.end method

.method private anotherCandidateMatchesMockName(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)Z"
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private selectMatchingName(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private tooMany(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->anotherCandidateMatchesMockName(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p1, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->nop:Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    invoke-direct {p0, p1}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->tooMany(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/configuration/injection/filter/NameBasedCandidateFilter;->selectMatchingName(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object p1

    :cond_1
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    move-result-object p1

    return-object p1
.end method
