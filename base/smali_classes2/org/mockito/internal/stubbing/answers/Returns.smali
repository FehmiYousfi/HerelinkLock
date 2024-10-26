.class public Lorg/mockito/internal/stubbing/answers/Returns;
.super Ljava/lang/Object;
.source "Returns.java"

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
.field private static final serialVersionUID:J = -0x56acdb9db089f6e4L


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    return-void
.end method

.method private printReturnType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private returnsNull()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    iget-object p1, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/stubbing/answers/Returns;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 2

    .line 31
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    .line 32
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isVoid()Z

    move-result p1

    if-nez p1, :cond_4

    .line 36
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnsNull()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->returnsPrimitive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {p1, v1, v0}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 40
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnsNull()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->returnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isValidReturnType(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->printMethodReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/Returns;->printReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lorg/mockito/internal/exceptions/Reporter;->wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 33
    :cond_4
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
