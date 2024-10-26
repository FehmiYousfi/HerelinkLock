.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.super Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SuperMethodCall;
    }
.end annotation


# instance fields
.field private final identifier:Ljava/lang/String;

.field final interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;-><init>()V

    .line 32
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    .line 35
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 36
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->identifier:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->tryInvoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    return-object p0
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Origin;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$AllArguments;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodEnter;
        skipOn = Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->isMocked(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->isOverridden(Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->handle(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static exit(Ljava/lang/Object;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
            typing = .enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Enter;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static hideRecursiveCall(Ljava/lang/Throwable;ILjava/lang/Class;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 68
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v3, v2

    aget-object v3, v0, v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    array-length p2, v0

    sub-int/2addr p2, p1

    sub-int/2addr p2, v2

    .line 71
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    .line 72
    invoke-static {v0, v1, v3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p2

    .line 73
    invoke-static {v0, v2, v3, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static tryInvoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 198
    new-instance p2, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {p2}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->hideRecursiveCall(Ljava/lang/Throwable;ILjava/lang/Class;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 199
    throw p1
.end method


# virtual methods
.method public handle(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 90
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->identifier:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    goto :goto_0

    .line 92
    :cond_1
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SuperMethodCall;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SuperMethodCall;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    .line 94
    :goto_0
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;

    invoke-virtual {v6, p1, p2, p3, v8}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;-><init>(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V

    return-object v0
.end method

.method public isMock(Ljava/lang/Object;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMocked(Ljava/lang/Object;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->selfCallInfo:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->checkSuperCall(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->isMock(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOverridden(Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 115
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 117
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1
.end method
