.class public Lorg/mockito/internal/verification/InOrderWrapper;
.super Ljava/lang/Object;
.source "InOrderWrapper.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final inOrder:Lorg/mockito/internal/InOrderImpl;

.field private final mode:Lorg/mockito/internal/verification/api/VerificationInOrderMode;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/verification/api/VerificationInOrderMode;Lorg/mockito/internal/InOrderImpl;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/verification/InOrderWrapper;->mode:Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    .line 24
    iput-object p2, p0, Lorg/mockito/internal/verification/InOrderWrapper;->inOrder:Lorg/mockito/internal/InOrderImpl;

    return-void
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/verification/InOrderWrapper;->inOrder:Lorg/mockito/internal/InOrderImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/InOrderImpl;->getMocksToBeVerifiedInOrder()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 29
    new-instance v1, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;

    iget-object v2, p0, Lorg/mockito/internal/verification/InOrderWrapper;->inOrder:Lorg/mockito/internal/InOrderImpl;

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;-><init>(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 30
    iget-object p1, p0, Lorg/mockito/internal/verification/InOrderWrapper;->mode:Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    invoke-interface {p1, v1}, Lorg/mockito/internal/verification/api/VerificationInOrderMode;->verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V

    return-void
.end method
