.class final Lorg/eclipse/californium/elements/MapBasedEndpointContext$1;
.super Lorg/eclipse/californium/elements/Definitions;
.source "MapBasedEndpointContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/MapBasedEndpointContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/elements/Definitions<",
        "Lorg/eclipse/californium/elements/Definition<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addIfAbsent(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;)",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definition;->getValueType()Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/net/InetSocketAddress;

    if-eq v0, v1, :cond_1

    const-class v1, Lorg/eclipse/californium/elements/util/Bytes;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported, only String, Integer, Long, Boolean, InetSocketAddress and Bytes!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/Definitions;->addIfAbsent(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definition;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
