.class public Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava7CapableVm"
.end annotation


# instance fields
.field private final parameterArray:Ljava/lang/reflect/Method;

.field private final returnType:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    .line 351
    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 330
    instance-of p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 330
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 330
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public parameterArray(Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.invoke.MethodType#parameterArray"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodType#parameterArray"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public returnType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 357
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.invoke.MethodType#returnType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodType#returnType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
