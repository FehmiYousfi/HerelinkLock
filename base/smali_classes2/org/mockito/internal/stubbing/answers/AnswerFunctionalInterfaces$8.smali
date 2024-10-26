.class final Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$8;
.super Ljava/lang/Object;
.source "AnswerFunctionalInterfaces.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/VoidAnswer4;)Lorg/mockito/stubbing/Answer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$answer:Lorg/mockito/stubbing/VoidAnswer4;


# direct methods
.method constructor <init>(Lorg/mockito/stubbing/VoidAnswer4;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$8;->val$answer:Lorg/mockito/stubbing/VoidAnswer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$8;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$8;->val$answer:Lorg/mockito/stubbing/VoidAnswer4;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/mockito/stubbing/VoidAnswer4;->answer(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
