.class public Lorg/mockito/internal/creation/instance/ConstructorInstantiator;
.super Ljava/lang/Object;
.source "ConstructorInstantiator.java"

# interfaces
.implements Lorg/mockito/internal/creation/instance/Instantiator;


# instance fields
.field private final constructorArgs:[Ljava/lang/Object;

.field private final hasOuterClassInstance:Z


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    .line 30
    iput-object p2, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private constructorArgTypes()Ljava/lang/String;
    .locals 6

    .line 76
    iget-boolean v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, v0

    .line 80
    :goto_1
    iget-object v3, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    sub-int v4, v2, v0

    .line 81
    aget-object v5, v3, v2

    if-nez v5, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructorArgsString()Ljava/lang/String;
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v1, :cond_0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a constructor that matches these argument types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgTypes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "a 0-arg constructor"

    :goto_1
    return-object v0
.end method

.method private static varargs invokeConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private multipleMatchingConstructors(Ljava/lang/Class;Ljava/util/List;)Lorg/mockito/internal/creation/instance/InstantiationException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)",
            "Lorg/mockito/internal/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/mockito/internal/creation/instance/InstantiationException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create instance of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple constructors could be matched to arguments of types "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgTypes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, ""

    const-string v2, " - "

    invoke-static {p1, v2, p2}, Lorg/mockito/internal/util/StringUtil;->join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const/4 p1, 0x3

    const-string p2, "If you believe that Mockito could do a better join deciding on which constructor to use, please let us know."

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "Ticket 685 contains the discussion and a workaround for ambiguous constructors using inner class."

    aput-object p2, v1, p1

    const/4 p1, 0x5

    const-string p2, "See https://github.com/mockito/mockito/issues/685"

    aput-object p2, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private noMatchingConstructor(Ljava/lang/Class;)Lorg/mockito/internal/creation/instance/InstantiationException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/internal/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgsString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-boolean v1, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->hasOuterClassInstance:Z

    if-eqz v1, :cond_0

    const-string v1, " and provided outer instance is correct"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 92
    :goto_0
    new-instance v2, Lorg/mockito/internal/creation/instance/InstantiationException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create instance of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please ensure that the target class has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-static {v3}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Lorg/mockito/internal/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private paramsException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/internal/creation/instance/InstantiationException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/mockito/internal/creation/instance/InstantiationException;"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/mockito/internal/creation/instance/InstantiationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create instance of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please ensure the target class has "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and executes cleanly."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static paramsMatch([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 118
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 122
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 123
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 126
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/Primitives;->primitiveTypeOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private varargs withParams(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 41
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 42
    invoke-static {v6, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->paramsMatch([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->invokeConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 53
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 54
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->noMatchingConstructor(Ljava/lang/Class;)Lorg/mockito/internal/creation/instance/InstantiationException;

    move-result-object p1

    throw p1

    .line 56
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->multipleMatchingConstructors(Ljava/lang/Class;Ljava/util/List;)Lorg/mockito/internal/creation/instance/InstantiationException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p2

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->paramsException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/mockito/internal/creation/instance/InstantiationException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->constructorArgs:[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/instance/ConstructorInstantiator;->withParams(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
