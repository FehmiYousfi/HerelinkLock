.class public interface abstract Lorg/mockito/stubbing/OngoingStubbing;
.super Ljava/lang/Object;
.source "OngoingStubbing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getMock()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation
.end method

.method public abstract then(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract thenCallRealMethod()Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract thenReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract thenThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method
