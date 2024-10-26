.class Lorg/mockito/internal/handler/InvocationNotifierHandler;
.super Ljava/lang/Object;
.source "InvocationNotifierHandler.java"

# interfaces
.implements Lorg/mockito/invocation/MockHandler;
.implements Lorg/mockito/internal/InternalMockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/invocation/MockHandler;",
        "Lorg/mockito/internal/InternalMockHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final invocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mockHandler:Lorg/mockito/internal/InternalMockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/InternalMockHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/InternalMockHandler<",
            "TT;>;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/internal/InternalMockHandler;

    .line 31
    invoke-interface {p2}, Lorg/mockito/mock/MockCreationSettings;->getInvocationListeners()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->invocationListeners:Ljava/util/List;

    return-void
.end method

.method private notifyMethodCall(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->invocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/InvocationListener;

    .line 49
    :try_start_0
    new-instance v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;

    invoke-direct {v2, p1, p2}, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;-><init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/mockito/listeners/InvocationListener;->reportInvocation(Lorg/mockito/listeners/MethodInvocationReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    invoke-static {v1, p1}, Lorg/mockito/internal/exceptions/Reporter;->invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method private notifyMethodCallException(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->invocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/InvocationListener;

    .line 59
    :try_start_0
    new-instance v2, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;

    invoke-direct {v2, p1, p2}, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;-><init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lorg/mockito/listeners/InvocationListener;->reportInvocation(Lorg/mockito/listeners/MethodInvocationReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 61
    invoke-static {v1, p1}, Lorg/mockito/internal/exceptions/Reporter;->invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/internal/InternalMockHandler;

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

    .line 67
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0, p1}, Lorg/mockito/internal/InternalMockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/handler/InvocationNotifierHandler;->notifyMethodCall(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 40
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/handler/InvocationNotifierHandler;->notifyMethodCallException(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V

    .line 41
    throw v0
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

    .line 71
    iget-object v0, p0, Lorg/mockito/internal/handler/InvocationNotifierHandler;->mockHandler:Lorg/mockito/internal/InternalMockHandler;

    invoke-interface {v0, p1}, Lorg/mockito/internal/InternalMockHandler;->setAnswersForStubbing(Ljava/util/List;)V

    return-void
.end method
