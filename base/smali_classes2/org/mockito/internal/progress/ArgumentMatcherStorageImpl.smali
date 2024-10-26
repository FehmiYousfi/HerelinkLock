.class public Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;
.super Ljava/lang/Object;
.source "ArgumentMatcherStorageImpl.java"

# interfaces
.implements Lorg/mockito/internal/progress/ArgumentMatcherStorage;


# static fields
.field private static final ONE_SUB_MATCHER:I = 0x1

.field private static final TWO_SUB_MATCHERS:I = 0x2


# instance fields
.field private final matcherStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    return-void
.end method

.method private assertStateFor(Ljava/lang/String;I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->resetStack()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-static {p1, p2, v0}, Lorg/mockito/internal/exceptions/Reporter;->incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 79
    :cond_1
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->reportNoSubMatchersFound(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method private popMatcher()Lorg/mockito/ArgumentMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/matchers/LocalizedMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/matchers/LocalizedMatcher;->getMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    return-object v0
.end method

.method private resetStack()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-virtual {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->reset()V

    return-object v0
.end method


# virtual methods
.method public pullLocalizedMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->resetStack()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public reportAnd()V
    .locals 3

    const-string v0, "And(?)"

    const/4 v1, 0x2

    .line 41
    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->assertStateFor(Ljava/lang/String;I)V

    .line 43
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->popMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->popMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v1

    .line 46
    new-instance v2, Lorg/mockito/internal/matchers/And;

    invoke-direct {v2, v0, v1}, Lorg/mockito/internal/matchers/And;-><init>(Lorg/mockito/ArgumentMatcher;Lorg/mockito/ArgumentMatcher;)V

    invoke-virtual {p0, v2}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    return-void
.end method

.method public reportMatcher(Lorg/mockito/ArgumentMatcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    new-instance v1, Lorg/mockito/internal/matchers/LocalizedMatcher;

    invoke-direct {v1, p1}, Lorg/mockito/internal/matchers/LocalizedMatcher;-><init>(Lorg/mockito/ArgumentMatcher;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportNot()V
    .locals 2

    const-string v0, "Not(?)"

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->assertStateFor(Ljava/lang/String;I)V

    .line 61
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->popMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    .line 63
    new-instance v1, Lorg/mockito/internal/matchers/Not;

    invoke-direct {v1, v0}, Lorg/mockito/internal/matchers/Not;-><init>(Lorg/mockito/ArgumentMatcher;)V

    invoke-virtual {p0, v1}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    return-void
.end method

.method public reportOr()V
    .locals 3

    const-string v0, "Or(?)"

    const/4 v1, 0x2

    .line 50
    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->assertStateFor(Ljava/lang/String;I)V

    .line 52
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->popMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->popMatcher()Lorg/mockito/ArgumentMatcher;

    move-result-object v1

    .line 55
    new-instance v2, Lorg/mockito/internal/matchers/Or;

    invoke-direct {v2, v0, v1}, Lorg/mockito/internal/matchers/Or;-><init>(Lorg/mockito/ArgumentMatcher;Lorg/mockito/ArgumentMatcher;)V

    invoke-virtual {p0, v2}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public validateState()V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->matcherStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;->resetStack()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->misplacedArgumentMatcher(Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
