.class public Lorg/mockito/internal/stubbing/ConsecutiveStubbing;
.super Lorg/mockito/internal/stubbing/BaseStubbing;
.source "ConsecutiveStubbing.java"


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

    .line 13
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/BaseStubbing;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

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

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->invokedMock()Ljava/lang/Object;

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

    .line 23
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

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

    .line 18
    iget-object v0, p0, Lorg/mockito/internal/stubbing/ConsecutiveStubbing;->invocationContainerImpl:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->addConsecutiveAnswer(Lorg/mockito/stubbing/Answer;)V

    return-object p0
.end method
