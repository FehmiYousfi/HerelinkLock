.class public Lorg/mockito/internal/framework/DefaultMockitoFramework;
.super Ljava/lang/Object;
.source "DefaultMockitoFramework.java"

# interfaces
.implements Lorg/mockito/MockitoFramework;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    .locals 1

    const-string v0, "listener"

    .line 16
    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/internal/progress/MockingProgress;->addListener(Lorg/mockito/listeners/MockitoListener;)V

    return-object p0
.end method

.method public removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    .locals 1

    const-string v0, "listener"

    .line 22
    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/internal/progress/MockingProgress;->removeListener(Lorg/mockito/listeners/MockitoListener;)V

    return-object p0
.end method
