.class Lorg/mockito/BDDMockito$BDDStubberImpl;
.super Ljava/lang/Object;
.source "BDDMockito.java"

# interfaces
.implements Lorg/mockito/BDDMockito$BDDStubber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BDDStubberImpl"
.end annotation


# instance fields
.field private final mockitoStubber:Lorg/mockito/stubbing/Stubber;


# direct methods
.method public constructor <init>(Lorg/mockito/stubbing/Stubber;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    return-void
.end method


# virtual methods
.method public given(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Stubber;->when(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 417
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDStubber;"
        }
    .end annotation

    .line 413
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willCallRealMethod()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 453
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1}, Lorg/mockito/stubbing/Stubber;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 429
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1}, Lorg/mockito/stubbing/Stubber;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willNothing()Lorg/mockito/BDDMockito$BDDStubber;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    invoke-virtual {p0}, Lorg/mockito/BDDMockito$BDDStubberImpl;->willDoNothing()Lorg/mockito/BDDMockito$BDDStubber;

    move-result-object v0

    return-object v0
.end method

.method public willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 433
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public varargs willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 437
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
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

    .line 445
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public varargs willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2
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

    .line 449
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1, p2}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method

.method public varargs willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDStubber;
    .locals 2

    .line 441
    new-instance v0, Lorg/mockito/BDDMockito$BDDStubberImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDStubberImpl;->mockitoStubber:Lorg/mockito/stubbing/Stubber;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/Stubber;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDStubberImpl;-><init>(Lorg/mockito/stubbing/Stubber;)V

    return-object v0
.end method
