.class Lorg/mockito/internal/runners/DefaultInternalRunner$1;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "DefaultInternalRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/runners/DefaultInternalRunner;-><init>(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

.field public target:Ljava/lang/Object;

.field final synthetic this$0:Lorg/mockito/internal/runners/DefaultInternalRunner;

.field final synthetic val$listenerSupplier:Lorg/mockito/internal/util/Supplier;


# direct methods
.method constructor <init>(Lorg/mockito/internal/runners/DefaultInternalRunner;Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->this$0:Lorg/mockito/internal/runners/DefaultInternalRunner;

    iput-object p3, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->val$listenerSupplier:Lorg/mockito/internal/util/Supplier;

    invoke-direct {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

    return-object p0
.end method


# virtual methods
.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .line 44
    new-instance v0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/runners/DefaultInternalRunner$1$1;-><init>(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Lorg/junit/runner/notification/RunNotifier;)V

    .line 67
    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 68
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method protected withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->val$listenerSupplier:Lorg/mockito/internal/util/Supplier;

    invoke-interface {v0}, Lorg/mockito/internal/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/junit/MockitoTestListener;

    iput-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

    .line 35
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->mockitoTestListener:Lorg/mockito/internal/junit/MockitoTestListener;

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 38
    invoke-static {p2}, Lorg/mockito/MockitoAnnotations;->initMocks(Ljava/lang/Object;)V

    .line 39
    iput-object p2, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->target:Ljava/lang/Object;

    .line 40
    invoke-super {p0, p1, p2, p3}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    return-object p1
.end method
