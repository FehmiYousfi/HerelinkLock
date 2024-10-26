.class Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;
.super Lorg/junit/runner/notification/RunListener;
.source "VerboseMockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/runners/VerboseMockitoJUnitRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/runners/VerboseMockitoJUnitRunner;

.field warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;


# direct methods
.method constructor <init>(Lorg/mockito/runners/VerboseMockitoJUnitRunner;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;->this$0:Lorg/mockito/runners/VerboseMockitoJUnitRunner;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-virtual {v0}, Lorg/mockito/internal/debugging/WarningsCollector;->getWarnings()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Lorg/mockito/internal/junit/util/JUnitFailureHacker;

    invoke-direct {v1}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/mockito/internal/junit/util/JUnitFailureHacker;->appendWarnings(Lorg/junit/runner/notification/Failure;Ljava/lang/String;)V

    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance p1, Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-direct {p1}, Lorg/mockito/internal/debugging/WarningsCollector;-><init>()V

    iput-object p1, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    return-void
.end method
