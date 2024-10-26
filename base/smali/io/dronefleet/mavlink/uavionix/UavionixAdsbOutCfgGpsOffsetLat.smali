.class public final enum Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
.super Ljava/lang/Enum;
.source "UavionixAdsbOutCfgGpsOffsetLat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

.field public static final enum LEFT_2M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum LEFT_4M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum LEFT_6M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum NO_DATA:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum RIGHT_0M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum RIGHT_2M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum RIGHT_4M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum RIGHT_6M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v1, 0x0

    const-string v2, "NO_DATA"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->NO_DATA:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v2, 0x1

    const-string v3, "LEFT_2M"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->LEFT_2M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v3, 0x2

    const-string v4, "LEFT_4M"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->LEFT_4M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v4, 0x3

    const-string v5, "LEFT_6M"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->LEFT_6M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v5, 0x4

    const-string v6, "RIGHT_0M"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_0M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v6, 0x5

    const-string v7, "RIGHT_2M"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_2M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v7, 0x6

    const-string v8, "RIGHT_4M"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_4M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/4 v8, 0x7

    const-string v9, "RIGHT_6M"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_6M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->NO_DATA:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->LEFT_2M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->LEFT_4M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->LEFT_6M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_0M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_2M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_4M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->RIGHT_6M:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    return-object v0
.end method
