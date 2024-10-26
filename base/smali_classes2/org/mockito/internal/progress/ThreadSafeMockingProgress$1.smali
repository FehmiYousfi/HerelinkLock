.class final Lorg/mockito/internal/progress/ThreadSafeMockingProgress$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadSafeMockingProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/progress/ThreadSafeMockingProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/mockito/internal/progress/MockingProgress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress$1;->initialValue()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/mockito/internal/progress/MockingProgress;
    .locals 1

    .line 15
    new-instance v0, Lorg/mockito/internal/progress/MockingProgressImpl;

    invoke-direct {v0}, Lorg/mockito/internal/progress/MockingProgressImpl;-><init>()V

    return-object v0
.end method
