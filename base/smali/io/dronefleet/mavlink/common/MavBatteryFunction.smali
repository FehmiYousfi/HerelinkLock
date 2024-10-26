.class public final enum Lio/dronefleet/mavlink/common/MavBatteryFunction;
.super Ljava/lang/Enum;
.source "MavBatteryFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavBatteryFunction;

.field public static final enum ALL:Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum AVIONICS:Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum MAV_BATTERY_TYPE_PAYLOAD:Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum PROPULSION:Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum UNKNOWN:Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavBatteryFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->UNKNOWN:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v2, 0x1

    const-string v3, "ALL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavBatteryFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->ALL:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v3, 0x2

    const-string v4, "PROPULSION"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavBatteryFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->PROPULSION:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v4, 0x3

    const-string v5, "AVIONICS"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavBatteryFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->AVIONICS:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v5, 0x4

    const-string v6, "MAV_BATTERY_TYPE_PAYLOAD"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavBatteryFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->MAV_BATTERY_TYPE_PAYLOAD:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavBatteryFunction;

    .line 9
    sget-object v6, Lio/dronefleet/mavlink/common/MavBatteryFunction;->UNKNOWN:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;->ALL:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;->PROPULSION:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;->AVIONICS:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;->MAV_BATTERY_TYPE_PAYLOAD:Lio/dronefleet/mavlink/common/MavBatteryFunction;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->$VALUES:[Lio/dronefleet/mavlink/common/MavBatteryFunction;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavBatteryFunction;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavBatteryFunction;->$VALUES:[Lio/dronefleet/mavlink/common/MavBatteryFunction;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavBatteryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavBatteryFunction;

    return-object v0
.end method
