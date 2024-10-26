.class public final enum Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
.super Ljava/lang/Enum;
.source "UtmDataAvailFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/UtmDataAvailFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

.field public static final enum ALTITUDE_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum HORIZONTAL_VELO_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum NEXT_WAYPOINT_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum POSITION_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum RELATIVE_ALTITUDE_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum TIME_VALID:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum UAS_ID_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum VERTICAL_VELO_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v1, 0x0

    const-string v2, "TIME_VALID"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->TIME_VALID:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v2, 0x1

    const-string v3, "UAS_ID_AVAILABLE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->UAS_ID_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v3, 0x2

    const-string v4, "POSITION_AVAILABLE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->POSITION_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v4, 0x3

    const-string v5, "ALTITUDE_AVAILABLE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->ALTITUDE_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v5, 0x4

    const-string v6, "RELATIVE_ALTITUDE_AVAILABLE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->RELATIVE_ALTITUDE_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v6, 0x5

    const-string v7, "HORIZONTAL_VELO_AVAILABLE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->HORIZONTAL_VELO_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v7, 0x6

    const-string v8, "VERTICAL_VELO_AVAILABLE"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->VERTICAL_VELO_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/4 v8, 0x7

    const-string v9, "NEXT_WAYPOINT_AVAILABLE"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->NEXT_WAYPOINT_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->TIME_VALID:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->UAS_ID_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->POSITION_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->ALTITUDE_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->RELATIVE_ALTITUDE_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->HORIZONTAL_VELO_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->VERTICAL_VELO_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->NEXT_WAYPOINT_AVAILABLE:Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->$VALUES:[Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->$VALUES:[Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/UtmDataAvailFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    return-object v0
.end method
