.class public Lorg/mockito/internal/verification/Only;
.super Ljava/lang/Object;
.source "Only.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


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

    .line 39
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 4

    .line 25
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverified(Ljava/util/List;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Lorg/mockito/internal/exceptions/Reporter;->noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    return-void

    .line 33
    :cond_2
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object p1

    throw p1
.end method
