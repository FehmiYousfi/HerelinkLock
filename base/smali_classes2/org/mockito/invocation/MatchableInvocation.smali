.class public interface abstract Lorg/mockito/invocation/MatchableInvocation;
.super Ljava/lang/Object;
.source "MatchableInvocation.java"

# interfaces
.implements Lorg/mockito/invocation/DescribedInvocation;


# virtual methods
.method public abstract captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V
.end method

.method public abstract getInvocation()Lorg/mockito/invocation/Invocation;
.end method

.method public abstract getMatchers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSameMethod(Lorg/mockito/invocation/Invocation;)Z
.end method

.method public abstract hasSimilarMethod(Lorg/mockito/invocation/Invocation;)Z
.end method

.method public abstract matches(Lorg/mockito/invocation/Invocation;)Z
.end method
