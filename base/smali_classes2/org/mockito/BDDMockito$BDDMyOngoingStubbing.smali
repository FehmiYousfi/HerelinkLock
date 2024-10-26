.class public interface abstract Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
.super Ljava/lang/Object;
.source "BDDMockito.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BDDMyOngoingStubbing"
.end annotation

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

.method public abstract will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract willCallRealMethod()Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
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
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end method
