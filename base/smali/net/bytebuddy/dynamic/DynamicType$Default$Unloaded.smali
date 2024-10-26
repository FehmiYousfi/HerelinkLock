.class public Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;
.super Lnet/bytebuddy/dynamic/DynamicType$Default;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Unloaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unloaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Default;",
        "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;",
            ")V"
        }
    .end annotation

    .line 4355
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/DynamicType$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;)V

    .line 4356
    iput-object p5, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4397
    :cond_1
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Default;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 4398
    :cond_2
    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;

    .line 4399
    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 4404
    invoke-super {p0}, Lnet/bytebuddy/dynamic/DynamicType$Default;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 4405
    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public include(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    .line 4386
    new-instance v6, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->binaryRepresentation:[B

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->auxiliaryTypes:Ljava/util/List;

    .line 4389
    invoke-static {v0, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)V

    return-object v6
.end method

.method public varargs include([Lnet/bytebuddy/dynamic/DynamicType;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    .line 4381
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->include(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4362
    sget-object p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p1

    return-object p1

    .line 4363
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;

    if-eqz v0, :cond_1

    .line 4364
    check-cast p1, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader$Strategy;->INSTANCE:Lnet/bytebuddy/dynamic/loading/InjectionClassLoader$Strategy;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p1

    return-object p1

    .line 4366
    :cond_1
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->INJECTION:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/ClassLoader;",
            ">(TS;",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "-TS;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
            "TT;>;"
        }
    .end annotation

    .line 4372
    new-instance v6, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->binaryRepresentation:[B

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->auxiliaryTypes:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;->typeResolutionStrategy:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    .line 4376
    invoke-interface {v0, p0, p1, p2}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;->initialize(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/DynamicType$Default$Loaded;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Ljava/util/Map;)V

    return-object v6
.end method
