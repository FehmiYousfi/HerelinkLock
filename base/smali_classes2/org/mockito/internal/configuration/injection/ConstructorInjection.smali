.class public Lorg/mockito/internal/configuration/injection/ConstructorInjection;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "ConstructorInjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;

    invoke-direct {v0, p3}, Lorg/mockito/internal/configuration/injection/ConstructorInjection$SimpleArgumentResolver;-><init>(Ljava/util/Set;)V

    .line 46
    new-instance p3, Lorg/mockito/internal/util/reflection/FieldInitializer;

    invoke-direct {p3, p2, p1, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V

    invoke-virtual {p3}, Lorg/mockito/internal/util/reflection/FieldInitializer;->initialize()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;->fieldWasInitializedUsingContructorArgs()Z

    move-result p1
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 50
    invoke-virtual {p2}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/reflect/InvocationTargetException;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    invoke-virtual {p2}, Lorg/mockito/exceptions/base/MockitoException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
