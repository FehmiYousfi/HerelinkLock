.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.super Ljava/lang/Object;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForDefaultMethod;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByReflectionFactory;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;,
        Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;
    }
.end annotation


# static fields
.field public static final INSTANCE_FIELD:Ljava/lang/String; = "target"

.field public static final REFLECTION_METHOD:Ljava/lang/String; = "make"


# instance fields
.field private final ignoreFinalizer:Z

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

.field private final proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;ZZ)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 90
    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 91
    iput-object p3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    .line 92
    iput-boolean p4, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    .line 93
    iput-boolean p5, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    return-void
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    return-object p0
.end method

.method static synthetic access$300(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method static synthetic access$400(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    instance-of p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 36
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

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
    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    iget-boolean p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 36
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

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

    iget-object v3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->invocationFactory:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    const/16 v3, 0x4f

    const/16 v4, 0x61

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 3

    .line 100
    new-instance v0, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v0, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->ignoreFinalizer:Z

    if-eqz p2, :cond_0

    .line 101
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 102
    invoke-virtual {p2, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 103
    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    .line 104
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;->serializableProxy:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-array p2, v0, [Ljava/lang/Class;

    const-class v2, Ljava/io/Serializable;

    aput-object v2, p2, v1

    goto :goto_1

    :cond_1
    new-array p2, v1, [Ljava/lang/Class;

    .line 105
    :goto_1
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    .line 106
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;

    invoke-direct {p2, p0, p3}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$MethodCall;-><init>(Lnet/bytebuddy/implementation/auxiliary/TypeProxy;Lnet/bytebuddy/implementation/MethodAccessorFactory;)V

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/dynamic/TargetType;

    new-array p3, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v0, p3, v1

    const-string v0, "make"

    .line 107
    invoke-interface {p1, v0, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$SilentConstruction;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
