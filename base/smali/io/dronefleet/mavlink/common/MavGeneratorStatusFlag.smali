.class public final enum Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
.super Ljava/lang/Enum;
.source "MavGeneratorStatusFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

.field public static final enum BATTERY_OVERCHARGE_CURRENT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10000
    .end annotation
.end field

.field public static final enum BATTERY_UNDERVOLT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40000
    .end annotation
.end field

.field public static final enum CHARGING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum COMMUNICATION_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000
    .end annotation
.end field

.field public static final enum COOLING_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2000
    .end annotation
.end field

.field public static final enum ELECTRONICS_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum ELECTRONICS_OVERTEMP_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum ELECTRONICS_OVERTEMP_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum GENERATING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum IDLE:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400000
    .end annotation
.end field

.field public static final enum MAINTENANCE_REQUIRED:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100000
    .end annotation
.end field

.field public static final enum MAXPOWER:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum OFF:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum OVERCURRENT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8000
    .end annotation
.end field

.field public static final enum OVERTEMP_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum OVERTEMP_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum OVERVOLTAGE_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20000
    .end annotation
.end field

.field public static final enum POWERSOURCE_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field

.field public static final enum POWER_RAIL_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4000
    .end annotation
.end field

.field public static final enum READY:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum REDUCED_POWER:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum START_INHIBITED:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80000
    .end annotation
.end field

.field public static final enum WARMING_UP:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200000
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OFF:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->READY:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v3, 0x2

    const-string v4, "GENERATING"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->GENERATING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v4, 0x3

    const-string v5, "CHARGING"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->CHARGING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v5, 0x4

    const-string v6, "REDUCED_POWER"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->REDUCED_POWER:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v6, 0x5

    const-string v7, "MAXPOWER"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->MAXPOWER:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v7, 0x6

    const-string v8, "OVERTEMP_WARNING"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERTEMP_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/4 v8, 0x7

    const-string v9, "OVERTEMP_FAULT"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERTEMP_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v9, 0x8

    const-string v10, "ELECTRONICS_OVERTEMP_WARNING"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->ELECTRONICS_OVERTEMP_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v10, 0x9

    const-string v11, "ELECTRONICS_OVERTEMP_FAULT"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->ELECTRONICS_OVERTEMP_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 76
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v11, 0xa

    const-string v12, "ELECTRONICS_FAULT"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->ELECTRONICS_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 83
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v12, 0xb

    const-string v13, "POWERSOURCE_FAULT"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->POWERSOURCE_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 89
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v13, 0xc

    const-string v14, "COMMUNICATION_WARNING"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->COMMUNICATION_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 95
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v14, 0xd

    const-string v15, "COOLING_WARNING"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->COOLING_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 101
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v15, 0xe

    const-string v14, "POWER_RAIL_FAULT"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->POWER_RAIL_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 107
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "OVERCURRENT_FAULT"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERCURRENT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 114
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "BATTERY_OVERCHARGE_CURRENT_FAULT"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->BATTERY_OVERCHARGE_CURRENT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 121
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "OVERVOLTAGE_FAULT"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERVOLTAGE_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 127
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "BATTERY_UNDERVOLT_FAULT"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->BATTERY_UNDERVOLT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 133
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "START_INHIBITED"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->START_INHIBITED:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 139
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "MAINTENANCE_REQUIRED"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->MAINTENANCE_REQUIRED:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 145
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "WARMING_UP"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->WARMING_UP:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 151
    new-instance v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const-string v14, "IDLE"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->IDLE:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v0, 0x17

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    .line 11
    sget-object v14, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OFF:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->READY:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->GENERATING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->CHARGING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->REDUCED_POWER:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->MAXPOWER:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERTEMP_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERTEMP_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->ELECTRONICS_OVERTEMP_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->ELECTRONICS_OVERTEMP_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->ELECTRONICS_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->POWERSOURCE_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->COMMUNICATION_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->COOLING_WARNING:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->POWER_RAIL_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERCURRENT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->BATTERY_OVERCHARGE_CURRENT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->OVERVOLTAGE_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->BATTERY_UNDERVOLT_FAULT:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->START_INHIBITED:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->MAINTENANCE_REQUIRED:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->WARMING_UP:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->IDLE:Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->$VALUES:[Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->$VALUES:[Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    return-object v0
.end method
