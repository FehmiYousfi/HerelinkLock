.class public Lorg/mockito/junit/MockitoJUnit;
.super Ljava/lang/Object;
.source "MockitoJUnit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collector()Lorg/mockito/junit/VerificationCollector;
    .locals 1
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 40
    new-instance v0, Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-direct {v0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;-><init>()V

    return-object v0
.end method

.method public static rule()Lorg/mockito/junit/MockitoRule;
    .locals 3

    .line 28
    new-instance v0, Lorg/mockito/internal/junit/JUnitRule;

    new-instance v1, Lorg/mockito/internal/util/ConsoleMockitoLogger;

    invoke-direct {v1}, Lorg/mockito/internal/util/ConsoleMockitoLogger;-><init>()V

    sget-object v2, Lorg/mockito/quality/Strictness;->WARN:Lorg/mockito/quality/Strictness;

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/junit/JUnitRule;-><init>(Lorg/mockito/internal/util/MockitoLogger;Lorg/mockito/quality/Strictness;)V

    return-object v0
.end method
