.class public Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;
.super Ljava/lang/Object;
.source "InlineBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;
    }
.end annotation


# static fields
.field static final EXCLUDES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final advice:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final identifier:Ljava/lang/String;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Byte;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Short;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Character;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Double;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 74
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 77
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    sget-object v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    invoke-direct {v0, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    .line 78
    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    .line 79
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->advice:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    .line 80
    new-instance p2, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    const-class v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->withBinders([Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v1

    const-class v3, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;

    invoke-virtual {v1, v3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isNative()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {p2, v0, v5}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 83
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->advice:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-static {p2, v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->set(Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;)V

    .line 84
    invoke-interface {p1, p0, v2}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;Z)V

    return-void
.end method

.method private addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 136
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 137
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkSupportedCombination(ZLorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported settings with this type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerRetransformation(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v1, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->addInterfaces(Ljava/util/Set;[Ljava/lang/Class;)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 116
    :try_start_0
    iget-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-interface {p1, v1}, Ljava/lang/instrument/Instrumentation;->retransformClasses([Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 119
    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_2
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not modify all classes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v1, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 93
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->checkSupportedCombination(ZLorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->triggerRetransformation(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->subclassEngine:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/IllegalClassFormatException;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 150
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->mocked:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;

    invoke-virtual {p2, p3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 156
    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p5}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->of(Ljava/lang/String;[B)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    new-instance p4, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;

    invoke-direct {p4, p3, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;-><init>(Ljava/lang/Class;Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$1;)V

    invoke-interface {p2, p4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p3

    const-class p4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    iget-object p5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    invoke-virtual {p3, p4, p5}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p3

    const-class p4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-virtual {p3, p4}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p4

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isBridge()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p5, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p5, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p5, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {p5}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-interface {p4, p5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p4

    const-string p5, "java."

    invoke-static {p5}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {p5}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p5, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-static {p5}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p5

    invoke-interface {p4, p5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p4

    invoke-virtual {p3, p4}, Lnet/bytebuddy/asm/Advice;->on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p3

    const-class p4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    iget-object p5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    invoke-virtual {p3, p4, p5}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p3

    const-class p4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForHashCode;

    invoke-virtual {p3, p4}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p4

    invoke-virtual {p3, p4}, Lnet/bytebuddy/asm/Advice;->on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p3

    const-class p4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;

    iget-object p5, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->identifier:Ljava/lang/String;

    invoke-virtual {p3, p4, p5}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->bind(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object p3

    const-class p4, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;

    invoke-virtual {p3, p4}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p4

    invoke-virtual {p3, p4}, Lnet/bytebuddy/asm/Advice;->on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-object p1
.end method
