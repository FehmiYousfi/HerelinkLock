.class public Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
.super Ljava/lang/Object;
.source "ClassReloadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTALLER_TYPE:Ljava/lang/String; = "net.bytebuddy.agent.Installer"

.field private static final INSTRUMENTATION_GETTER:Ljava/lang/String; = "getInstrumentation"

.field private static final STATIC_MEMBER:Ljava/lang/Object;


# instance fields
.field private final bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final preregisteredTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)V
    .locals 2

    .line 79
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 79
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 98
    invoke-virtual {p2, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->validate(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 99
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    .line 100
    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    return-void
.end method

.method public static fromInstalledAgent()Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 4

    .line 141
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "net.bytebuddy.agent.Installer"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstrumentation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 143
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/instrument/Instrumentation;

    .line 141
    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->of(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Byte Buddy agent is not installed or not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 146
    throw v0
.end method

.method public static of(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 3

    .line 114
    invoke-interface {p0}, Ljava/lang/instrument/Instrumentation;->isRedefineClassesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->REDEFINITION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p0}, Ljava/lang/instrument/Instrumentation;->isRetransformClassesSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->RETRANSFORMATION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 121
    :goto_0
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    invoke-direct {v1, p0, v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)V

    return-object v1

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instrumentation does not support manipulation of loaded classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    instance-of p1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    return p1
.end method

.method public enableBootstrapInjection(Ljava/io/File;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 4

    .line 226
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    new-instance v3, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;

    invoke-direct {v3, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 32
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

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
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

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
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

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
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    if-nez v1, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 32
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

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

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 155
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v1, p1}, Ljava/lang/instrument/Instrumentation;->getInitiatedClasses(Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 156
    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 160
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 161
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 164
    new-instance v6, Ljava/lang/instrument/ClassDefinition;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v5, v7}, Ljava/lang/instrument/ClassDefinition;-><init>(Ljava/lang/Class;[B)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 171
    :cond_2
    :try_start_0
    iget-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {p2, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->apply(Ljava/lang/instrument/Instrumentation;Ljava/util/Map;)V

    .line 172
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    if-nez p1, :cond_3

    .line 173
    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 174
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;->make(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-direct {p2, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, p2

    .line 175
    :goto_2
    invoke-interface {p1, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 173
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v2

    :catch_0
    move-exception p1

    .line 180
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot redefine specified class"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 178
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not locate classes for redefinition"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs preregistered([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 237
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 238
    invoke-static {v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_0
    new-instance p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    invoke-direct {p1, v1, v2, v3, v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V

    return-object p1
.end method

.method public varargs reset(Lnet/bytebuddy/dynamic/ClassFileLocator;[Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    array-length v0, p2

    if-lez v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot reset types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot locate types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-object p0
.end method

.method public varargs reset([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    array-length v0, p1

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->reset(Lnet/bytebuddy/dynamic/ClassFileLocator;[Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    move-result-object p1

    :goto_0
    return-object p1
.end method
