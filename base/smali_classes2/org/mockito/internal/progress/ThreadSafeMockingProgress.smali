.class public Lorg/mockito/internal/progress/ThreadSafeMockingProgress;
.super Ljava/lang/Object;
.source "ThreadSafeMockingProgress.java"


# static fields
.field private static final MOCKING_PROGRESS_PROVIDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/mockito/internal/progress/MockingProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/mockito/internal/progress/ThreadSafeMockingProgress$1;

    invoke-direct {v0}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress$1;-><init>()V

    sput-object v0, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->MOCKING_PROGRESS_PROVIDER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final mockingProgress()Lorg/mockito/internal/progress/MockingProgress;
    .locals 1

    .line 30
    sget-object v0, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->MOCKING_PROGRESS_PROVIDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/progress/MockingProgress;

    return-object v0
.end method
