.class Lorg/mockito/BDDMockito$ThenImpl;
.super Ljava/lang/Object;
.source "BDDMockito.java"

# interfaces
.implements Lorg/mockito/BDDMockito$Then;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/BDDMockito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThenImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/BDDMockito$Then<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mock:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public should()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/Mockito;->verify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public should(Lorg/mockito/InOrder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/InOrder;",
            ")TT;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/mockito/InOrder;->verify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public should(Lorg/mockito/InOrder;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/InOrder;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lorg/mockito/InOrder;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public should(Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mockito/Mockito;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public shouldHaveNoMoreInteractions()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 317
    iget-object v1, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/mockito/Mockito;->verifyNoMoreInteractions([Ljava/lang/Object;)V

    return-void
.end method

.method public shouldHaveZeroInteractions()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lorg/mockito/BDDMockito$ThenImpl;->mock:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/mockito/Mockito;->verifyZeroInteractions([Ljava/lang/Object;)V

    return-void
.end method
