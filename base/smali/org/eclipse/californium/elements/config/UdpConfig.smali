.class public final Lorg/eclipse/californium/elements/config/UdpConfig;
.super Ljava/lang/Object;
.source "UdpConfig.java"


# static fields
.field public static final DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

.field public static final MODULE:Ljava/lang/String; = "UDP."

.field public static final UDP_CONNECTOR_OUT_CAPACITY:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final UDP_DATAGRAM_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final UDP_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final UDP_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final UDP_SENDER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final UDP_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UDP.RECEIVER_THREAD_COUNT"

    const-string v4, "Number of UDP receiver threads."

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 41
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v3, "UDP.SENDER_THREAD_COUNT"

    const-string v4, "Number of UDP sender threads."

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SENDER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 46
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UDP.DATAGRAM_SIZE"

    const-string v4, "Maxium size of UDP datagram."

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_DATAGRAM_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 53
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x0

    const-string v3, "UDP.RECEIVE_BUFFER_SIZE"

    const-string v4, "UDP receive-buffer size."

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 59
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v3, "UDP.SEND_BUFFER_SIZE"

    const-string v4, "UDP send-buffer size."

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 64
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UDP.CONNECTOR_OUT_CAPACITY"

    const-string v4, "Maximum number of pending outgoing messages."

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_CONNECTOR_OUT_CAPACITY:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 67
    new-instance v0, Lorg/eclipse/californium/elements/config/UdpConfig$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/config/UdpConfig$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    .line 89
    sget-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    invoke-static {v0}, Lorg/eclipse/californium/elements/config/Configuration;->addDefaultModule(Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 0

    .line 97
    invoke-static {}, Lorg/eclipse/californium/elements/config/SystemConfig;->register()V

    return-void
.end method
