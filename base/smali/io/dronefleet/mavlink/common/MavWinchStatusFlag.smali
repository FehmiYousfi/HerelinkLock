.class public final enum Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
.super Ljava/lang/Enum;
.source "MavWinchStatusFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavWinchStatusFlag;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

.field public static final enum MAV_WINCH_STATUS_CLUTCH_ENGAGED:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum MAV_WINCH_STATUS_FULLY_RETRACTED:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum MAV_WINCH_STATUS_HEALTHY:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MAV_WINCH_STATUS_MOVING:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    const/4 v1, 0x0

    const-string v2, "MAV_WINCH_STATUS_HEALTHY"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_HEALTHY:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    const/4 v2, 0x1

    const-string v3, "MAV_WINCH_STATUS_FULLY_RETRACTED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_FULLY_RETRACTED:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    const/4 v3, 0x2

    const-string v4, "MAV_WINCH_STATUS_MOVING"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_MOVING:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    const/4 v4, 0x3

    const-string v5, "MAV_WINCH_STATUS_CLUTCH_ENGAGED"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_CLUTCH_ENGAGED:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    .line 9
    sget-object v5, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_HEALTHY:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    aput-object v5, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_FULLY_RETRACTED:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_MOVING:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->MAV_WINCH_STATUS_CLUTCH_ENGAGED:Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    aput-object v1, v0, v4

    sput-object v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->$VALUES:[Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavWinchStatusFlag;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->$VALUES:[Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavWinchStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavWinchStatusFlag;

    return-object v0
.end method
