.class public abstract Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.implements Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# instance fields
.field protected final getDeclaringClass:Ljava/lang/reflect/Method;

.field protected final getMethodType:Ljava/lang/reflect/Method;

.field protected final getName:Ljava/lang/reflect/Method;

.field protected final getReferenceKind:Ljava/lang/reflect/Method;

.field protected final lookupClass:Ljava/lang/reflect/Method;

.field protected final parameterArray:Ljava/lang/reflect/Method;

.field protected final publicLookup:Ljava/lang/reflect/Method;

.field protected final returnType:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    .line 914
    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    .line 915
    iput-object p3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    .line 916
    iput-object p4, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    .line 917
    iput-object p5, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    .line 918
    iput-object p6, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    .line 919
    iput-object p7, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    .line 920
    iput-object p8, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 850
    instance-of p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 850
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

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
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

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
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

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
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    if-nez v1, :cond_11

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :goto_7
    return v2

    :cond_12
    return v0
.end method

.method public getDeclaringClass(Ljava/lang/Object;)Ljava/lang/Class;
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

    .line 959
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

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

    .line 963
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getDeclaringClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 961
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getDeclaringClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMethodType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 937
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 941
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getMethodType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getMethodType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 970
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 974
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getName"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 972
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getName"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getReferenceKind(Ljava/lang/Object;)I
    .locals 2

    .line 948
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

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

    .line 952
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getReferenceKind"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 950
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getReferenceKind"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 850
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

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

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public lookupType(Ljava/lang/Object;)Ljava/lang/Class;
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

    .line 1003
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

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

    .line 1007
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.reflect.MethodHandles.Lookup#lookupClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.MethodHandles.Lookup#lookupClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parameterArray(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 992
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 996
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.reflect.MethodType#parameterArray"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.MethodType#parameterArray"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public publicLookup()Ljava/lang/Object;
    .locals 3

    .line 926
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 930
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Error invoking java.lang.invoke.MethodHandles#publicLookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 928
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot access java.lang.invoke.MethodHandles#publicLookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    .line 981
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

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

    .line 985
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Error invoking java.lang.reflect.MethodType#returnType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 983
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodType#returnType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
