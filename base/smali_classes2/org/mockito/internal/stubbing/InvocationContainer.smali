.class public interface abstract Lorg/mockito/internal/stubbing/InvocationContainer;
.super Ljava/lang/Object;
.source "InvocationContainer.java"


# virtual methods
.method public abstract clearInvocations()V
.end method

.method public abstract getInvocations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStubbedInvocations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;",
            ">;"
        }
    .end annotation
.end method
