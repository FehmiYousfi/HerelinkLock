.class public interface abstract Lorg/mockito/internal/verification/RegisteredInvocations;
.super Ljava/lang/Object;
.source "RegisteredInvocations.java"


# virtual methods
.method public abstract add(Lorg/mockito/invocation/Invocation;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract removeLast()V
.end method
