.class public Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;
.super Ljava/lang/Object;
.source "ParameterList.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava8CapableVm"
.end annotation


# instance fields
.field private final getParameterCount:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 239
    instance-of p1, p1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;

    return p1
.end method

.method public describe(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public describe(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 239
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getParameterCount(Ljava/lang/Object;)I
    .locals 2

    .line 259
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.reflect.Parameter#getModifiers"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.Parameter#getModifiers"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 239
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method
