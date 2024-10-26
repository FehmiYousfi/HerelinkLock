.class public Lorg/eclipse/californium/elements/DtlsEndpointContext;
.super Lorg/eclipse/californium/elements/MapBasedEndpointContext;
.source "DtlsEndpointContext.java"


# static fields
.field public static final ATTRIBUE_HANDSHAKE_MODE_FORCE_FULL:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

.field public static final ATTRIBUTE_HANDSHAKE_MODE_AUTO:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

.field public static final ATTRIBUTE_HANDSHAKE_MODE_FORCE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

.field public static final ATTRIBUTE_HANDSHAKE_MODE_NONE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

.field public static final ATTRIBUTE_HANDSHAKE_MODE_PROBE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

.field public static final HANDSHAKE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final HANDSHAKE_MODE_FORCE:Ljava/lang/String; = "force"

.field public static final HANDSHAKE_MODE_FORCE_FULL:Ljava/lang/String; = "full"

.field public static final HANDSHAKE_MODE_NONE:Ljava/lang/String; = "none"

.field public static final HANDSHAKE_MODE_PROBE:Ljava/lang/String; = "probe"

.field public static final KEY_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_HANDSHAKE_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_MESSAGE_SIZE_LIMIT:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_NEWEST_RECORD:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_PREVIOUS_ADDRESS:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_READ_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Lorg/eclipse/californium/elements/util/Bytes;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Lorg/eclipse/californium/elements/util/Bytes;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_VIA_ROUTER:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_WRITE_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definition<",
            "Lorg/eclipse/californium/elements/util/Bytes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Lorg/eclipse/californium/elements/util/Bytes;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "DTLS_SESSION_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    .line 43
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "DTLS_EPOCH"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;

    .line 49
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "DTLS_CIPHER"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    .line 57
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "DTLS_HANDSHAKE_TIMESTAMP"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    .line 65
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Lorg/eclipse/californium/elements/util/Bytes;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "DTLS_READ_CONNECTION_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_READ_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    .line 73
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Lorg/eclipse/californium/elements/util/Bytes;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "DTLS_WRITE_CONNECTION_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_WRITE_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    .line 81
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_VIA_ROUTER"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_VIA_ROUTER:Lorg/eclipse/californium/elements/Definition;

    .line 92
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_HANDSHAKE_MODE"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    .line 103
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_AUTO_HANDSHAKE_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/Definition;

    .line 110
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_MESSAGE_SIZE_LIMIT"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_MESSAGE_SIZE_LIMIT:Lorg/eclipse/californium/elements/Definition;

    .line 118
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_EXTENDED_MASTER_SECRET"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/elements/Definition;

    .line 126
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_NEWEST_RECORD"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_NEWEST_RECORD:Lorg/eclipse/californium/elements/Definition;

    .line 134
    new-instance v0, Lorg/eclipse/californium/elements/Definition;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    const-string v3, "*DTLS_PREVIOUS_ADDRESS"

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_PREVIOUS_ADDRESS:Lorg/eclipse/californium/elements/Definition;

    .line 164
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_HANDSHAKE_MODE_NONE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 171
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_HANDSHAKE_MODE_AUTO:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 178
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    const-string v2, "probe"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_HANDSHAKE_MODE_PROBE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 185
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    const-string v2, "force"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_HANDSHAKE_MODE_FORCE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    .line 192
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    const-string v2, "full"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->lock()Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUE_HANDSHAKE_MODE_FORCE_FULL:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/util/Bytes;ILjava/lang/String;J)V
    .locals 2

    .line 212
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1, p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p4, v0, p6}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p6, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p6, p5}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p5, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/util/Bytes;ILjava/lang/String;JLorg/eclipse/californium/elements/util/Bytes;Lorg/eclipse/californium/elements/util/Bytes;Ljava/lang/String;)V
    .locals 2

    .line 236
    new-instance v0, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    sget-object v1, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v0, v1, p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p4, v0, p6}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p6, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p6, p5}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p5, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p5, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_WRITE_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p4, p5, p9}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p5, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_READ_CONNECTION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p4, p5, p10}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    sget-object p5, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_VIA_ROUTER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p4, p5, p11}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/security/Principal;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)V

    return-void
.end method


# virtual methods
.method public final getCipher()Ljava/lang/String;
    .locals 1

    .line 280
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_CIPHER:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/DtlsEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEpoch()Ljava/lang/Number;
    .locals 1

    .line 271
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_EPOCH:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/DtlsEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final getHandshakeTimestamp()Ljava/lang/Number;
    .locals 1

    .line 291
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_TIMESTAMP:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/DtlsEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final getSessionId()Lorg/eclipse/californium/elements/util/Bytes;
    .locals 1

    .line 262
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_SESSION_ID:Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/DtlsEndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/util/Bytes;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/DtlsEndpointContext;->getPeerAddressAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/DtlsEndpointContext;->getSessionId()Lorg/eclipse/californium/elements/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/Bytes;->getAsString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lorg/eclipse/californium/elements/util/StringUtil;->trunc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DTLS(%s,ID:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
