.class public Lorg/eclipse/californium/elements/TcpEndpointContext;
.super Lorg/eclipse/californium/elements/MapBasedEndpointContext;
.source "TcpEndpointContext.java"


# static fields
.field public static final KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CONNECTION_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/TcpEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "CONNECTION_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    .line 44
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/eclipse/californium/elements/TcpEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "CONNECTION_TIMESTAMP"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;J)V
    .locals 2

    .line 57
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p2

    sget-object v0, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lorg/eclipse/californium/elements/TcpEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    .line 79
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TcpEndpointContext;->getConnectionId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " attribute!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConnectionId()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/TcpEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionTimestamp()Ljava/lang/Number;
    .locals 1

    .line 102
    sget-object v0, Lorg/eclipse/californium/elements/TcpEndpointContext;->KEY_CONNECTION_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/TcpEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TcpEndpointContext;->getPeerAddressAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TcpEndpointContext;->getConnectionId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->trunc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TCP(%s,ID:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
