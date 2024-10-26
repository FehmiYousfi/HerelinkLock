.class public Lorg/mockito/internal/framework/DefaultMockitoSession;
.super Ljava/lang/Object;
.source "DefaultMockitoSession.java"

# interfaces
.implements Lorg/mockito/MockitoSession;


# instance fields
.field private final listener:Lorg/mockito/internal/junit/UniversalTestListener;

.field private final testClassInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/mockito/quality/Strictness;Lorg/mockito/internal/util/MockitoLogger;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->testClassInstance:Ljava/lang/Object;

    .line 20
    new-instance v0, Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-direct {v0, p2, p3}, Lorg/mockito/internal/junit/UniversalTestListener;-><init>(Lorg/mockito/quality/Strictness;Lorg/mockito/internal/util/MockitoLogger;)V

    iput-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    .line 23
    :try_start_0
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object p2

    iget-object p3, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-interface {p2, p3}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    :try_end_0
    .catch Lorg/mockito/exceptions/misusing/RedundantListenerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedMockingSession()V

    .line 27
    :goto_0
    invoke-static {p1}, Lorg/mockito/MockitoAnnotations;->initMocks(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/framework/DefaultMockitoSession;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->testClassInstance:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public finishMocking()V
    .locals 2

    .line 34
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 37
    iget-object v0, p0, Lorg/mockito/internal/framework/DefaultMockitoSession;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    new-instance v1, Lorg/mockito/internal/framework/DefaultMockitoSession$1;

    invoke-direct {v1, p0}, Lorg/mockito/internal/framework/DefaultMockitoSession$1;-><init>(Lorg/mockito/internal/framework/DefaultMockitoSession;)V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/UniversalTestListener;->testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V

    .line 50
    invoke-static {}, Lorg/mockito/Mockito;->validateMockitoUsage()V

    return-void
.end method
