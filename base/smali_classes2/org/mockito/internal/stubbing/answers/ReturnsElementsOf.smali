.class public Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;
.super Ljava/lang/Object;
.source "ReturnsElementsOf.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;->elements:Ljava/util/LinkedList;

    return-void

    .line 38
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "ReturnsElementsOf does not accept null as constructor argument.\nPlease pass a collection instance"

    invoke-direct {p1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;->elements:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;->elements:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;->elements:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
