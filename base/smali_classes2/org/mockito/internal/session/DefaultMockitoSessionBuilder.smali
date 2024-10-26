.class public Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;
.super Ljava/lang/Object;
.source "DefaultMockitoSessionBuilder.java"

# interfaces
.implements Lorg/mockito/session/MockitoSessionBuilder;


# instance fields
.field private strictness:Lorg/mockito/quality/Strictness;

.field private testClassInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public startMocking()Lorg/mockito/MockitoSession;
    .locals 4

    .line 29
    iget-object v0, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->testClassInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->strictness:Lorg/mockito/quality/Strictness;

    if-nez v1, :cond_1

    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    .line 31
    :cond_1
    new-instance v2, Lorg/mockito/internal/framework/DefaultMockitoSession;

    new-instance v3, Lorg/mockito/internal/util/ConsoleMockitoLogger;

    invoke-direct {v3}, Lorg/mockito/internal/util/ConsoleMockitoLogger;-><init>()V

    invoke-direct {v2, v0, v1, v3}, Lorg/mockito/internal/framework/DefaultMockitoSession;-><init>(Ljava/lang/Object;Lorg/mockito/quality/Strictness;Lorg/mockito/internal/util/MockitoLogger;)V

    return-object v2
.end method

.method public strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/session/MockitoSessionBuilder;
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;->strictness:Lorg/mockito/quality/Strictness;

    return-object p0
.end method
