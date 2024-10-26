.class final Lorg/cubepilot/herelinksettings/RemoteID$1;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RemoteID;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "SendRID"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 125
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 129
    :goto_0
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :try_start_1
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->SendRID()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :goto_1
    :try_start_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 137
    sget-boolean v2, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatusSeen:Z

    if-eqz v2, :cond_1

    sget-object v2, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    sget-wide v2, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatusDateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 138
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatus:Lio/dronefleet/mavlink/MavlinkMessage;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/MavlinkMessage;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status()Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/EnumValue;->entry()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidArmStatus;->MAV_ODID_GOOD_TO_ARM:Lio/dronefleet/mavlink/common/MavOdidArmStatus;

    if-ne v0, v1, :cond_0

    const-string v0, "#aa00FF00"

    .line 139
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 140
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/cubepilot/herelinksettings/RemoteID$1$1;

    invoke-direct {v2, p0, v0}, Lorg/cubepilot/herelinksettings/RemoteID$1$1;-><init>(Lorg/cubepilot/herelinksettings/RemoteID$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_0
    const-string v0, "#aaFFA500"

    .line 148
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/cubepilot/herelinksettings/RemoteID$1$2;

    invoke-direct {v2, p0, v0}, Lorg/cubepilot/herelinksettings/RemoteID$1$2;-><init>(Lorg/cubepilot/herelinksettings/RemoteID$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_1
    const-string v0, "#aaFF0000"

    .line 158
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 159
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/cubepilot/herelinksettings/RemoteID$1$3;

    invoke-direct {v2, p0, v0}, Lorg/cubepilot/herelinksettings/RemoteID$1$3;-><init>(Lorg/cubepilot/herelinksettings/RemoteID$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-wide/16 v0, 0x14d

    .line 172
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    return-void
.end method
