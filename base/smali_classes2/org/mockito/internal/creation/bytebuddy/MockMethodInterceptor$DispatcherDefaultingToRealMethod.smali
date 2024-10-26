.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;
.super Ljava/lang/Object;
.source "MockMethodInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherDefaultingToRealMethod"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static interceptAbstract(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/This;
        .end annotation
    .end param
    .param p1    # Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/FieldValue;
            value = "mockitoInterceptor"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/StubValue;
        .end annotation
    .end param
    .param p3    # Ljava/lang/reflect/Method;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/Origin;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/AllArguments;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/RuntimeType;
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 120
    :cond_0
    sget-object p2, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;->INSTANCE:Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    invoke-virtual {p1, p0, p3, p4, p2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static interceptSuperCallable(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/This;
        .end annotation
    .end param
    .param p1    # Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/FieldValue;
            value = "mockitoInterceptor"
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/Origin;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/AllArguments;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Callable;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/SuperCall;
            serializableProxy = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/BindingPriority;
        value = 0x2
    .end annotation

    .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/RuntimeType;
    .end annotation

    if-nez p1, :cond_0

    .line 100
    invoke-interface {p4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$FromCallable;

    invoke-direct {v0, p4}, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$FromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p1, p0, p2, p3, v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
