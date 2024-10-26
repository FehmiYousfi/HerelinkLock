.class public abstract Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;
.super Ljava/lang/Object;
.source "DefinitionsEndpointContextMatcher.java"

# interfaces
.implements Lorg/eclipse/californium/elements/EndpointContextMatcher;


# instance fields
.field private final compareHostname:Z

.field private final definitions:Lorg/eclipse/californium/elements/Definitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final recvTag:Ljava/lang/String;

.field private final sendTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/elements/Definitions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;-><init>(Lorg/eclipse/californium/elements/Definitions;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/Definitions;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definitions;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->sendTag:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/Definitions;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " receiving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->recvTag:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->definitions:Lorg/eclipse/californium/elements/Definitions;

    .line 73
    iput-boolean p2, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->compareHostname:Z

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Definitions must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final internalMatch(Ljava/lang/String;Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 1

    .line 108
    invoke-interface {p2}, Lorg/eclipse/californium/elements/EndpointContext;->hasCriticalEntries()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-static {p1, v0, p2, p3}, Lorg/eclipse/californium/elements/EndpointContextUtil;->match(Ljava/lang/String;Lorg/eclipse/californium/elements/Definitions;Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p1

    return p1
.end method

.method public static final isSameVirtualHost(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 140
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/californium/elements/EndpointContext;->getVirtualHost()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getVirtualHost()Ljava/lang/String;

    move-result-object p1

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    .line 136
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "first context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEndpointIdentity(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/Object;
    .locals 2

    .line 83
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be resolved!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/Definitions;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isResponseRelatedToRequest(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 2

    .line 93
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->compareHostname:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->isSameVirtualHost(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->recvTag:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->internalMatch(Ljava/lang/String;Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isToBeSent(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 100
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->hasCriticalEntries()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 102
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->compareHostname:Z

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->isSameVirtualHost(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->sendTag:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->internalMatch(Ljava/lang/String;Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toRelevantState(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "n.a."

    return-object p1

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
