.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAileronNavigation:I

.field private sueAltitudeholdStabilized:I

.field private sueAltitudeholdWaypoint:I

.field private suePitchStabilization:I

.field private sueRacingMode:I

.field private sueRollStabilizationAilerons:I

.field private sueRollStabilizationRudder:I

.field private sueRudderNavigation:I

.field private sueYawStabilizationAileron:I

.field private sueYawStabilizationRudder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;
    .locals 13

    .line 435
    new-instance v12, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRollStabilizationAilerons:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRollStabilizationRudder:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->suePitchStabilization:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueYawStabilizationRudder:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueYawStabilizationAileron:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueAileronNavigation:I

    iget v7, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRudderNavigation:I

    iget v8, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueAltitudeholdStabilized:I

    iget v9, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueAltitudeholdWaypoint:I

    iget v10, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRacingMode:I

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;-><init>(IIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$1;)V

    return-object v12
.end method

.method public final sueAileronNavigation(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Navigation with\n                Ailerons Enabled"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 374
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueAileronNavigation:I

    return-object p0
.end method

.method public final sueAltitudeholdStabilized(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of\n                Alitude Hold when in Stabilized Mode"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 402
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueAltitudeholdStabilized:I

    return-object p0
.end method

.method public final sueAltitudeholdWaypoint(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of Alitude\n                Hold when in Waypoint Mode"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 416
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueAltitudeholdWaypoint:I

    return-object p0
.end method

.method public final suePitchStabilization(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Pitch\n                Stabilization Enabled"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 332
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->suePitchStabilization:I

    return-object p0
.end method

.method public final sueRacingMode(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Firmware racing mode\n                enabled"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 430
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRacingMode:I

    return-object p0
.end method

.method public final sueRollStabilizationAilerons(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Roll\n                Stabilization with Ailerons Enabled"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 304
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRollStabilizationAilerons:I

    return-object p0
.end method

.method public final sueRollStabilizationRudder(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Roll\n                Stabilization with Rudder Enabled"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 318
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRollStabilizationRudder:I

    return-object p0
.end method

.method public final sueRudderNavigation(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Navigation with\n                Rudder Enabled"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 388
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueRudderNavigation:I

    return-object p0
.end method

.method public final sueYawStabilizationAileron(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Yaw\n                Stabilization using Ailerons Enabled"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 360
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueYawStabilizationAileron:I

    return-object p0
.end method

.method public final sueYawStabilizationRudder(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Yaw\n                Stabilization using Rudder Enabled"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 346
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;->sueYawStabilizationRudder:I

    return-object p0
.end method
