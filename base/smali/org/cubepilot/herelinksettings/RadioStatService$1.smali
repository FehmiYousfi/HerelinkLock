.class Lorg/cubepilot/herelinksettings/RadioStatService$1;
.super Landroid/content/BroadcastReceiver;
.source "RadioStatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RadioStatService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RadioStatService;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService$1;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: broadcastreceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioStatService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 155
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-wide/16 v2, 0x1f4

    .line 159
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 163
    :goto_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: networkInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 170
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- Wifi connected ---  SSID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lorg/cubepilot/herelinksettings/RadioStatService$1$1;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/RadioStatService$1$1;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 189
    :cond_0
    sget-object p1, Lorg/cubepilot/herelinksettings/RadioStatService;->mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/MavlinkServer;->dtlsClient:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService$1;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->handleAction(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
