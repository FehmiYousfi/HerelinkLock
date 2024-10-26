.class public final enum Lio/dronefleet/mavlink/common/MavBatteryFault;
.super Ljava/lang/Enum;
.source "MavBatteryFault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavBatteryFault;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavBatteryFault;

.field public static final enum BATTERY_FAULT_INCOMPATIBLE_CELLS_CONFIGURATION:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum CELL_FAIL:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum DEEP_DISCHARGE:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum INCOMPATIBLE_FIRMWARE:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum INCOMPATIBLE_VOLTAGE:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum OVER_CURRENT:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum OVER_TEMPERATURE:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum SPIKES:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum UNDER_TEMPERATURE:Lio/dronefleet/mavlink/common/MavBatteryFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v1, 0x0

    const-string v2, "DEEP_DISCHARGE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->DEEP_DISCHARGE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v2, 0x1

    const-string v3, "SPIKES"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->SPIKES:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 29
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v3, 0x2

    const-string v4, "CELL_FAIL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->CELL_FAIL:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 35
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v4, 0x3

    const-string v5, "OVER_CURRENT"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->OVER_CURRENT:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 41
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v5, 0x4

    const-string v6, "OVER_TEMPERATURE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->OVER_TEMPERATURE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 47
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v6, 0x5

    const-string v7, "UNDER_TEMPERATURE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->UNDER_TEMPERATURE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v7, 0x6

    const-string v8, "INCOMPATIBLE_VOLTAGE"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->INCOMPATIBLE_VOLTAGE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 60
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v8, 0x7

    const-string v9, "INCOMPATIBLE_FIRMWARE"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->INCOMPATIBLE_FIRMWARE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 66
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/16 v9, 0x8

    const-string v10, "BATTERY_FAULT_INCOMPATIBLE_CELLS_CONFIGURATION"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavBatteryFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->BATTERY_FAULT_INCOMPATIBLE_CELLS_CONFIGURATION:Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavBatteryFault;

    .line 11
    sget-object v10, Lio/dronefleet/mavlink/common/MavBatteryFault;->DEEP_DISCHARGE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v10, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->SPIKES:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->CELL_FAIL:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->OVER_CURRENT:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->OVER_TEMPERATURE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->UNDER_TEMPERATURE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->INCOMPATIBLE_VOLTAGE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->INCOMPATIBLE_FIRMWARE:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFault;->BATTERY_FAULT_INCOMPATIBLE_CELLS_CONFIGURATION:Lio/dronefleet/mavlink/common/MavBatteryFault;

    aput-object v1, v0, v9

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->$VALUES:[Lio/dronefleet/mavlink/common/MavBatteryFault;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavBatteryFault;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavBatteryFault;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavBatteryFault;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/common/MavBatteryFault;->$VALUES:[Lio/dronefleet/mavlink/common/MavBatteryFault;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavBatteryFault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavBatteryFault;

    return-object v0
.end method
