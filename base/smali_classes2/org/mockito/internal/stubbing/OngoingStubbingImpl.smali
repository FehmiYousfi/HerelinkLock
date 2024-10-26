.class public Lorg/mockito/internal/stubbing/OngoingStubbingImpl;
.super Lorg/mockito/internal/stubbing/BaseStubbing;
.source "OngoingStubbingImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mockito/internal/stubbing/BaseStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/BaseStubbing;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-void
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invokedMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRegisteredInvocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method

.method public thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->hasInvocationForPotentialStubbing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addAnswer(Lorg/mockito/stubbing/Answer;)V

    .line 29
    new-instance p1, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;

    iget-object v0, p0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {p1, v0}, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V

    return-object p1

    .line 25
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->incorrectUseOfApi()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
