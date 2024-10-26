.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;
.super Ljava/lang/Object;
.source "ReturnsSmartNulls.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowsSmartNullPointer"
.end annotation


# instance fields
.field private final location:Lorg/mockito/invocation/Location;

.field private final unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/InvocationOnMock;Lorg/mockito/invocation/Location;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;

    .line 62
    iput-object p2, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->location:Lorg/mockito/invocation/Location;

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

    .line 66
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SmartNull returned by this unstubbed method call on a mock:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    iget-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->unstubbedInvocation:Lorg/mockito/invocation/InvocationOnMock;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls$ThrowsSmartNullPointer;->location:Lorg/mockito/invocation/Location;

    invoke-static {p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
