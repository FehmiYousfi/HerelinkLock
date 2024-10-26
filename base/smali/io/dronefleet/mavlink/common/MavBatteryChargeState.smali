.class public final enum Lio/dronefleet/mavlink/common/MavBatteryChargeState;
.super Ljava/lang/Enum;
.source "MavBatteryChargeState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavBatteryChargeState;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavBatteryChargeState;

.field public static final enum CHARGING:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum CRITICAL:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum EMERGENCY:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum FAILED:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum LOW:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum OK:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum UNDEFINED:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum UNHEALTHY:Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->UNDEFINED:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v2, 0x1

    const-string v3, "OK"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->OK:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v3, 0x2

    const-string v4, "LOW"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->LOW:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v4, 0x3

    const-string v5, "CRITICAL"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->CRITICAL:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v5, 0x4

    const-string v6, "EMERGENCY"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->EMERGENCY:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v6, 0x5

    const-string v7, "FAILED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->FAILED:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 53
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v7, 0x6

    const-string v8, "UNHEALTHY"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->UNHEALTHY:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 59
    new-instance v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/4 v8, 0x7

    const-string v9, "CHARGING"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavBatteryChargeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->CHARGING:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->UNDEFINED:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->OK:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->LOW:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->CRITICAL:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->EMERGENCY:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->FAILED:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->UNHEALTHY:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->CHARGING:Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->$VALUES:[Lio/dronefleet/mavlink/common/MavBatteryChargeState;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavBatteryChargeState;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavBatteryChargeState;->$VALUES:[Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavBatteryChargeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    return-object v0
.end method
