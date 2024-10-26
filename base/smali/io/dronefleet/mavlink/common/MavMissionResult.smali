.class public final enum Lio/dronefleet/mavlink/common/MavMissionResult;
.super Ljava/lang/Enum;
.source "MavMissionResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavMissionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavMissionResult;

.field public static final enum MAV_MISSION_ACCEPTED:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum MAV_MISSION_DENIED:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xe
    .end annotation
.end field

.field public static final enum MAV_MISSION_ERROR:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM1:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM2:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM3:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM4:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM5_X:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM6_Y:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_PARAM7:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum MAV_MISSION_INVALID_SEQUENCE:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation
.end field

.field public static final enum MAV_MISSION_NO_SPACE:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum MAV_MISSION_OPERATION_CANCELLED:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation
.end field

.field public static final enum MAV_MISSION_UNSUPPORTED:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum MAV_MISSION_UNSUPPORTED_FRAME:Lio/dronefleet/mavlink/common/MavMissionResult;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v1, 0x0

    const-string v2, "MAV_MISSION_ACCEPTED"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_ACCEPTED:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v2, 0x1

    const-string v3, "MAV_MISSION_ERROR"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_ERROR:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v3, 0x2

    const-string v4, "MAV_MISSION_UNSUPPORTED_FRAME"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_UNSUPPORTED_FRAME:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v4, 0x3

    const-string v5, "MAV_MISSION_UNSUPPORTED"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_UNSUPPORTED:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v5, 0x4

    const-string v6, "MAV_MISSION_NO_SPACE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_NO_SPACE:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v6, 0x5

    const-string v7, "MAV_MISSION_INVALID"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v7, 0x6

    const-string v8, "MAV_MISSION_INVALID_PARAM1"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM1:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/4 v8, 0x7

    const-string v9, "MAV_MISSION_INVALID_PARAM2"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM2:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v9, 0x8

    const-string v10, "MAV_MISSION_INVALID_PARAM3"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM3:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v10, 0x9

    const-string v11, "MAV_MISSION_INVALID_PARAM4"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM4:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v11, 0xa

    const-string v12, "MAV_MISSION_INVALID_PARAM5_X"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM5_X:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v12, 0xb

    const-string v13, "MAV_MISSION_INVALID_PARAM6_Y"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM6_Y:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v13, 0xc

    const-string v14, "MAV_MISSION_INVALID_PARAM7"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM7:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v14, 0xd

    const-string v15, "MAV_MISSION_INVALID_SEQUENCE"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_SEQUENCE:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 98
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v15, 0xe

    const-string v14, "MAV_MISSION_DENIED"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_DENIED:Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 104
    new-instance v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    const-string v14, "MAV_MISSION_OPERATION_CANCELLED"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavMissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_OPERATION_CANCELLED:Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v0, 0x10

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavMissionResult;

    .line 9
    sget-object v14, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_ACCEPTED:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_ERROR:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_UNSUPPORTED_FRAME:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_UNSUPPORTED:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_NO_SPACE:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM1:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM2:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM3:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM4:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM5_X:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM6_Y:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_PARAM7:Lio/dronefleet/mavlink/common/MavMissionResult;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_INVALID_SEQUENCE:Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_DENIED:Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavMissionResult;->MAV_MISSION_OPERATION_CANCELLED:Lio/dronefleet/mavlink/common/MavMissionResult;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->$VALUES:[Lio/dronefleet/mavlink/common/MavMissionResult;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavMissionResult;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavMissionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavMissionResult;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavMissionResult;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavMissionResult;->$VALUES:[Lio/dronefleet/mavlink/common/MavMissionResult;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavMissionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavMissionResult;

    return-object v0
.end method
