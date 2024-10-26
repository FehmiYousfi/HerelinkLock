.class Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;
.super Ljava/lang/Object;
.source "FieldInitializer.java"

# interfaces
.implements Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/FieldInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParameterizedConstructorInstantiator"
.end annotation


# instance fields
.field private final argResolver:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

.field private final byParameterNumber:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final field:Ljava/lang/reflect/Field;

.field private final testClass:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;-><init>(Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;)V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->byParameterNumber:Ljava/util/Comparator;

    .line 256
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->testClass:Ljava/lang/Object;

    .line 257
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    .line 258
    iput-object p3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->argResolver:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

    return-void
.end method

.method private biggestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->byParameterNumber:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 298
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 299
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->checkParameterized(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;)V

    return-object p1
.end method

.method private checkParameterized(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_0

    return-void

    .line 290
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " has no parameterized constructor"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public instantiate()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 6

    .line 262
    new-instance v0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    const/4 v1, 0x0

    .line 265
    :try_start_0
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->biggestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    .line 268
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->argResolver:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;->resolveTypeInstances([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->testClass:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-static {v3, v4, v2}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 272
    new-instance v2, Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->testClass:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;-><init>(Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 280
    :try_start_1
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException (see the stack trace for cause): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    .line 278
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstantiationException (see the stack trace for cause): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    .line 276
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the constructor of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' has raised an exception (see the stack trace for cause): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    .line 274
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internal error : argResolver provided incorrect types for constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :cond_1
    throw v2
.end method
