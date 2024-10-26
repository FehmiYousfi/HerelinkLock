.class public Lorg/mockito/junit/MockitoJUnitRunner;
.super Lorg/junit/runner/Runner;
.source "MockitoJUnitRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/junit/MockitoJUnitRunner$StrictStubs;,
        Lorg/mockito/junit/MockitoJUnitRunner$Strict;,
        Lorg/mockito/junit/MockitoJUnitRunner$Silent;
    }
.end annotation


# instance fields
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

    .line 152
    new-instance v0, Lorg/mockito/internal/runners/StrictRunner;

    new-instance v1, Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {v1}, Lorg/mockito/internal/runners/RunnerFactory;-><init>()V

    invoke-virtual {v1, p1}, Lorg/mockito/internal/runners/RunnerFactory;->createStrict(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/internal/runners/StrictRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/mockito/junit/MockitoJUnitRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;)V

    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/runners/InternalRunner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/mockito/junit/MockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

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

    .line 171
    iget-object v0, p0, Lorg/mockito/junit/MockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/mockito/junit/MockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0}, Lorg/mockito/internal/runners/InternalRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/mockito/junit/MockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method
