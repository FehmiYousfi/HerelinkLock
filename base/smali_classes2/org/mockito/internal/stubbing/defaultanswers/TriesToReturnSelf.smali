.class public Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;
.super Ljava/lang/Object;
.source "TriesToReturnSelf.java"

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
.field private final defaultReturn:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;->defaultReturn:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/internal/InternalMockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    iget-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;->defaultReturn:Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-virtual {p1, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
