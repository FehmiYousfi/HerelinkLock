.class public interface abstract Lorg/mockito/internal/progress/MockingProgress;
.super Ljava/lang/Object;
.source "MockingProgress.java"


# virtual methods
.method public abstract addListener(Lorg/mockito/listeners/MockitoListener;)V
.end method

.method public abstract clearListeners()V
.end method

.method public abstract getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;
.end method

.method public abstract maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
.end method

.method public abstract mockingStarted(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
.end method

.method public abstract pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract pullVerificationMode()Lorg/mockito/verification/VerificationMode;
.end method

.method public abstract removeListener(Lorg/mockito/listeners/MockitoListener;)V
.end method

.method public abstract reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract resetOngoingStubbing()V
.end method

.method public abstract setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V
.end method

.method public abstract stubbingCompleted()V
.end method

.method public abstract stubbingStarted()V
.end method

.method public abstract validateState()V
.end method

.method public abstract verificationListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/VerificationListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract verificationStarted(Lorg/mockito/verification/VerificationMode;)V
.end method
