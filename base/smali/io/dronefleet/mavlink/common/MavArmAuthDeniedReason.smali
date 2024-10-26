.class public final enum Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
.super Ljava/lang/Enum;
.source "MavArmAuthDeniedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

.field public static final enum AIRSPACE_IN_USE:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum BAD_WEATHER:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum GENERIC:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum INVALID_WAYPOINT:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum NONE:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum TIMEOUT:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v1, 0x0

    const-string v2, "GENERIC"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->GENERIC:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->NONE:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v3, 0x2

    const-string v4, "INVALID_WAYPOINT"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->INVALID_WAYPOINT:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v4, 0x3

    const-string v5, "TIMEOUT"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->TIMEOUT:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v5, 0x4

    const-string v6, "AIRSPACE_IN_USE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->AIRSPACE_IN_USE:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v6, 0x5

    const-string v7, "BAD_WEATHER"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->BAD_WEATHER:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    .line 9
    sget-object v7, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->GENERIC:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    aput-object v7, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->NONE:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->INVALID_WAYPOINT:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->TIMEOUT:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->AIRSPACE_IN_USE:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->BAD_WEATHER:Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    aput-object v1, v0, v6

    sput-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->$VALUES:[Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->$VALUES:[Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavArmAuthDeniedReason;

    return-object v0
.end method
