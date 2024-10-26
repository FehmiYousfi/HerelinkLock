.class public Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;
.super Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava8CapableVm"
.end annotation


# instance fields
.field private final revealDirect:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1046
    invoke-direct/range {p0 .. p8}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1047
    iput-object p9, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;->revealDirect:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1016
    instance-of p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1016
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;->revealDirect:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;->revealDirect:Ljava/lang/reflect/Method;

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

    .line 1016
    invoke-super {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->hashCode()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;->revealDirect:Ljava/lang/reflect/Method;

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
    .locals 0

    return-object p0
.end method

.method public reveal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1053
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;->revealDirect:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1057
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error invoking java.lang.invoke.MethodHandles.Lookup#revealDirect"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1055
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.invoke.MethodHandles.Lookup#revealDirect"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
