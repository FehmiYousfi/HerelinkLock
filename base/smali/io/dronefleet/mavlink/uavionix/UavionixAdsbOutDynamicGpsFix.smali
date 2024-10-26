.class public final enum Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
.super Ljava/lang/Enum;
.source "UavionixAdsbOutDynamicGpsFix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

.field public static final enum DGPS:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum NONE_0:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum NONE_1:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum RTK:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum _2D:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum _3D:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v1, 0x0

    const-string v2, "NONE_0"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->NONE_0:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v2, 0x1

    const-string v3, "NONE_1"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->NONE_1:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v3, 0x2

    const-string v4, "_2D"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->_2D:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v4, 0x3

    const-string v5, "_3D"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->_3D:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v5, 0x4

    const-string v6, "DGPS"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->DGPS:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v6, 0x5

    const-string v7, "RTK"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->RTK:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    .line 9
    sget-object v7, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->NONE_0:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    aput-object v7, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->NONE_1:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->_2D:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->_3D:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->DGPS:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->RTK:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    aput-object v1, v0, v6

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    return-object v0
.end method
