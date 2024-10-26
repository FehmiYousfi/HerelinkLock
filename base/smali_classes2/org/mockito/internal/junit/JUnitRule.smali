.class public Lorg/mockito/internal/junit/JUnitRule;
.super Ljava/lang/Object;
.source "JUnitRule.java"

# interfaces
.implements Lorg/mockito/junit/MockitoRule;


# instance fields
.field private final listener:Lorg/mockito/internal/junit/UniversalTestListener;

.field private final logger:Lorg/mockito/internal/util/MockitoLogger;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/MockitoLogger;Lorg/mockito/quality/Strictness;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitRule;->logger:Lorg/mockito/internal/util/MockitoLogger;

    .line 29
    new-instance v0, Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-direct {v0, p2, p1}, Lorg/mockito/internal/junit/UniversalTestListener;-><init>(Lorg/mockito/quality/Strictness;Lorg/mockito/internal/util/MockitoLogger;)V

    iput-object v0, p0, Lorg/mockito/internal/junit/JUnitRule;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/junit/JUnitRule;)Lorg/mockito/internal/junit/UniversalTestListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/mockito/internal/junit/JUnitRule;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    return-object p0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 1

    .line 34
    new-instance v0, Lorg/mockito/internal/junit/JUnitRule$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/mockito/internal/junit/JUnitRule$1;-><init>(Lorg/mockito/internal/junit/JUnitRule;Ljava/lang/Object;Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;)V

    return-object v0
.end method

.method public silent()Lorg/mockito/junit/MockitoRule;
    .locals 3

    .line 73
    new-instance v0, Lorg/mockito/internal/junit/JUnitRule;

    iget-object v1, p0, Lorg/mockito/internal/junit/JUnitRule;->logger:Lorg/mockito/internal/util/MockitoLogger;

    sget-object v2, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/junit/JUnitRule;-><init>(Lorg/mockito/internal/util/MockitoLogger;Lorg/mockito/quality/Strictness;)V

    return-object v0
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/junit/MockitoRule;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitRule;->listener:Lorg/mockito/internal/junit/UniversalTestListener;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/UniversalTestListener;->setStrictness(Lorg/mockito/quality/Strictness;)V

    return-object p0
.end method
