.class public final enum Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
.super Ljava/lang/Enum;
.source "UavionixAdsbOutStatusFault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

.field public static final enum GPS_NO_POS:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum GPS_UNAVAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum MAINT_REQ:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum STATUS_MESSAGE_UNAVAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum TX_SYSTEM_FAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    const/4 v1, 0x0

    const-string v2, "STATUS_MESSAGE_UNAVAIL"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->STATUS_MESSAGE_UNAVAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    const/4 v2, 0x1

    const-string v3, "GPS_NO_POS"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->GPS_NO_POS:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    const/4 v3, 0x2

    const-string v4, "GPS_UNAVAIL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->GPS_UNAVAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    const/4 v4, 0x3

    const-string v5, "TX_SYSTEM_FAIL"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->TX_SYSTEM_FAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    const/4 v5, 0x4

    const-string v6, "MAINT_REQ"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->MAINT_REQ:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    .line 9
    sget-object v6, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->STATUS_MESSAGE_UNAVAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->GPS_NO_POS:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->GPS_UNAVAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->TX_SYSTEM_FAIL:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->MAINT_REQ:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;

    return-object v0
.end method
