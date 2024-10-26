.class public Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;
.super Ljava/lang/Object;
.source "ClassLoadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/loading/ClassInjector;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    .line 369
    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-static {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    move-result-object p0

    .line 380
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->lookupType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;-><init>(Lnet/bytebuddy/dynamic/loading/ClassInjector;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 348
    instance-of p1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 348
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

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
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classLoader:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 348
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

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

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classLoader:Ljava/lang/ClassLoader;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    .line 385
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classLoader:Ljava/lang/ClassLoader;

    if-ne p1, v0, :cond_0

    .line 388
    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 386
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot define a type in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with lookup based on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
