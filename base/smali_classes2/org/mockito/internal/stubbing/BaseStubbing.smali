.class public abstract Lorg/mockito/internal/stubbing/BaseStubbing;
.super Ljava/lang/Object;
.source "BaseStubbing.java"

# interfaces
.implements Lorg/mockito/stubbing/OngoingStubbing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/OngoingStubbing<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public thenCallRealMethod()Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    return-object v0
.end method

.method public thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/mockito/internal/stubbing/answers/Returns;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method

.method public varargs thenReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 24
    invoke-interface {p1, p2}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 27
    invoke-interface {p1, v2}, Lorg/mockito/stubbing/OngoingStubbing;->thenReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1
.end method

.method public varargs thenThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 3
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
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 58
    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    .line 61
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 62
    invoke-interface {p1, v2}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public varargs thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 38
    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p1, v0

    if-nez v3, :cond_1

    .line 43
    invoke-direct {p0, v4}, Lorg/mockito/internal/stubbing/BaseStubbing;->thenThrow(Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v4, v5, v2

    .line 45
    invoke-interface {v3, v5}, Lorg/mockito/stubbing/OngoingStubbing;->thenThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method
