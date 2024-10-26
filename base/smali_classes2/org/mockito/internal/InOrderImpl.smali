.class public Lorg/mockito/internal/InOrderImpl;
.super Ljava/lang/Object;
.source "InOrderImpl.java"

# interfaces
.implements Lorg/mockito/InOrder;
.implements Lorg/mockito/internal/verification/api/InOrderContext;


# instance fields
.field private final inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

.field private final mockitoCore:Lorg/mockito/internal/MockitoCore;

.field private final mocksToBeVerifiedInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    .line 32
    new-instance v0, Lorg/mockito/internal/verification/InOrderContextImpl;

    invoke-direct {v0}, Lorg/mockito/internal/verification/InOrderContextImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/InOrderImpl;->inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

    .line 39
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getMocksToBeVerifiedInOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    return-object v0
.end method

.method public isVerified(Lorg/mockito/invocation/Invocation;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

    invoke-interface {v0, p1}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result p1

    return p1
.end method

.method public markVerified(Lorg/mockito/invocation/Invocation;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

    invoke-interface {v0, p1}, Lorg/mockito/internal/verification/api/InOrderContext;->markVerified(Lorg/mockito/invocation/Invocation;)V

    return-void
.end method

.method public verify(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/InOrderImpl;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    instance-of v0, p2, Lorg/mockito/internal/verification/VerificationWrapper;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    new-instance v1, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;

    check-cast p2, Lorg/mockito/internal/verification/VerificationWrapper;

    invoke-direct {v1, p2, p0}, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;-><init>(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/internal/InOrderImpl;)V

    invoke-virtual {v0, p1, v1}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    instance-of v0, p2, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    new-instance v1, Lorg/mockito/internal/verification/InOrderWrapper;

    check-cast p2, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    invoke-direct {v1, p2, p0}, Lorg/mockito/internal/verification/InOrderWrapper;-><init>(Lorg/mockito/internal/verification/api/VerificationInOrderMode;Lorg/mockito/internal/InOrderImpl;)V

    invoke-virtual {v0, p1, v1}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :cond_1
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not implemented to work with InOrder"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->inOrderRequiresFamiliarMock()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method public verifyNoMoreInteractions()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    iget-object v1, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoMoreInteractionsInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)V

    return-void
.end method
