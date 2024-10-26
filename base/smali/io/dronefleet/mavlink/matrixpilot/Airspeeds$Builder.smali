.class public final Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
.super Ljava/lang/Object;
.source "Airspeeds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/Airspeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeedHotWire:I

.field private airspeedImu:I

.field private airspeedPitot:I

.field private airspeedUltrasonic:I

.field private aoa:I

.field private aoy:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeedHotWire(I)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hot wire anenometer measured airspeed,\n                cm/s"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 275
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedHotWire:I

    return-object p0
.end method

.method public final airspeedImu(I)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed estimate from IMU, cm/s"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 246
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedImu:I

    return-object p0
.end method

.method public final airspeedPitot(I)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitot measured forward airpseed, cm/s"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 260
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedPitot:I

    return-object p0
.end method

.method public final airspeedUltrasonic(I)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ultrasonic measured airspeed, cm/s"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 289
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedUltrasonic:I

    return-object p0
.end method

.method public final aoa(I)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angle of attack sensor, degrees * 10"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 303
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->aoa:I

    return-object p0
.end method

.method public final aoy(I)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle sensor, degrees * 10"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 317
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->aoy:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/matrixpilot/Airspeeds;
    .locals 11

    .line 322
    new-instance v10, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;

    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedImu:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedPitot:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedHotWire:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->airspeedUltrasonic:I

    iget v7, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->aoa:I

    iget v8, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->aoy:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;-><init>(JIIIIIILio/dronefleet/mavlink/matrixpilot/Airspeeds$1;)V

    return-object v10
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (milliseconds since system boot)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 232
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;->timeBootMs:J

    return-object p0
.end method
