.class public interface abstract Lorg/mockito/BDDMockito$BDDStubber;
.super Ljava/lang/Object;
.source "BDDMockito.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BDDStubber"
.end annotation


# virtual methods
.method public abstract given(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation
.end method

.method public abstract willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation
.end method

.method public abstract willCallRealMethod()Lorg/mockito/BDDMockito$BDDStubber;
.end method

.method public abstract willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;
.end method

.method public abstract willNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
.end method

.method public varargs abstract willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
.end method

.method public abstract willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation
.end method

.method public varargs abstract willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
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
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation
.end method

.method public varargs abstract willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDStubber;
.end method
