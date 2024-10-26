.class public Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;
.super Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;
.source "JavaConstant.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava7CapableVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final methodInfo:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 1100
    invoke-direct/range {p0 .. p8}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1101
    iput-object p9, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1070
    instance-of p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1070
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    iget-object v1, v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1070
    invoke-super {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public initialize()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
    .locals 1

    .line 1106
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;

    return-object v0
.end method

.method public reveal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1124
    :try_start_0
    iget-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1130
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error constructing java.lang.invoke.MethodInfo"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1128
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error invoking java.lang.invoke.MethodInfo()"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1126
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.invoke.MethodInfo()"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1070
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->run()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
    .locals 2

    .line 1113
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1114
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getName:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1115
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getDeclaringClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1116
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getReferenceKind:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1117
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getMethodType:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method
