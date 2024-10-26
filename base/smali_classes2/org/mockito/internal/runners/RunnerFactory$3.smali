.class Lorg/mockito/internal/runners/RunnerFactory$3;
.super Ljava/lang/Object;
.source "RunnerFactory.java"

# interfaces
.implements Lorg/mockito/internal/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/runners/RunnerFactory;->createStrictStubs(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/Supplier<",
        "Lorg/mockito/internal/junit/MockitoTestListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/runners/RunnerFactory;


# direct methods
.method constructor <init>(Lorg/mockito/internal/runners/RunnerFactory;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/mockito/internal/runners/RunnerFactory$3;->this$0:Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/mockito/internal/runners/RunnerFactory$3;->get()Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/mockito/internal/junit/MockitoTestListener;
    .locals 1

    .line 55
    new-instance v0, Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;

    invoke-direct {v0}, Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;-><init>()V

    return-object v0
.end method
