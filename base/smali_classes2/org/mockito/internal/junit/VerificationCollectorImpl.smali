.class public Lorg/mockito/internal/junit/VerificationCollectorImpl;
.super Ljava/lang/Object;
.source "VerificationCollectorImpl.java"

# interfaces
.implements Lorg/mockito/junit/VerificationCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;
    }
.end annotation


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private numberOfFailures:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->resetBuilder()V

    return-void
.end method

.method static synthetic access$100(Lorg/mockito/internal/junit/VerificationCollectorImpl;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->append(Ljava/lang/String;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 3

    .line 75
    iget v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->numberOfFailures:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->numberOfFailures:I

    .line 76
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->numberOfFailures:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private resetBuilder()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There were multiple verification failures:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->builder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->numberOfFailures:I

    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 31
    new-instance p2, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;

    invoke-direct {p2, p0, p1}, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;-><init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/junit/runners/model/Statement;)V

    return-object p2
.end method

.method public assertLazily()Lorg/mockito/junit/VerificationCollector;
    .locals 2

    .line 60
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/junit/VerificationCollectorImpl$2;

    invoke-direct {v1, p0}, Lorg/mockito/internal/junit/VerificationCollectorImpl$2;-><init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;)V

    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/MockingProgress;->setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V

    return-object p0
.end method

.method public collectAndReport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/exceptions/base/MockitoAssertionError;
        }
    .end annotation

    .line 48
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/MockingProgress;->setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V

    .line 50
    iget v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->numberOfFailures:I

    if-gtz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->resetBuilder()V

    .line 55
    new-instance v1, Lorg/mockito/exceptions/base/MockitoAssertionError;

    invoke-direct {v1, v0}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
