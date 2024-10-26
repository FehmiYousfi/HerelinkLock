.class public Lorg/mockito/internal/junit/MismatchReportingTestListener;
.super Ljava/lang/Object;
.source "MismatchReportingTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;


# instance fields
.field private final logger:Lorg/mockito/internal/util/MockitoLogger;

.field private mocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/MockitoLogger;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->logger:Lorg/mockito/internal/util/MockitoLogger;

    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0

    .line 37
    iget-object p2, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    .line 29
    invoke-static {p1}, Lorg/mockito/internal/junit/util/TestName;->getTestName(Lorg/mockito/internal/junit/TestFinishedEvent;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getFailure()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Lorg/mockito/internal/junit/ArgMismatchFinder;

    invoke-direct {p1}, Lorg/mockito/internal/junit/ArgMismatchFinder;-><init>()V

    invoke-virtual {p1, v0}, Lorg/mockito/internal/junit/ArgMismatchFinder;->getStubbingArgMismatches(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/StubbingArgMismatches;

    move-result-object p1

    iget-object v0, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->logger:Lorg/mockito/internal/util/MockitoLogger;

    invoke-virtual {p1, v1, v0}, Lorg/mockito/internal/junit/StubbingArgMismatches;->format(Ljava/lang/String;Lorg/mockito/internal/util/MockitoLogger;)V

    :cond_0
    return-void
.end method
