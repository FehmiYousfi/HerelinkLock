.class public Lorg/eclipse/californium/elements/AddressEndpointContext;
.super Ljava/lang/Object;
.source "AddressEndpointContext.java"

# interfaces
.implements Lorg/eclipse/californium/elements/EndpointContext;


# static fields
.field protected static final ID_TRUNC_LENGTH:I = 0xa


# instance fields
.field private final peerAddress:Ljava/net/InetSocketAddress;

.field private final peerIdentity:Ljava/security/Principal;

.field private final virtualHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerAddress:Ljava/net/InetSocketAddress;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerIdentity:Ljava/security/Principal;

    .line 57
    iput-object p1, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->virtualHost:Ljava/lang/String;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "missing peer inet address!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerAddress:Ljava/net/InetSocketAddress;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerIdentity:Ljava/security/Principal;

    .line 73
    iput-object p1, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->virtualHost:Ljava/lang/String;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "missing peer inet address!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0, v0}, Lorg/eclipse/californium/elements/AddressEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 109
    iput-object p1, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerAddress:Ljava/net/InetSocketAddress;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->virtualHost:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerIdentity:Ljava/security/Principal;

    return-void

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "missing peer socket address, must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/californium/elements/AddressEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;)V

    return-void
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

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPeerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method protected final getPeerAddressAsString()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerIdentity()Ljava/security/Principal;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->peerIdentity:Ljava/security/Principal;

    return-object v0
.end method

.method public getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/AddressEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    instance-of v0, p1, Lorg/eclipse/californium/elements/util/Bytes;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lorg/eclipse/californium/elements/util/Bytes;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/Bytes;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getVirtualHost()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/eclipse/californium/elements/AddressEndpointContext;->virtualHost:Ljava/lang/String;

    return-object v0
.end method

.method public hasCriticalEntries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/AddressEndpointContext;->getPeerAddressAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "IP(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
