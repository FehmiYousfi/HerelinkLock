.class public Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;
.super Ljava/lang/Object;
.source "ThrowsExceptionClass.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

.field private final throwableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;->filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    .line 23
    invoke-direct {p0, p1}, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;->checkNonNullThrowable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;->throwableClass:Ljava/lang/Class;

    return-void
.end method

.method private checkNonNullThrowable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 28
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAnException()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

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

    .line 35
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;->throwableClass:Ljava/lang/Class;

    invoke-static {p1}, Lorg/objenesis/ObjenesisHelper;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 37
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;->filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 38
    throw p1
.end method

.method public getThrowableClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;->throwableClass:Ljava/lang/Class;

    return-object v0
.end method
