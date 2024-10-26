.class public Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;
.super Ljava/lang/Object;
.source "UnnecessaryStubbingsReporter.java"

# interfaces
.implements Lorg/mockito/listeners/MockCreationListener;


# instance fields
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
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->mocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0

    .line 40
    iget-object p2, p0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->mocks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public validateUnusedStubs(Ljava/lang/Class;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runner/notification/RunNotifier;",
            ")V"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbingsFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->mocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;->getUnusedStubbingsByLocation(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "unnecessary Mockito stubbings"

    .line 33
    invoke-static {p1, v1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 34
    new-instance v2, Lorg/junit/runner/notification/Failure;

    invoke-static {p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method
