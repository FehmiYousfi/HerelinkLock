.class public Lorg/mockito/runners/VerboseMockitoJUnitRunner;
.super Lorg/junit/runner/Runner;
.source "VerboseMockitoJUnitRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final runner:Lorg/mockito/internal/runners/InternalRunner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
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

    .line 33
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {v0}, Lorg/mockito/internal/runners/RunnerFactory;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mockito/runners/VerboseMockitoJUnitRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;)V

    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/runners/InternalRunner;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    return-void
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0}, Lorg/mockito/internal/runners/InternalRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .line 44
    new-instance v0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;

    invoke-direct {v0, p0}, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;-><init>(Lorg/mockito/runners/VerboseMockitoJUnitRunner;)V

    .line 61
    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->addFirstListener(Lorg/junit/runner/notification/RunListener;)V

    .line 63
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method
