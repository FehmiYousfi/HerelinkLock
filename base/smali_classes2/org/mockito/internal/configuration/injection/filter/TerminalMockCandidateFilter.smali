.class public Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;
.super Ljava/lang/Object;
.source "TerminalMockCandidateFilter.java"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/MockCandidateFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterCandidate(Ljava/util/Collection;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
    .locals 1
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

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 32
    new-instance p3, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;

    invoke-direct {p3, p0, p4, p2, p1}, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$1;-><init>(Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-object p3

    .line 46
    :cond_0
    sget-object p1, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->nop:Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    return-object p1
.end method
