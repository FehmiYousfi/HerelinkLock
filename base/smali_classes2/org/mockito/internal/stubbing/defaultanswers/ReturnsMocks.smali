.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;
.super Ljava/lang/Object;
.source "ReturnsMocks.java"

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
.field private static final serialVersionUID:J = -0x5dbf7f5928ef7f53L


# instance fields
.field private final delegate:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mockitoCore:Lorg/mockito/internal/MockitoCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    .line 18
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->delegate:Lorg/mockito/stubbing/Answer;

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

    .line 21
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->delegate:Lorg/mockito/stubbing/Answer;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/MockitoCore;->isTypeMockable(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    new-instance v1, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-direct {v1}, Lorg/mockito/internal/creation/MockSettingsImpl;-><init>()V

    invoke-virtual {v1, p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
