.class public Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;
.super Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;
.source "UdpEndpointContextMatcher.java"


# static fields
.field private static final DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final MULTICAST_IDENTITY:Ljava/lang/String; = "MULTICAST"


# instance fields
.field private final checkAddress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;->LOGGER:Lorg/slf4j/Logger;

    .line 45
    new-instance v0, Lorg/eclipse/californium/elements/Definitions;

    const-string v1, "udp context"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/eclipse/californium/elements/UdpEndpointContext;->KEY_PLAIN:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/Definitions;->add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;->DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 70
    sget-object v0, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;->DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;-><init>(Lorg/eclipse/californium/elements/Definitions;)V

    .line 71
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;->checkAddress:Z

    return-void
.end method


# virtual methods
.method public getEndpointIdentity(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->getEndpointIdentity(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/Object;

    move-result-object p1

    .line 82
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 84
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->isMultiAddress(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MULTICAST"

    :cond_0
    return-object p1
.end method

.method public isResponseRelatedToRequest(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 4

    .line 99
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;->checkAddress:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {p1}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 101
    invoke-interface {p2}, Lorg/eclipse/californium/elements/EndpointContext;->getPeerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->isMultiAddress(Ljava/net/InetAddress;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    sget-object p1, Lorg/eclipse/californium/elements/UdpEndpointContextMatcher;->LOGGER:Lorg/slf4j/Logger;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    const/4 v0, 0x3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "request {}:{} doesn\'t match {}:{}!"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/californium/elements/DefinitionsEndpointContextMatcher;->isResponseRelatedToRequest(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z

    move-result p1

    return p1
.end method
