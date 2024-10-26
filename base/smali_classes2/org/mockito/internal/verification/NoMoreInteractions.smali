.class public Lorg/mockito/internal/verification/NoMoreInteractions;
.super Ljava/lang/Object;
.source "NoMoreInteractions.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;
.implements Lorg/mockito/internal/verification/api/VerificationInOrderMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1

    .line 25
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverified(Ljava/util/List;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mockito/internal/exceptions/Reporter;->noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1
.end method

.method public verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V
    .locals 1

    .line 32
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverifiedInOrder(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;)Lorg/mockito/invocation/Invocation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1
.end method
