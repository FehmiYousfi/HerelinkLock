.class public Lorg/eclipse/californium/elements/TlsEndpointContext;
.super Lorg/eclipse/californium/elements/TcpEndpointContext;
.source "TlsEndpointContext.java"


# static fields
.field public static final KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;
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

    .line 37
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/TlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "TLS_SESSION_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    .line 40
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/TlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "TLS_CIPHER"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 57
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1, p3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p3

    sget-object v0, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_CONNECTION_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p3, v0, p6}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p3

    sget-object p6, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p3, p6, p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p3

    sget-object p4, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p3, p4, p5}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/elements/TcpEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method


# virtual methods
.method public getCipher()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/TlsEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lorg/eclipse/californium/elements/TlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/TlsEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TlsEndpointContext;->getPeerAddressAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TlsEndpointContext;->getConnectionId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->trunc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TlsEndpointContext;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->trunc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/TlsEndpointContext;->getCipher()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "TLS(%s,%s,%s,%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
