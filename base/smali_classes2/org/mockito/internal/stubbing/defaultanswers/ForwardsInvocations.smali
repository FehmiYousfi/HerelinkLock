.class public Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;
.super Ljava/lang/Object;
.source "ForwardsInvocations.java"

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


# static fields
.field private static final serialVersionUID:J = -0x73cabe17935ed07eL


# instance fields
.field private delegatedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    return-void
.end method

.method private static compatibleReturnTypes(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getDelegateMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    :try_start_0
    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->getDelegateMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->compatibleReturnTypes(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    move-object v2, p1

    check-cast v2, Lorg/mockito/invocation/Invocation;

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getRawArguments()[Ljava/lang/Object;

    move-result-object v2

    .line 43
    iget-object v3, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/mockito/internal/exceptions/Reporter;->delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 45
    :catch_1
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ForwardsInvocations;->delegatedObject:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/mockito/internal/exceptions/Reporter;->delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
