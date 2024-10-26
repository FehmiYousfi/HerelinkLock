.class final Lorg/eclipse/californium/elements/config/UdpConfig$1;
.super Ljava/lang/Object;
.source "UdpConfig.java"

# interfaces
.implements Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/config/UdpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 3

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 79
    :goto_0
    sget-object v1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 80
    sget-object v1, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SENDER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 81
    sget-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_DATAGRAM_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 82
    sget-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 83
    sget-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 84
    sget-object v0, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_CONNECTOR_OUT_CAPACITY:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    return-void
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "UDP."

    return-object v0
.end method
