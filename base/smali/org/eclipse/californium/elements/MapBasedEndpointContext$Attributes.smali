.class public final Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
.super Ljava/lang/Object;
.source "MapBasedEndpointContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/MapBasedEndpointContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attributes"
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lock:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    .line 258
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lorg/eclipse/californium/elements/MapBasedEndpointContext$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Ljava/util/Map;
    .locals 0

    .line 235
    iget-object p0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;TT;)",
            "Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;"
        }
    .end annotation

    .line 308
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    .line 313
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definition;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/Definitions;->contains(Lorg/eclipse/californium/elements/Definition;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    .line 321
    iget-object p2, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 322
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    :goto_1
    return-object p0

    .line 323
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' already contained!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 318
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 311
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already in use!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
    .locals 1

    .line 283
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock:Z

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    iget-object p1, p1, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    .line 284
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in use!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Lorg/eclipse/californium/elements/Definition;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 374
    :cond_1
    instance-of v1, p1, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    if-eqz v1, :cond_2

    .line 375
    check-cast p1, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 376
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    iget-object p1, p1, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
    .locals 1

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock:Z

    return-object p0
.end method

.method public remove(Lorg/eclipse/californium/elements/Definition;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)Z"
        }
    .end annotation

    .line 355
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 360
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 358
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in use!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
