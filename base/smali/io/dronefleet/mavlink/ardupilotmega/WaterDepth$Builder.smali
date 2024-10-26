.class public final Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
.super Ljava/lang/Object;
.source "WaterDepth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/WaterDepth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:F

.field private distance:F

.field private healthy:I

.field private id:I

.field private lat:I

.field private lng:I

.field private pitch:F

.field private roll:F

.field private temperature:F

.field private timeBootMs:J

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(F)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL) of vehicle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 384
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->alt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/WaterDepth;
    .locals 15

    .line 454
    new-instance v14, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->id:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->healthy:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->lat:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->lng:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->alt:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->roll:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->pitch:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->yaw:F

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->distance:F

    iget v12, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->temperature:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth;-><init>(JIIIIFFFFFFLio/dronefleet/mavlink/ardupilotmega/WaterDepth$1;)V

    return-object v14
.end method

.method public final distance(F)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance (uncorrected)"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 436
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->distance:F

    return-object p0
.end method

.method public final healthy(I)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor data healthy (0=unhealthy, 1=healthy)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 343
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->healthy:I

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard ID of the sensor"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 330
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->id:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 357
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->lat:I

    return-object p0
.end method

.method public final lng(I)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 371
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->lng:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 410
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 397
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->roll:F

    return-object p0
.end method

.method public final temperature(F)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Water temperature"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 449
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->temperature:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 317
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 423
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/WaterDepth$Builder;->yaw:F

    return-object p0
.end method
