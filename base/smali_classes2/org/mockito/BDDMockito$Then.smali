.class public interface abstract Lorg/mockito/BDDMockito$Then;
.super Ljava/lang/Object;
.source "BDDMockito.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Then"
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
.method public abstract should()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract should(Lorg/mockito/InOrder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/InOrder;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract should(Lorg/mockito/InOrder;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/InOrder;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract should(Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract shouldHaveNoMoreInteractions()V
.end method

.method public abstract shouldHaveZeroInteractions()V
.end method
