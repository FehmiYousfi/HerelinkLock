.class Lorg/cubepilot/herelinksettings/MavlinkServer$1;
.super Ljava/lang/Object;
.source "MavlinkServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/MavlinkServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/MavlinkServer;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$1;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "SendHB"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 85
    :goto_0
    :try_start_0
    invoke-static {}, Lio/dronefleet/mavlink/minimal/Heartbeat;->builder()Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavType;->GCS:Lio/dronefleet/mavlink/minimal/MavType;

    .line 86
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->type(Lio/dronefleet/mavlink/minimal/MavType;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->INVALID:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 87
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->autopilot(Lio/dronefleet/mavlink/minimal/MavAutopilot;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->UNINIT:Lio/dronefleet/mavlink/minimal/MavState;

    .line 88
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->systemStatus(Lio/dronefleet/mavlink/minimal/MavState;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 89
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->mavlinkVersion(I)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlag;->CUSTOM_MODE_ENABLED:Lio/dronefleet/mavlink/minimal/MavModeFlag;

    .line 90
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->baseMode(Lio/dronefleet/mavlink/minimal/MavModeFlag;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->build()Lio/dronefleet/mavlink/minimal/Heartbeat;

    move-result-object v0

    .line 95
    sget-object v1, Lorg/cubepilot/herelinksettings/MavlinkServer;->connection:Lio/dronefleet/mavlink/MavlinkConnection;

    const/16 v2, 0x2a

    const/16 v3, 0xbe

    invoke-virtual {v1, v2, v3, v0}, Lio/dronefleet/mavlink/MavlinkConnection;->send2(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-wide/16 v0, 0x3e8

    .line 100
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
