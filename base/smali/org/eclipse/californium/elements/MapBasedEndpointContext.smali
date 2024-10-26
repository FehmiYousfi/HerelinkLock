.class public Lorg/eclipse/californium/elements/MapBasedEndpointContext;
.super Lorg/eclipse/californium/elements/AddressEndpointContext;
.source "MapBasedEndpointContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final KEY_PREFIX_NONE_CRITICAL:Ljava/lang/String; = "*"


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

.field private final hasCriticalEntries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$1;

    const-string v1, "EndpointContextAttributes"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/elements/AddressEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;)V

    if-eqz p4, :cond_0

    .line 114
    invoke-virtual {p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 115
    invoke-static {p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->access$000(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->entries:Ljava/util/Map;

    .line 116
    iget-object p1, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->entries:Ljava/util/Map;

    invoke-static {p1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->findCriticalEntries(Ljava/util/Map;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->hasCriticalEntries:Z

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "missing attributes map, must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method

.method public static addEntries(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/MapBasedEndpointContext;
    .locals 3

    .line 184
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->entries()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>(Ljava/util/Map;Lorg/eclipse/californium/elements/MapBasedEndpointContext$1;)V

    .line 185
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->addAll(Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 186
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->setEntries(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/MapBasedEndpointContext;

    move-result-object p0

    return-object p0
.end method

.method private static final findCriticalEntries(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/Definition;

    .line 131
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/Definition;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs removeEntries(Lorg/eclipse/californium/elements/EndpointContext;[Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/MapBasedEndpointContext;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/EndpointContext;",
            "[",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;)",
            "Lorg/eclipse/californium/elements/MapBasedEndpointContext;"
        }
    .end annotation

    const-string v0, ". "

    if-eqz p1, :cond_2

    .line 205
    new-instance v1, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->entries()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>(Ljava/util/Map;Lorg/eclipse/californium/elements/MapBasedEndpointContext$1;)V

    const/4 v2, 0x0

    .line 206
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 208
    :try_start_0
    aget-object v3, p1, v2

    .line 209
    invoke-virtual {v1, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->remove(Lorg/eclipse/californium/elements/Definition;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". key \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not contained"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 215
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 213
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1
    new-instance p1, Lorg/eclipse/californium/elements/MapBasedEndpointContext;

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getVirtualHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object p0

    invoke-direct {p1, v0, v2, p0, v1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-object p1

    .line 203
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "attributes must not null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEntries(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/MapBasedEndpointContext;
    .locals 3

    .line 169
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getVirtualHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-object v0
.end method


# virtual methods
.method public entries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasCriticalEntries()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->hasCriticalEntries:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->getPeerAddressAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MAP(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
