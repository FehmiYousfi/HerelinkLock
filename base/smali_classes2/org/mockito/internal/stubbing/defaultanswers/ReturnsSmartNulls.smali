.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;
.super Ljava/lang/Object;
.source "ReturnsSmartNulls.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;
    }
.end annotation

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
.field private static final serialVersionUID:J = 0x69b9aec5306a0501L


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMoreEmptyValues;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;->delegate:Lorg/mockito/stubbing/Answer;

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;->delegate:Lorg/mockito/stubbing/Answer;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    .line 51
    new-instance v2, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;

    invoke-direct {v2, p1, v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;-><init>(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/invocation/Location;)V

    invoke-static {v0, v2}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/stubbing/Answer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
