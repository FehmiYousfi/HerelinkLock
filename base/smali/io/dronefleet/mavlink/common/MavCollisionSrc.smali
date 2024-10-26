.class public final enum Lio/dronefleet/mavlink/common/MavCollisionSrc;
.super Ljava/lang/Enum;
.source "MavCollisionSrc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavCollisionSrc;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavCollisionSrc;

.field public static final enum ADSB:Lio/dronefleet/mavlink/common/MavCollisionSrc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum MAVLINK_GPS_GLOBAL_INT:Lio/dronefleet/mavlink/common/MavCollisionSrc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;

    const/4 v1, 0x0

    const-string v2, "ADSB"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavCollisionSrc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;->ADSB:Lio/dronefleet/mavlink/common/MavCollisionSrc;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;

    const/4 v2, 0x1

    const-string v3, "MAVLINK_GPS_GLOBAL_INT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavCollisionSrc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;->MAVLINK_GPS_GLOBAL_INT:Lio/dronefleet/mavlink/common/MavCollisionSrc;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavCollisionSrc;

    .line 9
    sget-object v3, Lio/dronefleet/mavlink/common/MavCollisionSrc;->ADSB:Lio/dronefleet/mavlink/common/MavCollisionSrc;

    aput-object v3, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavCollisionSrc;->MAVLINK_GPS_GLOBAL_INT:Lio/dronefleet/mavlink/common/MavCollisionSrc;

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;->$VALUES:[Lio/dronefleet/mavlink/common/MavCollisionSrc;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavCollisionSrc;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavCollisionSrc;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavCollisionSrc;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;->$VALUES:[Lio/dronefleet/mavlink/common/MavCollisionSrc;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavCollisionSrc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavCollisionSrc;

    return-object v0
.end method
