.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher$InjectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BootstrapClassLoaderCapableInjectorFactory"
.end annotation


# instance fields
.field private final bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final protectionDomain:Ljava/security/ProtectionDomain;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 0

    .line 8175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8176
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    .line 8177
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    .line 8178
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8148
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8148
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 8148
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

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

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public resolve()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 3

    .line 8183
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    .line 8184
    invoke-interface {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;->make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple$Resolution$BootstrapClassLoaderCapableInjectorFactory;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
