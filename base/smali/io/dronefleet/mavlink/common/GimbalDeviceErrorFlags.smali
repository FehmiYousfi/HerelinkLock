.class public final enum Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
.super Ljava/lang/Enum;
.source "GimbalDeviceErrorFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

.field public static final enum AT_PITCH_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum AT_ROLL_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum AT_YAW_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum CALIBRATION_RUNNING:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum COMMS_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum ENCODER_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum MOTOR_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum POWER_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum SOFTWARE_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v1, 0x0

    const-string v2, "AT_ROLL_LIMIT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->AT_ROLL_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v2, 0x1

    const-string v3, "AT_PITCH_LIMIT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->AT_PITCH_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v3, 0x2

    const-string v4, "AT_YAW_LIMIT"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->AT_YAW_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v4, 0x3

    const-string v5, "ENCODER_ERROR"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->ENCODER_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v5, 0x4

    const-string v6, "POWER_ERROR"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->POWER_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v6, 0x5

    const-string v7, "MOTOR_ERROR"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->MOTOR_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v7, 0x6

    const-string v8, "SOFTWARE_ERROR"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->SOFTWARE_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v8, 0x7

    const-string v9, "COMMS_ERROR"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->COMMS_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/16 v9, 0x8

    const-string v10, "CALIBRATION_RUNNING"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->CALIBRATION_RUNNING:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    .line 9
    sget-object v10, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->AT_ROLL_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v10, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->AT_PITCH_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->AT_YAW_LIMIT:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->ENCODER_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->POWER_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->MOTOR_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->SOFTWARE_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->COMMS_ERROR:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->CALIBRATION_RUNNING:Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    aput-object v1, v0, v9

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    return-object v0
.end method