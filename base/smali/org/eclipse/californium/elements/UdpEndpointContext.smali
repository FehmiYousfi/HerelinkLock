.class public Lorg/eclipse/californium/elements/UdpEndpointContext;
.super Lorg/eclipse/californium/elements/MapBasedEndpointContext;
.source "UdpEndpointContext.java"


# static fields
.field public static final KEY_PLAIN:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/UdpEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "PLAIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/UdpEndpointContext;->KEY_PLAIN:Lorg/eclipse/californium/elements/Definition;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 3

    .line 33
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/UdpEndpointContext;->KEY_PLAIN:Lorg/eclipse/californium/elements/Definition;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/UdpEndpointContext;->getPeerAddressAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UDP(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
