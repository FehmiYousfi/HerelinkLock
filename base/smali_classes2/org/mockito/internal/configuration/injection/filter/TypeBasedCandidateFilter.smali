.class public Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;
.super Ljava/lang/Object;
.source "TypeBasedCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# instance fields
.field private final next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    return-void
.end method


# virtual methods
.method public filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
    .locals 4
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

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 26
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/TypeBasedCandidateFilter;->next:Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;->filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    move-result-object p1

    return-object p1
.end method
