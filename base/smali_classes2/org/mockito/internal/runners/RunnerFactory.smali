.class public Lorg/mockito/internal/runners/RunnerFactory;
.super Ljava/lang/Object;
.source "RunnerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/runners/RunnerFactory$1;-><init>(Lorg/mockito/internal/runners/RunnerFactory;)V

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/util/Supplier<",
            "Lorg/mockito/internal/junit/MockitoTestListener;",
            ">;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    :try_start_0
    const-string v0, "org.mockito.internal.runners.DefaultInternalRunner"

    .line 69
    new-instance v1, Lorg/mockito/internal/runners/util/RunnerProvider;

    invoke-direct {v1}, Lorg/mockito/internal/runners/util/RunnerProvider;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/mockito/internal/runners/util/RunnerProvider;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 82
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "\n\nMockitoRunner can only be used with JUnit 4.5 or higher.\nYou can upgrade your JUnit version or write your own Runner (please consider contributing your runner to the Mockito community).\nBear in mind that you can still enjoy all features of the framework without using runners (they are completely optional).\nIf you get this error despite using JUnit 4.5 or higher then please report this error to the mockito mailing list.\n"

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_0
    move-exception p2

    .line 71
    invoke-static {p1}, Lorg/mockito/internal/runners/util/TestMethodsFinder;->hasTestMethods(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\nNo tests found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Is the method annotated with @Test?\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Is the method public?\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 80
    :cond_0
    throw p2
.end method

.method public createStrict(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory$2;

    invoke-direct {v0, p0}, Lorg/mockito/internal/runners/RunnerFactory$2;-><init>(Lorg/mockito/internal/runners/RunnerFactory;)V

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1

    return-object p1
.end method

.method public createStrictStubs(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/runners/InternalRunner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory$3;

    invoke-direct {v0, p0}, Lorg/mockito/internal/runners/RunnerFactory$3;-><init>(Lorg/mockito/internal/runners/RunnerFactory;)V

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;Lorg/mockito/internal/util/Supplier;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1

    return-object p1
.end method
