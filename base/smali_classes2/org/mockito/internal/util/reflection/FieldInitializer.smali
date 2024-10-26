.class public Lorg/mockito/internal/util/reflection/FieldInitializer;
.super Ljava/lang/Object;
.source "FieldInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;,
        Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;,
        Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;,
        Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final fieldOwner:Ljava/lang/Object;

.field private final instantiator:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 49
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V
    .locals 1

    .line 64
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;

    invoke-direct {v0, p1, p2, p3}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorArgumentResolver;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/FieldInitializer;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldReader;

    invoke-direct {v0, p1, p2}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotLocal(Ljava/lang/reflect/Field;)V

    .line 70
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotInner(Ljava/lang/reflect/Field;)V

    .line 71
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotInterface(Ljava/lang/reflect/Field;)V

    .line 72
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotEnum(Ljava/lang/reflect/Field;)V

    .line 73
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer;->checkNotAbstract(Ljava/lang/reflect/Field;)V

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->fieldOwner:Ljava/lang/Object;

    .line 77
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    .line 78
    iput-object p3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->instantiator:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;

    return-void
.end method

.method private acquireFieldInstance()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->fieldOwner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v1, Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;-><init>(Ljava/lang/Object;ZZ)V

    return-object v1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->instantiator:Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;

    invoke-interface {v0}, Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;->instantiate()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v0

    return-object v0
.end method

.method private checkNotAbstract(Ljava/lang/reflect/Field;)V
    .locals 3

    .line 119
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is an abstract class."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotEnum(Ljava/lang/reflect/Field;)V
    .locals 3

    .line 125
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is an enum."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotInner(Ljava/lang/reflect/Field;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is an inner non static class."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkNotInterface(Ljava/lang/reflect/Field;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is an interface."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotLocal(Ljava/lang/reflect/Field;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is a local class."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public initialize()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 5

    .line 87
    new-instance v0, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    .line 88
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    .line 91
    :try_start_0
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/FieldInitializer;->acquireFieldInstance()Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    :try_start_1
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problems initializing field \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    throw v1
.end method
