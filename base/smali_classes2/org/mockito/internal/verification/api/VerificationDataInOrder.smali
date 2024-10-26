.class public interface abstract Lorg/mockito/internal/verification/api/VerificationDataInOrder;
.super Ljava/lang/Object;
.source "VerificationDataInOrder.java"


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

.method public abstract getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;
.end method

.method public abstract getWanted()Lorg/mockito/invocation/MatchableInvocation;
.end method
