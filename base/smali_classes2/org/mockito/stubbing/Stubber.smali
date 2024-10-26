.class public interface abstract Lorg/mockito/stubbing/Stubber;
.super Ljava/lang/Object;
.source "Stubber.java"


# virtual methods
.method public abstract doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
.end method

.method public abstract doCallRealMethod()Lorg/mockito/stubbing/Stubber;
.end method

.method public abstract doNothing()Lorg/mockito/stubbing/Stubber;
.end method

.method public abstract doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
.end method

.method public varargs abstract doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
.end method

.method public abstract doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation
.end method

.method public varargs abstract doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
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
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation
.end method

.method public varargs abstract doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
.end method

.method public abstract when(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method
