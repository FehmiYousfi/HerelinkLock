.class public Lorg/mockito/BDDMockito;
.super Lorg/mockito/Mockito;
.source "BDDMockito.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/BDDMockito$BDDStubberImpl;,
        Lorg/mockito/BDDMockito$BDDStubber;,
        Lorg/mockito/BDDMockito$ThenImpl;,
        Lorg/mockito/BDDMockito$Then;,
        Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;,
        Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/mockito/Mockito;-><init>()V

    return-void
.end method

.method public static given(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 197
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public static then(Ljava/lang/Object;)Lorg/mockito/BDDMockito$Then;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/BDDMockito$Then<",
            "TT;>;"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/mockito/BDDMockito$ThenImpl;

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$ThenImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 494
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 486
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willCallRealMethod()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 527
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {}, Lorg/mockito/Mockito;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 502
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {}, Lorg/mockito/Mockito;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1

    .line 510
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static varargs willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1

    .line 519
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0, p1}, Lorg/mockito/Mockito;->doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1
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

    .line 470
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static varargs willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1
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

    .line 478
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0, p1}, Lorg/mockito/Mockito;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public static varargs willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1

    .line 462
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    invoke-static {p0}, Lorg/mockito/Mockito;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method
