.class Lorg/cubepilot/herelinksettings/MavlinkReader;
.super Ljava/lang/Thread;
.source "MavlinkReader.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HerelinkSettings.MavlinkReader"


# instance fields
.field private final connection:Lio/dronefleet/mavlink/MavlinkConnection;


# direct methods
.method public constructor <init>(Lio/dronefleet/mavlink/MavlinkConnection;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkReader;->connection:Lio/dronefleet/mavlink/MavlinkConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "MavlinkReader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 32
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkReader;->connection:Lio/dronefleet/mavlink/MavlinkConnection;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/MavlinkConnection;->next()Lio/dronefleet/mavlink/MavlinkMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    instance-of v1, v0, Lio/dronefleet/mavlink/Mavlink2Message;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Lio/dronefleet/mavlink/Mavlink2Message;

    .line 39
    invoke-virtual {v1}, Lio/dronefleet/mavlink/Mavlink2Message;->isSigned()Z

    .line 56
    :cond_1
    invoke-virtual {v0}, Lio/dronefleet/mavlink/MavlinkMessage;->getPayload()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/dronefleet/mavlink/minimal/Heartbeat;

    .line 62
    invoke-virtual {v0}, Lio/dronefleet/mavlink/MavlinkMessage;->getPayload()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    if-eqz v1, :cond_0

    .line 64
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatus:Lio/dronefleet/mavlink/MavlinkMessage;

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatusSeen:Z

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatusDateTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-void
.end method
