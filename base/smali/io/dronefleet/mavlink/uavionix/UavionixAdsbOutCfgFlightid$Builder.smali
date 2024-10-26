.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbOutCfgFlightid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private flightId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid;
    .locals 3

    .line 109
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid$Builder;->flightId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid;-><init>(Ljava/lang/String;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid$1;)V

    return-object v0
.end method

.method public final flightId(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Flight Identification: 8 ASCII characters, \'0\'\n                through \'9\', \'A\' through \'Z\' or space. Spaces (0x20) used as a trailing pad\n                character, or when call sign is unavailable. Reflects Control message setting. This\n                is null-terminated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 104
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgFlightid$Builder;->flightId:Ljava/lang/String;

    return-object p0
.end method
