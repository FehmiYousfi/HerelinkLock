.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final decorator:Z

.field private final loaded:Z

.field private final module:Lnet/bytebuddy/utility/JavaModule;

.field private final protectionDomain:Ljava/security/ProtectionDomain;

.field private final transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;ZLnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V
    .locals 0

    .line 8084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8085
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 8086
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    .line 8087
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    .line 8088
    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    .line 8089
    iput-boolean p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    .line 8090
    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 8091
    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 8092
    iput-boolean p8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 11

    .line 8114
    new-instance v9, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-boolean v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object v8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    const/4 v10, 0x0

    aput-object v8, v0, v10

    const/4 v8, 0x1

    aput-object p1, v0, v8

    invoke-direct {v7, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)V

    iget-boolean v8, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;ZLnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    return-object v9
.end method

.method public apply(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/security/AccessControlContext;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)[B
    .locals 6

    .line 8133
    invoke-interface {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;->dispatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;

    move-result-object p1

    .line 8134
    iget-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 8137
    invoke-interface {p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;->resolve()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-result-object p5

    .line 8134
    invoke-interface {p3, v0, p4, p2, p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;->builder(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    invoke-interface {p7, p2, p3, p4, p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;->transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;->apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    sget-object p3, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 8137
    invoke-interface {p2, p3, p4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p2

    .line 8138
    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    new-instance p4, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;

    iget-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-direct {p4, p6, p3, p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    invoke-interface {p1, p2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;->register(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher$InjectorFactory;)V

    .line 8141
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-boolean v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    move-object v0, p8

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V

    .line 8142
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public asDecoratorOf(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 0

    .line 8104
    invoke-interface {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;->prepend(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object p1

    return-object p1
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8022
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8022
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

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
    iget-boolean v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    iget-boolean v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_4
    return v2

    :cond_d
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_5
    return v2

    :cond_f
    iget-boolean v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    iget-boolean p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public getSort()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
    .locals 1

    .line 8097
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->DECORATOR:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->TERMINAL:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 8022
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

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

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->classLoader:Ljava/lang/ClassLoader;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->module:Lnet/bytebuddy/utility/JavaModule;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->protectionDomain:Ljava/security/ProtectionDomain;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->loaded:Z

    const/16 v4, 0x4f

    const/16 v5, 0x61

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->typePool:Lnet/bytebuddy/pool/TypePool;

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->decorator:Z

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v4, v5

    :goto_7
    add-int/2addr v0, v4

    return v0
.end method

.method public prepend(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 1

    .line 8109
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    invoke-interface {p1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;->append(Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;

    move-result-object p1

    return-object p1
.end method
