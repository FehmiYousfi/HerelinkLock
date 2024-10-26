.class public Lorg/mockito/internal/verification/Calls;
.super Ljava/lang/Object;
.source "Calls.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;
.implements Lorg/mockito/internal/verification/api/VerificationInOrderMode;


# instance fields
.field final wantedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 28
    iput p1, p0, Lorg/mockito/internal/verification/Calls;->wantedCount:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "Negative and zero values are not allowed here"

    invoke-direct {p1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wanted invocations count (non-greedy): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mockito/internal/verification/Calls;->wantedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1

    .line 33
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "calls is only intended to work with InOrder"

    invoke-direct {p1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V
    .locals 3

    .line 38
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getWanted()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    .line 41
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 42
    iget v2, p0, Lorg/mockito/internal/verification/Calls;->wantedCount:I

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lorg/mockito/internal/verification/checkers/NumberOfInvocationsChecker;->checkNumberOfInvocationsNonGreedy(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V

    return-void
.end method
