.class public interface abstract Lorg/mockito/internal/verification/api/VerificationData;
.super Ljava/lang/Object;
.source "VerificationData.java"


# virtual methods
.method public abstract getAllInvocations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTarget()Lorg/mockito/invocation/MatchableInvocation;
.end method

.method public abstract getWanted()Lorg/mockito/internal/invocation/InvocationMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
