.class public final Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
.super Ljava/lang/Object;
.source "Altitudes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/Altitudes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altBarometric:I

.field private altExtra:I

.field private altGps:I

.field private altImu:I

.field private altOpticalFlow:I

.field private altRangeFinder:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altBarometric(I)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "barometeric altitude above ground in meters,\n                expressed as * 1000 (millimeters)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altBarometric:I

    return-object p0
.end method

.method public final altExtra(I)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Extra altitude above ground in meters, expressed\n                as * 1000 (millimeters)"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 327
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altExtra:I

    return-object p0
.end method

.method public final altGps(I)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS altitude (MSL) in meters, expressed as * 1000\n                (millimeters)"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 252
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altGps:I

    return-object p0
.end method

.method public final altImu(I)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "IMU altitude above ground in meters, expressed as *\n                1000 (millimeters)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altImu:I

    return-object p0
.end method

.method public final altOpticalFlow(I)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Optical flow altitude above ground in\n                meters, expressed as * 1000 (millimeters)"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 297
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altOpticalFlow:I

    return-object p0
.end method

.method public final altRangeFinder(I)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rangefinder Altitude above ground in\n                meters, expressed as * 1000 (millimeters)"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 312
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altRangeFinder:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/matrixpilot/Altitudes;
    .locals 11

    .line 332
    new-instance v10, Lio/dronefleet/mavlink/matrixpilot/Altitudes;

    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altGps:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altImu:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altBarometric:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altOpticalFlow:I

    iget v7, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altRangeFinder:I

    iget v8, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->altExtra:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/matrixpilot/Altitudes;-><init>(JIIIIIILio/dronefleet/mavlink/matrixpilot/Altitudes$1;)V

    return-object v10
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (milliseconds since system boot)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 237
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/Altitudes$Builder;->timeBootMs:J

    return-object p0
.end method
