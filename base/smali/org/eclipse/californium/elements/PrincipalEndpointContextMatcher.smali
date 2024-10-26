.class public Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;
.super Ljava/lang/Object;
.source "PrincipalEndpointContextMatcher.java"

# interfaces
.implements Lorg/eclipse/californium/elements/EndpointContextMatcher;


# instance fields
.field private final usePrincipalAsIdentity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;->usePrincipalAsIdentity:Z

    return-void
.end method

.method private final internalMatch(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 3

    .line 69
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {p2}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;->matchPrincipals(Ljava/security/Principal;Ljava/security/Principal;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 77
    :cond_1
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-interface {p1, v0}, Lorg/eclipse/californium/elements/EndpointContext;->getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-interface {p2, v0}, Lorg/eclipse/californium/elements/EndpointContext;->getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getEndpointIdentity(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;->usePrincipalAsIdentity:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Principal identity missing in provided endpoint context!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "principal correlation"

    return-object v0
.end method

.method public isResponseRelatedToRequest(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;->internalMatch(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p1

    return p1
.end method

.method public isToBeSent(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/PrincipalEndpointContextMatcher;->internalMatch(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p1

    return p1
.end method

.method protected matchPrincipals(Ljava/security/Principal;Ljava/security/Principal;)Z
    .locals 0

    .line 117
    invoke-interface {p1, p2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toRelevantState(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "n.a."

    return-object p1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerIdentity()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-interface {p1, v1}, Lorg/eclipse/californium/elements/EndpointContext;->getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, ","

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "]"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
