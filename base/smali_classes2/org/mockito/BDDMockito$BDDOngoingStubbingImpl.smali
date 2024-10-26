.class Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;
.super Ljava/lang/Object;
.source "BDDMockito.java"

# interfaces
.implements Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BDDOngoingStubbingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/stubbing/OngoingStubbing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-void
.end method


# virtual methods
.method public getMock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">()TM;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v0}, Lorg/mockito/stubbing/OngoingStubbing;->getMock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public will(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->then(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "*>;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willCallRealMethod()Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1}, Lorg/mockito/stubbing/OngoingStubbing;->thenCallRealMethod()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willReturn(Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public varargs willReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1, p2}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public willThrow(Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
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

    .line 176
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public varargs willThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
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
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1, p2}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method

.method public varargs willThrow([Ljava/lang/Throwable;)Lorg/mockito/BDDMockito$BDDMyOngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/BDDMockito$BDDMyOngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;

    iget-object v1, p0, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;->mockitoOngoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-interface {v1, p1}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/BDDMockito$BDDOngoingStubbingImpl;-><init>(Lorg/mockito/stubbing/OngoingStubbing;)V

    return-object v0
.end method
