.class public final enum Lio/dronefleet/mavlink/common/HlFailureFlag;
.super Ljava/lang/Enum;
.source "HlFailureFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/HlFailureFlag;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/HlFailureFlag;

.field public static final enum ABSOLUTE_PRESSURE:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum BATTERY:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum DIFFERENTIAL_PRESSURE:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum ENGINE:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum ESTIMATOR:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000
    .end annotation
.end field

.field public static final enum GEOFENCE:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field

.field public static final enum GPS:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MISSION:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2000
    .end annotation
.end field

.field public static final enum OFFBOARD_LINK:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum RC_RECEIVER:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum TERRAIN:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum _3D_ACCEL:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum _3D_GYRO:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum _3D_MAG:Lio/dronefleet/mavlink/common/HlFailureFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v1, 0x0

    const-string v2, "GPS"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->GPS:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v2, 0x1

    const-string v3, "DIFFERENTIAL_PRESSURE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->DIFFERENTIAL_PRESSURE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v3, 0x2

    const-string v4, "ABSOLUTE_PRESSURE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->ABSOLUTE_PRESSURE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v4, 0x3

    const-string v5, "_3D_ACCEL"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->_3D_ACCEL:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v5, 0x4

    const-string v6, "_3D_GYRO"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->_3D_GYRO:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v6, 0x5

    const-string v7, "_3D_MAG"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->_3D_MAG:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v7, 0x6

    const-string v8, "TERRAIN"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->TERRAIN:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v8, 0x7

    const-string v9, "BATTERY"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->BATTERY:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v9, 0x8

    const-string v10, "RC_RECEIVER"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->RC_RECEIVER:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v10, 0x9

    const-string v11, "OFFBOARD_LINK"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->OFFBOARD_LINK:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v11, 0xa

    const-string v12, "ENGINE"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->ENGINE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v12, 0xb

    const-string v13, "GEOFENCE"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->GEOFENCE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v13, 0xc

    const-string v14, "ESTIMATOR"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->ESTIMATOR:Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v14, 0xd

    const-string v15, "MISSION"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/HlFailureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->MISSION:Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/16 v0, 0xe

    new-array v0, v0, [Lio/dronefleet/mavlink/common/HlFailureFlag;

    .line 9
    sget-object v15, Lio/dronefleet/mavlink/common/HlFailureFlag;->GPS:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v15, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->DIFFERENTIAL_PRESSURE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->ABSOLUTE_PRESSURE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->_3D_ACCEL:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->_3D_GYRO:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->_3D_MAG:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->TERRAIN:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->BATTERY:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->RC_RECEIVER:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->OFFBOARD_LINK:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->ENGINE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->GEOFENCE:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->ESTIMATOR:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/HlFailureFlag;->MISSION:Lio/dronefleet/mavlink/common/HlFailureFlag;

    aput-object v1, v0, v14

    sput-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->$VALUES:[Lio/dronefleet/mavlink/common/HlFailureFlag;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/HlFailureFlag;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/HlFailureFlag;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/HlFailureFlag;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/HlFailureFlag;->$VALUES:[Lio/dronefleet/mavlink/common/HlFailureFlag;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/HlFailureFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/HlFailureFlag;

    return-object v0
.end method
