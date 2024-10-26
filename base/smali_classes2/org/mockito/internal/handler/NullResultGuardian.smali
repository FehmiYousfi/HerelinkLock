.class Lorg/mockito/internal/handler/NullResultGuardian;
.super Ljava/lang/Object;
.source "NullResultGuardian.java"

# interfaces
.implements Lorg/mockito/internal/InternalMockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/InternalMockHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/mockito/internal/InternalMockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/InternalMockHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/InternalMockHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/InternalMockHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/internal/InternalMockHandler;

    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0, p1}, Lorg/mockito/internal/InternalMockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public setAnswersForStubbing(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/mockito/internal/handler/NullResultGuardian;->delegate:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0, p1}, Lorg/mockito/internal/InternalMockHandler;->setAnswersForStubbing(Ljava/util/List;)V

    return-void
.end method
