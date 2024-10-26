.class Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;
.super Ljava/lang/Object;
.source "SubclassBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final readReplace:Lnet/bytebuddy/implementation/Implementation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/Implementation;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V
    .locals 2

    .line 49
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method

.method protected constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;",
            "Lnet/bytebuddy/implementation/Implementation;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    .line 58
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    .line 59
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 60
    new-instance p1, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {p1}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 61
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->random:Ljava/util/Random;

    return-void
.end method

.method private isComingFromJDK(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java Runtime Environment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isComingFromSealedPackage(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->isSealed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isComingFromSignedJar(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->getSigners()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isGroovyMethod()Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "groovy.lang.GroovyObjectSupport"

    .line 108
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method private nameFor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromJDK(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromSignedJar(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isComingFromSealedPackage(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codegen."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    const-string v1, "MockitoMock"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 119
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s$%s$%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 7
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

    .line 66
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->nameFor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->isGroovyMethod()Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->annotateType([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v0

    const-class v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;

    invoke-static {v1}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v3, Lnet/bytebuddy/description/modifier/SynchronizationState;->PLAIN:Lnet/bytebuddy/description/modifier/SynchronizationState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->withModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    sget-object v2, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;->INCLUDING_RECEIVER:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v0

    const-class v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;

    invoke-static {v2}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v0

    const-class v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;

    invoke-static {v2}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    const-wide/16 v2, 0x2a

    invoke-interface {v0, v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->serialVersionUid(J)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object v0

    const-class v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    new-array v3, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v5, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v5, v3, v4

    const-string v5, "mockitoInterceptor"

    invoke-interface {v0, v5, v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/implementation/FieldAccessor;->ofBeanProperty()Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 84
    iget-object v2, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v3, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    if-ne v2, v3, :cond_0

    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 85
    const-class v3, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializableMock;

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object v0

    const-class v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;

    invoke-static {v2}, Lnet/bytebuddy/implementation/MethodDelegation;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 89
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v6, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v6, v5, v4

    const-string v6, "readObject"

    invoke-interface {v0, v6, v2, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/io/ObjectInputStream;

    aput-object v5, v2, v4

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/ClassNotFoundException;

    aput-object v5, v2, v4

    const-class v5, Ljava/io/IOException;

    aput-object v5, v2, v1

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->throwing([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v0

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->readReplace:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 94
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    new-instance v2, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    invoke-direct {v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>()V

    new-array v5, v1, [Ljava/lang/Class;

    iget-object v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    iget-object v5, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    aput-object v6, v5, v4

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    aput-object v6, v5, v4

    const-class v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;

    aput-object v4, v5, v1

    const-class v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;

    aput-object v1, v5, v3

    invoke-virtual {v2, v5}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v1

    const-class v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->build(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-interface {v2, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->getStrategy(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
