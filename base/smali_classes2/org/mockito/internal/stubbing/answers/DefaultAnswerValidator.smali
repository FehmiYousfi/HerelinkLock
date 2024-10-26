.class public abstract Lorg/mockito/internal/stubbing/answers/DefaultAnswerValidator;
.super Ljava/lang/Object;
.source "DefaultAnswerValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateReturnValueFor(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidReturnType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
