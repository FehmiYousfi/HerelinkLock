.class Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;
.super Ljava/lang/Object;
.source "RemoteID.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->UpdateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, " "

    .line 848
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 851
    :cond_0
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    iget-wide v1, v1, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->lastupdate:J

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v3}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    return-void

    .line 853
    :cond_1
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->lastupdate:J

    .line 854
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 855
    new-instance v2, Landroid/icu/text/DecimalFormat;

    invoke-direct {v2}, Landroid/icu/text/DecimalFormat;-><init>()V

    const/4 v3, 0x7

    .line 856
    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 858
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->access$1200()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 859
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->access$1200()Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yyyy-MM-dd hh:mm:ss a"

    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    .line 860
    invoke-static {v5}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v5}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1100(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker$3;->this$0:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    .line 861
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->access$1300(Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\nReady to Arm: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatus:Lio/dronefleet/mavlink/MavlinkMessage;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatus:Lio/dronefleet/mavlink/MavlinkMessage;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/MavlinkMessage;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;->status()Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/EnumValue;->entry()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidArmStatus;->MAV_ODID_GOOD_TO_ARM:Lio/dronefleet/mavlink/common/MavOdidArmStatus;

    if-ne v0, v1, :cond_3

    const-string v0, "Yes"

    goto :goto_1

    :cond_3
    const-string v0, "No"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\nDetected RID Device: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lorg/cubepilot/herelinksettings/RemoteID;->ArmStatusSeen:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 864
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
