.class public Lorg/mockito/internal/MockitoCore;
.super Ljava/lang/Object;
.source "MockitoCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private assertMocksNotEmpty([Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 141
    array-length p1, p1

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->mocksHaveToBePassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public varargs clearInvocations([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 107
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 109
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 110
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 113
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/stubbing/InvocationContainer;->clearInvocations()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLastInvocation()Lorg/mockito/invocation/Invocation;
    .locals 2

    .line 178
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    .line 179
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->getRegisteredInvocations()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/invocation/Invocation;

    return-object v0
.end method

.method public varargs ignoreStubs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 185
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Lorg/mockito/internal/stubbing/InvocationContainer;->getInvocations()Ljava/util/List;

    move-result-object v2

    .line 187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    .line 188
    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 189
    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->ignoreForVerification()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public varargs inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;
    .locals 3

    if-eqz p1, :cond_3

    .line 147
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 150
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 154
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 152
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 158
    :cond_2
    new-instance v0, Lorg/mockito/internal/InOrderImpl;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/internal/InOrderImpl;-><init>(Ljava/util/List;)V

    return-object v0

    .line 148
    :cond_3
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->mocksHaveToBePassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public isTypeMockable(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/plugins/MockMaker$TypeMockability;->mockable()Z

    move-result p1

    return p1
.end method

.method public mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")TT;"
        }
    .end annotation

    .line 60
    const-class v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-class v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mockito/internal/creation/MockSettingsImpl;

    .line 64
    invoke-virtual {p2, p1}, Lorg/mockito/internal/creation/MockSettingsImpl;->confirm(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->createMock(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Object;

    move-result-object p2

    .line 66
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/mockito/internal/progress/MockingProgress;->mockingStarted(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    return-object p2

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected implementation of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "At the moment, you cannot provide your own implementations of that class."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;
    .locals 1

    .line 197
    new-instance v0, Lorg/mockito/internal/util/DefaultMockingDetails;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/DefaultMockingDetails;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs reset([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 98
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 99
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 101
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 102
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->resetMock(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stubber()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 162
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->stubbingStarted()V

    .line 164
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 165
    new-instance v0, Lorg/mockito/internal/stubbing/StubberImpl;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/StubberImpl;-><init>()V

    return-object v0
.end method

.method public validateMockitoUsage()V
    .locals 1

    .line 169
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    return-void
.end method

.method public verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 86
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 90
    invoke-interface {v0, p2}, Lorg/mockito/internal/progress/MockingProgress;->maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p2

    .line 91
    new-instance v1, Lorg/mockito/internal/verification/MockAwareVerificationMode;

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->verificationListeners()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/mockito/internal/verification/MockAwareVerificationMode;-><init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/MockingProgress;->verificationStarted(Lorg/mockito/verification/VerificationMode;)V

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToVerify(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 84
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public varargs verifyNoMoreInteractions([Ljava/lang/Object;)V
    .locals 5

    .line 118
    invoke-direct {p0, p1}, Lorg/mockito/internal/MockitoCore;->assertMocksNotEmpty([Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 120
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v2

    .line 126
    new-instance v3, Lorg/mockito/internal/verification/VerificationDataImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainer;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 127
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/mockito/internal/verification/NoMoreInteractions;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/mockito/exceptions/misusing/NotAMockException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public verifyNoMoreInteractionsInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 136
    new-instance v0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;

    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;-><init>(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 137
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/mockito/internal/verification/NoMoreInteractions;->verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V

    return-void
.end method

.method public when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Lorg/mockito/internal/progress/MockingProgress;->stubbingStarted()V

    .line 74
    invoke-interface {p1}, Lorg/mockito/internal/progress/MockingProgress;->pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 77
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->missingMethodInvocation()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
