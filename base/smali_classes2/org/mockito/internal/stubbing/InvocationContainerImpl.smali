.class public Lorg/mockito/internal/stubbing/InvocationContainerImpl;
.super Ljava/lang/Object;
.source "InvocationContainerImpl.java"

# interfaces
.implements Lorg/mockito/internal/stubbing/InvocationContainer;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x4a073f5f6e5aeb99L


# instance fields
.field private final answersForStubbing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

.field private final registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

.field private final stubbed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    .line 34
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->createRegisteredInvocations(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/verification/RegisteredInvocations;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    return-void
.end method

.method private createRegisteredInvocations(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/verification/RegisteredInvocations;
    .locals 0

    .line 144
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isStubOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/mockito/internal/verification/SingleRegisteredInvocation;

    invoke-direct {p1}, Lorg/mockito/internal/verification/SingleRegisteredInvocation;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;

    invoke-direct {p1}, Lorg/mockito/internal/verification/DefaultRegisteredInvocations;-><init>()V

    :goto_0
    check-cast p1, Lorg/mockito/internal/verification/RegisteredInvocations;

    return-object p1
.end method


# virtual methods
.method public addAnswer(Lorg/mockito/stubbing/Answer;Z)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    .line 60
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/internal/progress/MockingProgress;->stubbingCompleted()V

    .line 61
    instance-of v1, p1, Lorg/mockito/stubbing/ValidableAnswer;

    if-eqz v1, :cond_0

    .line 62
    move-object v1, p1

    check-cast v1, Lorg/mockito/stubbing/ValidableAnswer;

    invoke-interface {v1, v0}, Lorg/mockito/stubbing/ValidableAnswer;->validateFor(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 67
    :try_start_0
    iget-object p2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    invoke-virtual {p2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->addAnswer(Lorg/mockito/stubbing/Answer;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    new-instance v1, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    iget-object v2, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-direct {v1, v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;-><init>(Lorg/mockito/internal/invocation/InvocationMatcher;Lorg/mockito/stubbing/Answer;)V

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAnswer(Lorg/mockito/stubbing/Answer;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->removeLast()V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;Z)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    return-void
.end method

.method public addAnswerForVoidMethod(Lorg/mockito/stubbing/Answer;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;Z)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    return-void
.end method

.method answerTo(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clearInvocations()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->clear()V

    return-void
.end method

.method public findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    .locals 4

    .line 80
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    .line 82
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v2, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->markStubUsed(Lorg/mockito/invocation/DescribedInvocation;)V

    .line 84
    new-instance v1, Lorg/mockito/internal/invocation/StubInfoImpl;

    invoke-direct {v1, v2}, Lorg/mockito/internal/invocation/StubInfoImpl;-><init>(Lorg/mockito/invocation/DescribedInvocation;)V

    invoke-interface {p1, v1}, Lorg/mockito/invocation/Invocation;->markStubbed(Lorg/mockito/invocation/StubInfo;)V

    .line 85
    monitor-exit v0

    return-object v2

    .line 88
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInvocationForStubbing()Lorg/mockito/internal/invocation/InvocationMatcher;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    return-object v0
.end method

.method public getInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbedInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->stubbed:Ljava/util/LinkedList;

    return-object v0
.end method

.method public hasAnswersForStubbing()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasInvocationForPotentialStubbing()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-interface {v0}, Lorg/mockito/internal/verification/RegisteredInvocations;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invokedMock()Ljava/lang/Object;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resetInvocationForPotentialStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    return-void
.end method

.method public setAnswersForStubbing(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setInvocationForPotentialStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->registeredInvocations:Lorg/mockito/internal/verification/RegisteredInvocations;

    invoke-virtual {p1}, Lorg/mockito/internal/invocation/InvocationMatcher;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/verification/RegisteredInvocations;->add(Lorg/mockito/invocation/Invocation;)V

    .line 39
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    return-void
.end method

.method public setMethodForStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V
    .locals 3

    .line 110
    iput-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    const/4 p1, 0x0

    move v0, p1

    .line 112
    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/stubbing/Answer;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;Z)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->answersForStubbing:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invocationForStubbing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invocationForStubbing:Lorg/mockito/internal/invocation/InvocationMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
