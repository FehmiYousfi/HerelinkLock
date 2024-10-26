.class public final Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdSystemUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private operatorAltitudeGeo:F

.field private operatorLatitude:I

.field private operatorLongitude:I

.field private targetComponent:I

.field private targetSystem:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;
    .locals 10

    .line 293
    new-instance v9, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorLatitude:I

    iget v4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorLongitude:I

    iget v5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorAltitudeGeo:F

    iget-wide v6, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->timestamp:J

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;-><init>(IIIIFJLio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$1;)V

    return-object v9
.end method

.method public final operatorAltitudeGeo(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Geodetic\n                altitude of the operator relative to WGS84. If unknown: -1000 m."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 274
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorAltitudeGeo:F

    return-object p0
.end method

.method public final operatorLatitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of the\n                operator. If unknown: 0 (both Lat/Lon)."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorLatitude:I

    return-object p0
.end method

.method public final operatorLongitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of\n                the operator. If unknown: 0 (both Lat/Lon)."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 260
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->operatorLongitude:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 230
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 217
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timestamp(J)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "32 bit Unix Timestamp in seconds since\n                00:00:00 01/01/2019."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 288
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;->timestamp:J

    return-object p0
.end method
