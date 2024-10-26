.class public Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;
.super Lorg/junit/runner/Runner;
.source "ConsoleSpammingMockitoJUnitRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final logger:Lorg/mockito/internal/util/MockitoLogger;

.field private final runner:Lorg/mockito/internal/runners/InternalRunner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/mockito/internal/util/ConsoleMockitoLogger;

    invoke-direct {v0}, Lorg/mockito/internal/util/ConsoleMockitoLogger;-><init>()V

    new-instance v1, Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {v1}, Lorg/mockito/internal/runners/RunnerFactory;-><init>()V

    invoke-virtual {v1, p1}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;-><init>(Lorg/mockito/internal/util/MockitoLogger;Lorg/mockito/internal/runners/InternalRunner;)V

    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/util/MockitoLogger;Lorg/mockito/internal/runners/InternalRunner;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 40
    iput-object p2, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    .line 41
    iput-object p1, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->logger:Lorg/mockito/internal/util/MockitoLogger;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;)Lorg/mockito/internal/util/MockitoLogger;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->logger:Lorg/mockito/internal/util/MockitoLogger;

    return-object p0
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0}, Lorg/mockito/internal/runners/InternalRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .line 46
    new-instance v0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;

    invoke-direct {v0, p0}, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;-><init>(Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;)V

    .line 59
    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 61
    iget-object v0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method
