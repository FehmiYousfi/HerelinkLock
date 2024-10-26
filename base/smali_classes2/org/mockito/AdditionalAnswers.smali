.class public Lorg/mockito/AdditionalAnswers;
.super Ljava/lang/Object;
.source "AdditionalAnswers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answer(Lorg/mockito/stubbing/Answer1;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/Answer1<",
            "TT;TA;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 330
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/Answer1;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answer(Lorg/mockito/stubbing/Answer2;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/Answer2<",
            "TT;TA;TB;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 358
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/Answer2;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answer(Lorg/mockito/stubbing/Answer3;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/Answer3<",
            "TT;TA;TB;TC;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 388
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/Answer3;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answer(Lorg/mockito/stubbing/Answer4;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/Answer4<",
            "TT;TA;TB;TC;TD;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 420
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/Answer4;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answer(Lorg/mockito/stubbing/Answer5;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/Answer5<",
            "TT;TA;TB;TC;TD;TE;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 454
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/Answer5;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answerVoid(Lorg/mockito/stubbing/VoidAnswer1;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/VoidAnswer1<",
            "TA;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 343
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/VoidAnswer1;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answerVoid(Lorg/mockito/stubbing/VoidAnswer2;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/VoidAnswer2<",
            "TA;TB;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 372
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/VoidAnswer2;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answerVoid(Lorg/mockito/stubbing/VoidAnswer3;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/VoidAnswer3<",
            "TA;TB;TC;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 403
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/VoidAnswer3;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answerVoid(Lorg/mockito/stubbing/VoidAnswer4;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/VoidAnswer4<",
            "TA;TB;TC;TD;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 436
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/VoidAnswer4;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static answerVoid(Lorg/mockito/stubbing/VoidAnswer5;)Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/stubbing/VoidAnswer5<",
            "TA;TB;TC;TD;TE;>;)",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 472
    invoke-static {p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;->toAnswer(Lorg/mockito/stubbing/VoidAnswer5;)Lorg/mockito/stubbing/Answer;

    move-result-object p0

    return-object p0
.end method

.method public static delegatesTo(Ljava/lang/Object;)Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static returnsArgAt(I)Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;-><init>(I)V

    return-object v0
.end method

.method public static returnsElementsOf(Ljava/util/Collection;)Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .line 316
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/ReturnsElementsOf;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static returnsFirstArg()Lorg/mockito/stubbing/Answer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;-><init>(I)V

    return-object v0
.end method

.method public static returnsLastArg()Lorg/mockito/stubbing/Answer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;-><init>(I)V

    return-object v0
.end method

.method public static returnsSecondArg()Lorg/mockito/stubbing/Answer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mockito/stubbing/Answer<",
            "TT;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/ReturnsArgumentAt;-><init>(I)V

    return-object v0
.end method
