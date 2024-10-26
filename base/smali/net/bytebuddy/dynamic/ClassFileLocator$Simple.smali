.class public Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final classFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->classFiles:Ljava/util/Map;

    return-void
.end method

.method public static of(Ljava/lang/String;[B)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    .line 181
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;

    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;[BLnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 3

    .line 193
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;

    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;-><init>(Ljava/util/Map;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const/4 p0, 0x1

    aput-object p2, v1, p0

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    :cond_0
    new-instance p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/dynamic/DynamicType;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 0

    .line 203
    invoke-interface {p0}, Lnet/bytebuddy/dynamic/DynamicType;->getAllTypes()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->of(Ljava/util/Map;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 156
    instance-of p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;

    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 156
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->classFiles:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->classFiles:Ljava/util/Map;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 156
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->classFiles:Ljava/util/Map;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 1

    .line 222
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Simple;->classFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V

    :goto_0
    return-object p1
.end method
