.class Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;
.super Lorg/junit/runner/notification/RunListener;
.source "ConsoleSpammingMockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

.field warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;


# direct methods
.method constructor <init>(Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->this$0:Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object p1, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->this$0:Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;

    invoke-static {p1}, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;->access$000(Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner;)Lorg/mockito/internal/util/MockitoLogger;

    move-result-object p1

    iget-object v0, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-virtual {v0}, Lorg/mockito/internal/debugging/WarningsCollector;->getWarnings()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/mockito/internal/util/MockitoLogger;->log(Ljava/lang/Object;)V

    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    new-instance p1, Lorg/mockito/internal/debugging/WarningsCollector;

    invoke-direct {p1}, Lorg/mockito/internal/debugging/WarningsCollector;-><init>()V

    iput-object p1, p0, Lorg/mockito/runners/ConsoleSpammingMockitoJUnitRunner$1;->warningsCollector:Lorg/mockito/internal/debugging/WarningsCollector;

    return-void
.end method
