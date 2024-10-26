.class Lorg/mockito/internal/junit/JUnitRule$1;
.super Lorg/junit/runners/model/Statement;
.source "JUnitRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/JUnitRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/JUnitRule;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/JUnitRule;Ljava/lang/Object;Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    iput-object p2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$base:Lorg/junit/runners/model/Statement;

    iput-object p4, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method

.method private evaluateSafely(Lorg/junit/runners/model/Statement;)Ljava/lang/Throwable;
    .locals 0

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    invoke-static {v1}, Lorg/mockito/internal/junit/JUnitRule;->access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/internal/junit/UniversalTestListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/MockitoAnnotations;->initMocks(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0, v0}, Lorg/mockito/internal/junit/JUnitRule$1;->evaluateSafely(Lorg/junit/runners/model/Statement;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    invoke-static {v2}, Lorg/mockito/internal/junit/JUnitRule;->access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/internal/junit/UniversalTestListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 49
    new-instance v1, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$target:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mockito/internal/junit/JUnitRule$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    invoke-static {v2}, Lorg/mockito/internal/junit/JUnitRule;->access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/internal/junit/UniversalTestListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mockito/internal/junit/UniversalTestListener;->testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lorg/mockito/Mockito;->validateMockitoUsage()V

    return-void

    .line 53
    :cond_0
    throw v0

    :catchall_0
    move-exception v0

    .line 45
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/junit/JUnitRule$1;->this$0:Lorg/mockito/internal/junit/JUnitRule;

    invoke-static {v2}, Lorg/mockito/internal/junit/JUnitRule;->access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/internal/junit/UniversalTestListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    throw v0
.end method
