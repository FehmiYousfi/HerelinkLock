.class public final enum Lio/dronefleet/mavlink/common/MavProtocolCapability;
.super Ljava/lang/Enum;
.source "MavProtocolCapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavProtocolCapability;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavProtocolCapability;

.field public static final enum COMMAND_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum COMPASS_CALIBRATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000
    .end annotation
.end field

.field public static final enum FLIGHT_INFORMATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10000
    .end annotation
.end field

.field public static final enum FLIGHT_TERMINATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field

.field public static final enum FTP:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum MAVLINK2:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2000
    .end annotation
.end field

.field public static final enum MISSION_FENCE:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4000
    .end annotation
.end field

.field public static final enum MISSION_FLOAT:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MISSION_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MISSION_RALLY:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8000
    .end annotation
.end field

.field public static final enum PARAM_FLOAT:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum PARAM_UNION:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum SET_ACTUATOR_TARGET:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum SET_ATTITUDE_TARGET:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum SET_POSITION_TARGET_GLOBAL_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum SET_POSITION_TARGET_LOCAL_NED:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum TERRAIN:Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v1, 0x0

    const-string v2, "MISSION_FLOAT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_FLOAT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v2, 0x1

    const-string v3, "PARAM_FLOAT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->PARAM_FLOAT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 31
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v3, 0x2

    const-string v4, "MISSION_INT"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v4, 0x3

    const-string v5, "COMMAND_INT"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->COMMAND_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v5, 0x4

    const-string v6, "PARAM_UNION"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->PARAM_UNION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 51
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v6, 0x5

    const-string v7, "FTP"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->FTP:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 57
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v7, 0x6

    const-string v8, "SET_ATTITUDE_TARGET"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_ATTITUDE_TARGET:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/4 v8, 0x7

    const-string v9, "SET_POSITION_TARGET_LOCAL_NED"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_POSITION_TARGET_LOCAL_NED:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v9, 0x8

    const-string v10, "SET_POSITION_TARGET_GLOBAL_INT"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_POSITION_TARGET_GLOBAL_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v10, 0x9

    const-string v11, "TERRAIN"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->TERRAIN:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 81
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v11, 0xa

    const-string v12, "SET_ACTUATOR_TARGET"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_ACTUATOR_TARGET:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 87
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v12, 0xb

    const-string v13, "FLIGHT_TERMINATION"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->FLIGHT_TERMINATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 93
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v13, 0xc

    const-string v14, "COMPASS_CALIBRATION"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->COMPASS_CALIBRATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 99
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v14, 0xd

    const-string v15, "MAVLINK2"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MAVLINK2:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 105
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v15, 0xe

    const-string v14, "MISSION_FENCE"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_FENCE:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 111
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const-string v14, "MISSION_RALLY"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_RALLY:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 117
    new-instance v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const-string v14, "FLIGHT_INFORMATION"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->FLIGHT_INFORMATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v0, 0x11

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavProtocolCapability;

    .line 11
    sget-object v14, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_FLOAT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->PARAM_FLOAT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->COMMAND_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->PARAM_UNION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->FTP:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_ATTITUDE_TARGET:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_POSITION_TARGET_LOCAL_NED:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_POSITION_TARGET_GLOBAL_INT:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->TERRAIN:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->SET_ACTUATOR_TARGET:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->FLIGHT_TERMINATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->COMPASS_CALIBRATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MAVLINK2:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_FENCE:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->MISSION_RALLY:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;->FLIGHT_INFORMATION:Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->$VALUES:[Lio/dronefleet/mavlink/common/MavProtocolCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavProtocolCapability;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/common/MavProtocolCapability;->$VALUES:[Lio/dronefleet/mavlink/common/MavProtocolCapability;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavProtocolCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavProtocolCapability;

    return-object v0
.end method
