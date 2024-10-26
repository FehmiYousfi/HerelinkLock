.class public Lorg/cubepilot/herelinksettings/RemoteID;
.super Landroidx/fragment/app/Fragment;
.source "RemoteID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;
    }
.end annotation


# static fields
.field public static ArmStatus:Lio/dronefleet/mavlink/MavlinkMessage; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/MavlinkMessage<",
            "Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static ArmStatusDateTime:J = 0x0L

.field public static ArmStatusSeen:Z = false

.field private static GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker; = null

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteID"

.field private static ceiling:Ljava/lang/String;

.field private static compid:I

.field private static desc_type:Lio/dronefleet/mavlink/common/MavOdidDescType;

.field private static description:Ljava/lang/String;

.field static enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static floor:Ljava/lang/String;

.field private static id_type:Lio/dronefleet/mavlink/common/MavOdidIdType;

.field private static operator_id:Ljava/lang/String;

.field private static operator_id_type:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

.field static overlayPowerBtn:Landroid/widget/ImageView;

.field private static radius:Ljava/lang/String;

.field public static running:Z

.field static step:I

.field private static sysid:I

.field private static textView34:Landroid/widget/TextView;

.field static time:J

.field private static ua_type:Lio/dronefleet/mavlink/common/MavOdidUaType;

.field private static uas_id:Ljava/lang/String;

.field static windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidUaType;->NONE:Lio/dronefleet/mavlink/common/MavOdidUaType;

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ua_type:Lio/dronefleet/mavlink/common/MavOdidUaType;

    .line 78
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidIdType;->NONE:Lio/dronefleet/mavlink/common/MavOdidIdType;

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->id_type:Lio/dronefleet/mavlink/common/MavOdidIdType;

    .line 79
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;->CAA:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id_type:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    .line 80
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidDescType;->TEXT:Lio/dronefleet/mavlink/common/MavOdidDescType;

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->desc_type:Lio/dronefleet/mavlink/common/MavOdidDescType;

    const-string v0, ""

    .line 81
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->description:Ljava/lang/String;

    .line 82
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->uas_id:Ljava/lang/String;

    .line 83
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id:Ljava/lang/String;

    const/4 v0, 0x1

    .line 84
    sput v0, Lorg/cubepilot/herelinksettings/RemoteID;->sysid:I

    .line 85
    sput v0, Lorg/cubepilot/herelinksettings/RemoteID;->compid:I

    const-string v0, "0"

    .line 87
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->floor:Ljava/lang/String;

    .line 88
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ceiling:Ljava/lang/String;

    .line 89
    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->radius:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lorg/cubepilot/herelinksettings/RemoteID;->running:Z

    .line 571
    sput v0, Lorg/cubepilot/herelinksettings/RemoteID;->step:I

    const-wide/16 v0, 0x0

    .line 572
    sput-wide v0, Lorg/cubepilot/herelinksettings/RemoteID;->time:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private static SendPacket(Ljava/lang/Object;)V
    .locals 3

    .line 622
    :try_start_0
    sget-object v0, Lorg/cubepilot/herelinksettings/RadioStatService;->mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

    sget-object v0, Lorg/cubepilot/herelinksettings/MavlinkServer;->connection:Lio/dronefleet/mavlink/MavlinkConnection;

    const/16 v1, 0x2a

    const/16 v2, 0xbe

    invoke-virtual {v0, v1, v2, p0}, Lio/dronefleet/mavlink/MavlinkConnection;->send2(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 624
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static SendRID()V
    .locals 9

    .line 576
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 578
    sget-wide v2, Lorg/cubepilot/herelinksettings/RemoteID;->time:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 580
    sput-wide v0, Lorg/cubepilot/herelinksettings/RemoteID;->time:J

    .line 582
    invoke-static {}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->builder()Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    sget-object v3, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-virtual {v3}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorLatitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    sget-object v3, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-virtual {v3}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorLongitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    sget-object v3, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    .line 583
    invoke-virtual {v3}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorAltitudeGeo(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    sget v3, Lorg/cubepilot/herelinksettings/RemoteID;->compid:I

    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    sget v3, Lorg/cubepilot/herelinksettings/RemoteID;->sysid:I

    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    const-wide/32 v3, 0x5c2aad80

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->timestamp(J)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->build()Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;

    move-result-object v2

    .line 585
    invoke-static {v2}, Lorg/cubepilot/herelinksettings/RemoteID;->SendPacket(Ljava/lang/Object;)V

    .line 587
    sget v2, Lorg/cubepilot/herelinksettings/RemoteID;->step:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/cubepilot/herelinksettings/RemoteID;->step:I

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto/16 :goto_0

    .line 612
    :cond_0
    invoke-static {}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->builder()Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object v0

    sget v1, Lorg/cubepilot/herelinksettings/RemoteID;->sysid:I

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object v0

    sget v1, Lorg/cubepilot/herelinksettings/RemoteID;->compid:I

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->ua_type:Lio/dronefleet/mavlink/common/MavOdidUaType;

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uaType(Lio/dronefleet/mavlink/common/MavOdidUaType;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->id_type:Lio/dronefleet/mavlink/common/MavOdidIdType;

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->idType(Lio/dronefleet/mavlink/common/MavOdidIdType;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->uas_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->uasId([B)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;->build()Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;

    move-result-object v0

    .line 613
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RemoteID;->SendPacket(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 601
    :cond_1
    :try_start_0
    invoke-static {}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->builder()Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v2

    sget-object v4, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-virtual {v4}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getLatitude()D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    invoke-virtual {v2, v4}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLatitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v2

    sget-object v4, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    invoke-virtual {v4}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getLongitude()D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    invoke-virtual {v2, v4}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLongitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v2

    sget-object v4, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    .line 602
    invoke-virtual {v4}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorAltitudeGeo(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v2

    sget v4, Lorg/cubepilot/herelinksettings/RemoteID;->compid:I

    invoke-virtual {v2, v4}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v2

    sget v4, Lorg/cubepilot/herelinksettings/RemoteID;->sysid:I

    invoke-virtual {v2, v4}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->timestamp(J)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaCount(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->ceiling:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaCeiling(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->floor:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaFloor(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->radius:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaRadius(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v0

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;->LIVE_GNSS:Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;

    .line 604
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLocationType(Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->build()Lio/dronefleet/mavlink/common/OpenDroneIdSystem;

    move-result-object v0

    .line 605
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RemoteID;->SendPacket(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 595
    :cond_2
    invoke-static {}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->builder()Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object v0

    sget v1, Lorg/cubepilot/herelinksettings/RemoteID;->sysid:I

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object v0

    sget v1, Lorg/cubepilot/herelinksettings/RemoteID;->compid:I

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id_type:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->operatorIdType(Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;->build()Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;

    move-result-object v0

    .line 596
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RemoteID;->SendPacket(Ljava/lang/Object;)V

    goto :goto_0

    .line 590
    :cond_3
    invoke-static {}, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId;->builder()Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;

    move-result-object v0

    sget v1, Lorg/cubepilot/herelinksettings/RemoteID;->sysid:I

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;->targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;

    move-result-object v0

    sget v1, Lorg/cubepilot/herelinksettings/RemoteID;->compid:I

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;->targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->desc_type:Lio/dronefleet/mavlink/common/MavOdidDescType;

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;->descriptionType(Lio/dronefleet/mavlink/common/MavOdidDescType;)Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;

    move-result-object v0

    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;->description(Ljava/lang/String;)Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdSelfId$Builder;->build()Lio/dronefleet/mavlink/common/OpenDroneIdSelfId;

    move-result-object v0

    .line 591
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RemoteID;->SendPacket(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static Start()V
    .locals 5

    .line 108
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "enable"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 113
    :cond_1
    :goto_0
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;->stopUsingGPS()V

    .line 117
    :cond_2
    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    new-instance v0, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    sget-object v1, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->GPSTracker:Lorg/cubepilot/herelinksettings/RemoteID$GPSTracker;

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$1;

    invoke-direct {v1}, Lorg/cubepilot/herelinksettings/RemoteID$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 184
    sget-object v1, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please grant the access to the application."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v2}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 188
    :cond_3
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->startPowerOverlay()V

    :goto_1
    return-void
.end method

.method static synthetic access$000()Lio/dronefleet/mavlink/common/MavOdidDescType;
    .locals 1

    .line 71
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->desc_type:Lio/dronefleet/mavlink/common/MavOdidDescType;

    return-object v0
.end method

.method static synthetic access$002(Lio/dronefleet/mavlink/common/MavOdidDescType;)Lio/dronefleet/mavlink/common/MavOdidDescType;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->desc_type:Lio/dronefleet/mavlink/common/MavOdidDescType;

    return-object p0
.end method

.method static synthetic access$100()Lio/dronefleet/mavlink/common/MavOdidUaType;
    .locals 1

    .line 71
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->ua_type:Lio/dronefleet/mavlink/common/MavOdidUaType;

    return-object v0
.end method

.method static synthetic access$102(Lio/dronefleet/mavlink/common/MavOdidUaType;)Lio/dronefleet/mavlink/common/MavOdidUaType;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->ua_type:Lio/dronefleet/mavlink/common/MavOdidUaType;

    return-object p0
.end method

.method static synthetic access$1200()Landroid/widget/TextView;
    .locals 1

    .line 71
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->textView34:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200()Lio/dronefleet/mavlink/common/MavOdidIdType;
    .locals 1

    .line 71
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->id_type:Lio/dronefleet/mavlink/common/MavOdidIdType;

    return-object v0
.end method

.method static synthetic access$202(Lio/dronefleet/mavlink/common/MavOdidIdType;)Lio/dronefleet/mavlink/common/MavOdidIdType;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->id_type:Lio/dronefleet/mavlink/common/MavOdidIdType;

    return-object p0
.end method

.method static synthetic access$300()Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;
    .locals 1

    .line 71
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id_type:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    return-object v0
.end method

.method static synthetic access$302(Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;)Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id_type:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    return-object p0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->uas_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->floor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->ceiling:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lorg/cubepilot/herelinksettings/RemoteID;->radius:Ljava/lang/String;

    return-object p0
.end method

.method public static getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RemoteID"

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 95
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onStart$1(Ljava/util/List;Lio/dronefleet/mavlink/common/MavOdidUaType;)V
    .locals 0

    .line 311
    invoke-virtual {p1}, Lio/dronefleet/mavlink/common/MavOdidUaType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$onStart$2(Ljava/util/List;Lio/dronefleet/mavlink/common/MavOdidIdType;)V
    .locals 0

    .line 343
    invoke-virtual {p1}, Lio/dronefleet/mavlink/common/MavOdidIdType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$onStart$3(Ljava/util/List;Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;)V
    .locals 0

    .line 374
    invoke-virtual {p1}, Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$onStart$4(Ljava/util/List;Lio/dronefleet/mavlink/common/MavOdidDescType;)V
    .locals 0

    .line 405
    invoke-virtual {p1}, Lio/dronefleet/mavlink/common/MavOdidDescType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static startPowerOverlay()V
    .locals 8

    .line 205
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->windowManager:Landroid/view/WindowManager;

    .line 211
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    .line 212
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d2

    :goto_0
    move v5, v1

    .line 223
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v2, 0x800033

    .line 230
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 231
    sget-object v2, Lorg/cubepilot/herelinksettings/RemoteID;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/16 v3, 0x6e

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 232
    sget-object v2, Lorg/cubepilot/herelinksettings/RemoteID;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 233
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 234
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 236
    sget-object v2, Lorg/cubepilot/herelinksettings/RemoteID;->windowManager:Landroid/view/WindowManager;

    sget-object v3, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    sget-object v2, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    new-instance v3, Lorg/cubepilot/herelinksettings/RemoteID$2;

    invoke-direct {v3, v1, v0}, Lorg/cubepilot/herelinksettings/RemoteID$2;-><init>(Landroid/view/WindowManager$LayoutParams;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static writeToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "RemoteID"

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 101
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStart$0$RemoteID(Landroid/view/View;)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "enable"

    invoke-static {v0, v1, p1}, Lorg/cubepilot/herelinksettings/RemoteID;->writeToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object p1, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    sget-object p1, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    invoke-static {}, Lorg/cubepilot/herelinksettings/RemoteID;->Start()V

    goto :goto_0

    .line 295
    :cond_0
    sget-object p1, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 296
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 297
    sput-object p1, Lorg/cubepilot/herelinksettings/RemoteID;->overlayPowerBtn:Landroid/widget/ImageView;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0061

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 632
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    :cond_0
    return-object p1
.end method

.method public onStart()V
    .locals 7

    .line 283
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 285
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "enable"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sget-object v2, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 289
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    new-instance v2, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$FeiFZxI2u_3yWw1BaQ_ucJF1FFE;

    invoke-direct {v2, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$FeiFZxI2u_3yWw1BaQ_ucJF1FFE;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    sget-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->callOnClick()Z

    .line 305
    :cond_1
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/cubepilot/herelinksettings/RemoteID;->textView34:Landroid/widget/TextView;

    .line 308
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-static {}, Lio/dronefleet/mavlink/common/MavOdidUaType;->values()[Lio/dronefleet/mavlink/common/MavOdidUaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$kkc-bNM9jV3EJZf4XCCy_AzODZo;

    invoke-direct {v3, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$kkc-bNM9jV3EJZf4XCCy_AzODZo;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 313
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 314
    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 315
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 317
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lorg/cubepilot/herelinksettings/RemoteID;->ua_type:Lio/dronefleet/mavlink/common/MavOdidUaType;

    invoke-virtual {v3}, Lio/dronefleet/mavlink/common/MavOdidUaType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ua_type"

    invoke-static {v1, v5, v3}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 320
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 322
    :cond_2
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$3;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$3;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 340
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-static {}, Lio/dronefleet/mavlink/common/MavOdidIdType;->values()[Lio/dronefleet/mavlink/common/MavOdidIdType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$_pfXz7Np1lLmXPbcResD81oGhjI;

    invoke-direct {v5, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$_pfXz7Np1lLmXPbcResD81oGhjI;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 345
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 346
    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 347
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 349
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lorg/cubepilot/herelinksettings/RemoteID;->id_type:Lio/dronefleet/mavlink/common/MavOdidIdType;

    invoke-virtual {v5}, Lio/dronefleet/mavlink/common/MavOdidIdType;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id_type"

    invoke-static {v1, v6, v5}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    if-gez v1, :cond_3

    .line 352
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 354
    :cond_3
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$4;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$4;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 371
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-static {}, Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;->values()[Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$2X7ecXL20v5VJ_EjJigays26blc;

    invoke-direct {v5, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$2X7ecXL20v5VJ_EjJigays26blc;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 376
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 377
    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 378
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 380
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id_type:Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    invoke-virtual {v5}, Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "operator_id_type"

    invoke-static {v1, v6, v5}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    if-gez v1, :cond_4

    .line 383
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 385
    :cond_4
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$5;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$5;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 402
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-static {}, Lio/dronefleet/mavlink/common/MavOdidDescType;->values()[Lio/dronefleet/mavlink/common/MavOdidDescType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$pf3g9LOmJYbQHYBpMjwUsxbi3l0;

    invoke-direct {v5, v1}, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$pf3g9LOmJYbQHYBpMjwUsxbi3l0;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 407
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 408
    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 409
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 411
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lorg/cubepilot/herelinksettings/RemoteID;->desc_type:Lio/dronefleet/mavlink/common/MavOdidDescType;

    invoke-virtual {v4}, Lio/dronefleet/mavlink/common/MavOdidDescType;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "desc_type"

    invoke-static {v1, v5, v4}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    if-gez v1, :cond_5

    .line 414
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 416
    :cond_5
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$6;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$6;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 434
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 435
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const-string v3, "uas_id"

    invoke-static {v1, v3, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->uas_id:Ljava/lang/String;

    .line 436
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->uas_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$7;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$7;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 457
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 458
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "operator_id"

    invoke-static {v1, v3, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id:Ljava/lang/String;

    .line 459
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->operator_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$8;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$8;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 480
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 481
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "description"

    invoke-static {v1, v3, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->description:Ljava/lang/String;

    .line 482
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$9;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$9;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 503
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 504
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "floor"

    invoke-static {v1, v3, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->floor:Ljava/lang/String;

    .line 505
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->floor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$10;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$10;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 525
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 526
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "ceiling"

    invoke-static {v1, v3, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->ceiling:Ljava/lang/String;

    .line 527
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->ceiling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$11;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$11;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 547
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 548
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RemoteID;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "radius"

    invoke-static {v1, v3, v2}, Lorg/cubepilot/herelinksettings/RemoteID;->getPreferenceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->radius:Ljava/lang/String;

    .line 549
    sget-object v1, Lorg/cubepilot/herelinksettings/RemoteID;->radius:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 550
    new-instance v1, Lorg/cubepilot/herelinksettings/RemoteID$12;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RemoteID$12;-><init>(Lorg/cubepilot/herelinksettings/RemoteID;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
