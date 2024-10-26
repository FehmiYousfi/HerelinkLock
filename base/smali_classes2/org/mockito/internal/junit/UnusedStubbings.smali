.class public Lorg/mockito/internal/junit/UnusedStubbings;
.super Ljava/lang/Object;
.source "UnusedStubbings.java"


# instance fields
.field private final unused:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Lorg/mockito/internal/util/MockitoLogger;)V
    .locals 7

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/StubbingHint;

    invoke-direct {v0, p1}, Lorg/mockito/internal/junit/StubbingHint;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/stubbing/Stubbing;

    .line 35
    invoke-interface {v3}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, ". Unused "

    aput-object v2, v4, v1

    const/4 v2, 0x2

    invoke-interface {v3}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Lorg/mockito/internal/junit/StubbingHint;->appendLine([Ljava/lang/Object;)V

    move v2, v6

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Lorg/mockito/internal/junit/StubbingHint;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mockito/internal/util/MockitoLogger;->log(Ljava/lang/Object;)V

    return-void
.end method

.method public reportUnused()V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    new-instance v1, Lorg/mockito/internal/junit/UnusedStubbings$1;

    invoke-direct {v1, p0}, Lorg/mockito/internal/junit/UnusedStubbings$1;-><init>(Lorg/mockito/internal/junit/UnusedStubbings;)V

    invoke-static {v0, v1}, Lorg/mockito/internal/util/collections/ListUtil;->convert(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Converter;)Ljava/util/LinkedList;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unncessaryStubbingException(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/junit/UnusedStubbings;->unused:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
