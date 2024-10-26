.class public Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces;
.super Ljava/lang/Object;
.source "AnswerFunctionalInterfaces.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAnswer(Lorg/mockito/stubbing/Answer1;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 40
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$1;-><init>(Lorg/mockito/stubbing/Answer1;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/Answer2;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 73
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$3;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$3;-><init>(Lorg/mockito/stubbing/Answer2;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/Answer3;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 112
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$5;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$5;-><init>(Lorg/mockito/stubbing/Answer3;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/Answer4;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 155
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$7;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$7;-><init>(Lorg/mockito/stubbing/Answer4;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/Answer5;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 202
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$9;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$9;-><init>(Lorg/mockito/stubbing/Answer5;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/VoidAnswer1;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 55
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$2;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$2;-><init>(Lorg/mockito/stubbing/VoidAnswer1;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/VoidAnswer2;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 91
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$4;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$4;-><init>(Lorg/mockito/stubbing/VoidAnswer2;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/VoidAnswer3;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 132
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$6;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$6;-><init>(Lorg/mockito/stubbing/VoidAnswer3;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/VoidAnswer4;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 177
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$8;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$8;-><init>(Lorg/mockito/stubbing/VoidAnswer4;)V

    return-object v0
.end method

.method public static toAnswer(Lorg/mockito/stubbing/VoidAnswer5;)Lorg/mockito/stubbing/Answer;
    .locals 1
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

    .line 226
    new-instance v0, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$10;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/AnswerFunctionalInterfaces$10;-><init>(Lorg/mockito/stubbing/VoidAnswer5;)V

    return-object v0
.end method
