.class public Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;
.super Ljava/lang/Object;
.source "ParameterDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava8CapableVm"
.end annotation


# instance fields
.field private final getModifiers:Ljava/lang/reflect/Method;

.field private final getName:Ljava/lang/reflect/Method;

.field private final getParameters:Ljava/lang/reflect/Method;

.field private final isNamePresent:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    .line 336
    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    .line 337
    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    .line 338
    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    return-void
.end method

.method private getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;
    .locals 2

    .line 383
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 387
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error invoking java.lang.reflect.Executable#getParameters"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 385
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Executable#getParameters"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 303
    instance-of p1, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 303
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

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
    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    if-nez v1, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getModifiers(Ljava/lang/reflect/AccessibleObject;I)I
    .locals 1

    .line 344
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 348
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error invoking java.lang.reflect.Parameter#getModifiers"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 346
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Parameter#getModifiers"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getName(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/String;
    .locals 1

    .line 366
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 370
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error invoking java.lang.reflect.Parameter#getName"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 368
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Parameter#getName"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public hashCode()I
    .locals 4

    .line 303
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

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

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public isNamePresent(Ljava/lang/reflect/AccessibleObject;I)Z
    .locals 1

    .line 355
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 359
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error invoking java.lang.reflect.Parameter#isNamePresent"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 357
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Parameter#isNamePresent"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
