.class public Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;
.super Ljava/lang/Object;
.source "DTLSClient.java"

# interfaces
.implements Lorg/eclipse/californium/elements/RawDataChannel;


# static fields
.field private static final ActionConnect:Ljava/lang/String; = "DTLSClient.Connect"

.field private static final ActionDisconnect:Ljava/lang/String; = "DTLSClient.Disconnect"

.field private static final DEFAULTS:Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;

.field private static final transient DS_ACCOUNT_ID:Ljava/lang/String; = "persist.hl.ds.account_id"

.field private static final transient DS_ACCOUNT_TOKEN:Ljava/lang/String; = "persist.hl.ds.account_token"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

.field private id:Ljava/lang/String;

.field private final mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

.field public peer:Lorg/eclipse/californium/elements/AddressEndpointContext;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->logger:Lorg/slf4j/Logger;

    .line 56
    new-instance v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$1;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$1;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->DEFAULTS:Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/cubepilot/herelinksettings/MavlinkServer;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->peer:Lorg/eclipse/californium/elements/AddressEndpointContext;

    const-string v1, ""

    .line 46
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->id:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->token:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    .line 69
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static actionConnect(Landroid/content/Context;)V
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DTLSClient.Connect"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionDisconnect(Landroid/content/Context;)V
    .locals 2

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DTLSClient.Disconnect"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addFilters(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "DTLSClient.Connect"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "DTLSClient.Disconnect"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private close()V
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->destroy()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    .line 214
    :cond_0
    sget-object v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->logger:Lorg/slf4j/Logger;

    const-string v1, "DTLS closed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private connect()V
    .locals 4

    .line 154
    :try_start_0
    sget-object v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->logger:Lorg/slf4j/Logger;

    const-string v1, "DTLS host: droneshare.cubepilot.com"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->updatePeerByHost()V

    .line 157
    invoke-static {}, Lorg/eclipse/californium/scandium/config/DtlsConfig;->register()V

    .line 158
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_FILE:Ljava/io/File;

    const-string v1, "DTLS client"

    sget-object v2, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->DEFAULTS:Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;

    invoke-static {v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->createWithFile(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->builder(Lorg/eclipse/californium/elements/config/Configuration;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object v0

    .line 161
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->id:Ljava/lang/String;

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->token:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setAdvancedPskStore(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    .line 162
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v2, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    .line 164
    new-instance v1, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$4;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setSessionListener(Lorg/eclipse/californium/scandium/dtls/SessionListener;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    .line 187
    new-instance v1, Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->build()Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/DTLSConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    iput-object v1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    .line 188
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {v0, p0}, Lorg/eclipse/californium/scandium/DTLSConnector;->setRawDataReceiver(Lorg/eclipse/californium/elements/RawDataChannel;)V

    .line 189
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/DTLSConnector;->start()V

    .line 190
    sget-object v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTLS starting... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getAccountID()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.hl.ds.account_id"

    .line 79
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountToken()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.hl.ds.account_token"

    .line 82
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$3;

    invoke-direct {v1, p0, p1}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$3;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tokenUpdated()V
    .locals 3

    .line 115
    invoke-static {}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->getAccountID()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->token:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "connected"

    .line 122
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->showToast(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_1
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->id:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->token:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->close()V

    const-string v0, "connecting..."

    .line 130
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->showToast(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->connect()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "invalid ID / token"

    .line 118
    invoke-direct {p0, v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private updatePeerByHost()V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$2;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$2;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static updateSettings(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.hl.ds.account_id"

    .line 75
    invoke-static {v0, p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "persist.hl.ds.account_token"

    .line 76
    invoke-static {p0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleAction(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 102
    iput-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4e923a98

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x28b3e062

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DTLSClient.Connect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "DTLSClient.Disconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    goto :goto_2

    .line 108
    :cond_3
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->close()V

    const-string p1, "disconnected"

    .line 109
    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 105
    :cond_4
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->tokenUpdated()V

    :goto_2
    return-void
.end method

.method public receiveData(Lorg/eclipse/californium/elements/RawData;)V
    .locals 4

    .line 221
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 222
    new-instance v1, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;

    invoke-direct {v1, v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;-><init>(Ljava/io/InputStream;)V

    .line 224
    :try_start_0
    invoke-virtual {v1}, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->next()Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object v0

    .line 225
    sget-object v1, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTLS rx from server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    :goto_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/RawData;->getSize()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/cubepilot/herelinksettings/MavlinkServer;->sendToAirUnit([BI)V

    return-void
.end method

.method public send([B)V
    .locals 3

    .line 202
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->peer:Lorg/eclipse/californium/elements/AddressEndpointContext;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/californium/elements/RawData;->outbound([BLorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MessageCallback;Z)Lorg/eclipse/californium/elements/RawData;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->dtlsConnector:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/DTLSConnector;->send(Lorg/eclipse/californium/elements/RawData;)V

    :cond_1
    :goto_0
    return-void
.end method
