.class public final enum Lio/dronefleet/mavlink/minimal/MavAutopilot;
.super Ljava/lang/Enum;
.source "MavAutopilot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/minimal/MavAutopilot;

.field public static final enum AEROB:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum AIRRAILS:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x13
    .end annotation
.end field

.field public static final enum ARDUPILOTMEGA:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum ARMAZILA:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation
.end field

.field public static final enum ASLUAV:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x11
    .end annotation
.end field

.field public static final enum AUTOQUAD:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xe
    .end annotation
.end field

.field public static final enum FP:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum GENERIC:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum GENERIC_MISSION_FULL:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum GENERIC_WAYPOINTS_AND_SIMPLE_NAVIGATION_ONLY:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum GENERIC_WAYPOINTS_ONLY:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum INVALID:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum OPENPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum PPZ:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum PX4:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum REFLEX:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x14
    .end annotation
.end field

.field public static final enum RESERVED:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum SLUGS:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum SMACCMPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation
.end field

.field public static final enum SMARTAP:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x12
    .end annotation
.end field

.field public static final enum UDB:Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v1, 0x0

    const-string v2, "GENERIC"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v2, 0x1

    const-string v3, "RESERVED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->RESERVED:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v3, 0x2

    const-string v4, "SLUGS"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SLUGS:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v4, 0x3

    const-string v5, "ARDUPILOTMEGA"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ARDUPILOTMEGA:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v5, 0x4

    const-string v6, "OPENPILOT"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->OPENPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v6, 0x5

    const-string v7, "GENERIC_WAYPOINTS_ONLY"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC_WAYPOINTS_ONLY:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v7, 0x6

    const-string v8, "GENERIC_WAYPOINTS_AND_SIMPLE_NAVIGATION_ONLY"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC_WAYPOINTS_AND_SIMPLE_NAVIGATION_ONLY:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/4 v8, 0x7

    const-string v9, "GENERIC_MISSION_FULL"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC_MISSION_FULL:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v9, 0x8

    const-string v10, "INVALID"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->INVALID:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v10, 0x9

    const-string v11, "PPZ"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->PPZ:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v11, 0xa

    const-string v12, "UDB"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->UDB:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v12, 0xb

    const-string v13, "FP"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->FP:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v13, 0xc

    const-string v14, "PX4"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->PX4:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v14, 0xd

    const-string v15, "SMACCMPILOT"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SMACCMPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 98
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v15, 0xe

    const-string v14, "AUTOQUAD"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AUTOQUAD:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 104
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const-string v14, "ARMAZILA"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ARMAZILA:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 110
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const-string v14, "AEROB"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AEROB:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 116
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const-string v14, "ASLUAV"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ASLUAV:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 122
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const-string v14, "SMARTAP"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SMARTAP:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 128
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const-string v14, "AIRRAILS"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AIRRAILS:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 134
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const-string v14, "REFLEX"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/minimal/MavAutopilot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->REFLEX:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v0, 0x15

    new-array v0, v0, [Lio/dronefleet/mavlink/minimal/MavAutopilot;

    .line 9
    sget-object v14, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->RESERVED:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SLUGS:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ARDUPILOTMEGA:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->OPENPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC_WAYPOINTS_ONLY:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC_WAYPOINTS_AND_SIMPLE_NAVIGATION_ONLY:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC_MISSION_FULL:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->INVALID:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->PPZ:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->UDB:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->FP:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->PX4:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SMACCMPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AUTOQUAD:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ARMAZILA:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AEROB:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ASLUAV:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SMARTAP:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AIRRAILS:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->REFLEX:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->$VALUES:[Lio/dronefleet/mavlink/minimal/MavAutopilot;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/minimal/MavAutopilot;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/minimal/MavAutopilot;->$VALUES:[Lio/dronefleet/mavlink/minimal/MavAutopilot;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/minimal/MavAutopilot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/minimal/MavAutopilot;

    return-object v0
.end method
