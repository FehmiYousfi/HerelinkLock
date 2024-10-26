.class public final enum Lio/dronefleet/mavlink/common/AdsbEmitterType;
.super Ljava/lang/Enum;
.source "AdsbEmitterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/AdsbEmitterType;

.field public static final enum EMERGENCY_SURFACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x11
    .end annotation
.end field

.field public static final enum GLIDER:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum HEAVY:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum HIGHLY_MANUV:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum HIGH_VORTEX_LARGE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum LARGE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum LIGHT:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum LIGHTER_AIR:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum NO_INFO:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum PARACHUTE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum POINT_OBSTACLE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x13
    .end annotation
.end field

.field public static final enum ROTOCRAFT:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum SERVICE_SURFACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x12
    .end annotation
.end field

.field public static final enum SMALL:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum SPACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation
.end field

.field public static final enum UAV:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xe
    .end annotation
.end field

.field public static final enum ULTRA_LIGHT:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum UNASSGINED3:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum UNASSIGNED:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum UNASSIGNED2:Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v1, 0x0

    const-string v2, "NO_INFO"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->NO_INFO:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v2, 0x1

    const-string v3, "LIGHT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->LIGHT:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v3, 0x2

    const-string v4, "SMALL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->SMALL:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v4, 0x3

    const-string v5, "LARGE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->LARGE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v5, 0x4

    const-string v6, "HIGH_VORTEX_LARGE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->HIGH_VORTEX_LARGE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v6, 0x5

    const-string v7, "HEAVY"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->HEAVY:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v7, 0x6

    const-string v8, "HIGHLY_MANUV"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->HIGHLY_MANUV:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v8, 0x7

    const-string v9, "ROTOCRAFT"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->ROTOCRAFT:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v9, 0x8

    const-string v10, "UNASSIGNED"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UNASSIGNED:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v10, 0x9

    const-string v11, "GLIDER"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->GLIDER:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v11, 0xa

    const-string v12, "LIGHTER_AIR"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->LIGHTER_AIR:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v12, 0xb

    const-string v13, "PARACHUTE"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->PARACHUTE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v13, 0xc

    const-string v14, "ULTRA_LIGHT"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->ULTRA_LIGHT:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v14, 0xd

    const-string v15, "UNASSIGNED2"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UNASSIGNED2:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 98
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v15, 0xe

    const-string v14, "UAV"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UAV:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 104
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const-string v14, "SPACE"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->SPACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 110
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const-string v14, "UNASSGINED3"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UNASSGINED3:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 116
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const-string v14, "EMERGENCY_SURFACE"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->EMERGENCY_SURFACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 122
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const-string v14, "SERVICE_SURFACE"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->SERVICE_SURFACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 128
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const-string v14, "POINT_OBSTACLE"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AdsbEmitterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->POINT_OBSTACLE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v0, 0x14

    new-array v0, v0, [Lio/dronefleet/mavlink/common/AdsbEmitterType;

    .line 9
    sget-object v14, Lio/dronefleet/mavlink/common/AdsbEmitterType;->NO_INFO:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->LIGHT:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->SMALL:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->LARGE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->HIGH_VORTEX_LARGE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->HEAVY:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->HIGHLY_MANUV:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->ROTOCRAFT:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UNASSIGNED:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->GLIDER:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->LIGHTER_AIR:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->PARACHUTE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->ULTRA_LIGHT:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UNASSIGNED2:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UAV:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->SPACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->UNASSGINED3:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->EMERGENCY_SURFACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->SERVICE_SURFACE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;->POINT_OBSTACLE:Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->$VALUES:[Lio/dronefleet/mavlink/common/AdsbEmitterType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/AdsbEmitterType;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;->$VALUES:[Lio/dronefleet/mavlink/common/AdsbEmitterType;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/AdsbEmitterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/AdsbEmitterType;

    return-object v0
.end method
