.class public Lorg/mockito/internal/stubbing/answers/ThrowsException;
.super Ljava/lang/Object;
.source "ThrowsException.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Lorg/mockito/stubbing/ValidableAnswer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/stubbing/ValidableAnswer;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfaa601baac57f6cL


# instance fields
.field private final filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    throw p1

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->filter:Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 37
    throw p1

    .line 29
    :cond_1
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    throw p1
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 46
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 51
    :cond_1
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->checkedExceptionInvalid(Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->cannotStubWithNullThrowable()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
