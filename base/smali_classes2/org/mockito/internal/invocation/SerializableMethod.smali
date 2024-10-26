.class public Lorg/mockito/internal/invocation/SerializableMethod;
.super Ljava/lang/Object;
.source "SerializableMethod.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mockito/internal/invocation/MockitoMethod;


# static fields
.field private static final serialVersionUID:J = 0x5358375a84605cbdL


# instance fields
.field private final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final isAbstract:Z

.field private final isVarArgs:Z

.field private volatile transient method:Ljava/lang/reflect/Method;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    .line 30
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    .line 33
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 35
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isVarArgs:Z

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isAbstract:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 94
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 96
    :cond_2
    check-cast p1, Lorg/mockito/internal/invocation/SerializableMethod;

    .line 97
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 98
    iget-object v2, p1, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    if-eqz v2, :cond_4

    return v1

    .line 100
    :cond_3
    iget-object v3, p1, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 102
    :cond_4
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 103
    iget-object v2, p1, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 105
    :cond_5
    iget-object v3, p1, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 107
    :cond_6
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    iget-object v3, p1, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 109
    :cond_7
    iget-object v2, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    if-nez v2, :cond_8

    .line 110
    iget-object p1, p1, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    if-eqz p1, :cond_9

    return v1

    .line 112
    :cond_8
    iget-object p1, p1, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->exceptionTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getJavaMethod()Ljava/lang/reflect/Method;
    .locals 6

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 68
    :try_start_0
    iget-object v3, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    iget-object v5, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    iget-object v4, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    aput-object v4, v2, v1

    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    aput-object v1, v2, v0

    const-string v0, "The method %1$s.%2$s does not exists and you should not get to this point.\nPlease report this as a defect with an example of how to reproduce it."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    invoke-direct {v1, v0, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    iget-object v4, p0, Lorg/mockito/internal/invocation/SerializableMethod;->declaringClass:Ljava/lang/Class;

    aput-object v4, v2, v1

    iget-object v1, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    aput-object v1, v2, v0

    const-string v0, "The method %1$s.%2$s is probably private or protected and cannot be mocked.\nPlease report this as a defect with an example of how to reproduce it."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    invoke-direct {v1, v0, v3}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isAbstract:Z

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/SerializableMethod;->isVarArgs:Z

    return v0
.end method
