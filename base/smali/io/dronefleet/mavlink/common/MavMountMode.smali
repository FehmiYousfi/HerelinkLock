.class public final enum Lio/dronefleet/mavlink/common/MavMountMode;
.super Ljava/lang/Enum;
.source "MavMountMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavMountMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavMountMode;

.field public static final enum GPS_POINT:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum HOME_LOCATION:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum MAVLINK_TARGETING:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum NEUTRAL:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum RC_TARGETING:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum RETRACT:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum SYSID_TARGET:Lio/dronefleet/mavlink/common/MavMountMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v1, 0x0

    const-string v2, "RETRACT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->RETRACT:Lio/dronefleet/mavlink/common/MavMountMode;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->NEUTRAL:Lio/dronefleet/mavlink/common/MavMountMode;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v3, 0x2

    const-string v4, "MAVLINK_TARGETING"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->MAVLINK_TARGETING:Lio/dronefleet/mavlink/common/MavMountMode;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v4, 0x3

    const-string v5, "RC_TARGETING"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->RC_TARGETING:Lio/dronefleet/mavlink/common/MavMountMode;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v5, 0x4

    const-string v6, "GPS_POINT"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->GPS_POINT:Lio/dronefleet/mavlink/common/MavMountMode;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v6, 0x5

    const-string v7, "SYSID_TARGET"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->SYSID_TARGET:Lio/dronefleet/mavlink/common/MavMountMode;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v7, 0x6

    const-string v8, "HOME_LOCATION"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavMountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->HOME_LOCATION:Lio/dronefleet/mavlink/common/MavMountMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavMountMode;

    .line 9
    sget-object v8, Lio/dronefleet/mavlink/common/MavMountMode;->RETRACT:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v8, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavMountMode;->NEUTRAL:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavMountMode;->MAVLINK_TARGETING:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavMountMode;->RC_TARGETING:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavMountMode;->GPS_POINT:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavMountMode;->SYSID_TARGET:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavMountMode;->HOME_LOCATION:Lio/dronefleet/mavlink/common/MavMountMode;

    aput-object v1, v0, v7

    sput-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->$VALUES:[Lio/dronefleet/mavlink/common/MavMountMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavMountMode;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavMountMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavMountMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavMountMode;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavMountMode;->$VALUES:[Lio/dronefleet/mavlink/common/MavMountMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavMountMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavMountMode;

    return-object v0
.end method
