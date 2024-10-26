.class public Lorg/mockito/internal/handler/MockHandlerImpl;
.super Ljava/lang/Object;
.source "MockHandlerImpl.java"

# interfaces
.implements Lorg/mockito/internal/InternalMockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/InternalMockHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x287e5c478e4e1055L


# instance fields
.field invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

.field matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

.field private final mockSettings:Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/MatchersBinder;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 44
    iput-object p1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 46
    new-instance v0, Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/MatchersBinder;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 47
    new-instance v0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;-><init>(Lorg/mockito/mock/MockCreationSettings;)V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-void
.end method

.method private createVerificationData(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)Lorg/mockito/internal/verification/VerificationDataImpl;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->isStubOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/mockito/internal/verification/VerificationDataImpl;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainer;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    return-object v0

    .line 124
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->stubPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method private notifyStubbedAnswerLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    check-cast v0, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-virtual {v0}, Lorg/mockito/internal/creation/settings/CreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/listeners/StubbingLookupListener;

    .line 134
    invoke-interface {v1, p1, p2}, Lorg/mockito/internal/listeners/StubbingLookupListener;->onStubbingLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-object v0
.end method

.method public getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->hasAnswersForStubbing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setMethodForStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V

    return-object v1

    .line 60
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullVerificationMode()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object v2

    .line 67
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    if-eqz v0, :cond_2

    .line 73
    move-object v3, v0

    check-cast v3, Lorg/mockito/internal/verification/MockAwareVerificationMode;

    invoke-virtual {v3}, Lorg/mockito/internal/verification/MockAwareVerificationMode;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 74
    iget-object p1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {p0, p1, v2}, Lorg/mockito/internal/handler/MockHandlerImpl;->createVerificationData(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)Lorg/mockito/internal/verification/VerificationDataImpl;

    move-result-object p1

    .line 75
    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    return-object v1

    .line 80
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->verificationStarted(Lorg/mockito/verification/VerificationMode;)V

    .line 85
    :cond_2
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setInvocationForPotentialStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 86
    new-instance v0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V

    .line 87
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    .line 90
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v0

    .line 91
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/handler/MockHandlerImpl;->notifyStubbedAnswerLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;)V

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V

    .line 95
    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 97
    :cond_3
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getDefaultAnswer()Lorg/mockito/stubbing/Answer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    invoke-static {p1, v0}, Lorg/mockito/internal/stubbing/answers/DefaultAnswerValidator;->validateReturnValueFor(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {p1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->resetInvocationForPotentialStubbing(Lorg/mockito/internal/invocation/InvocationMatcher;)V

    return-object v0
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

    .line 115
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setAnswersForStubbing(Ljava/util/List;)V

    return-void
.end method
