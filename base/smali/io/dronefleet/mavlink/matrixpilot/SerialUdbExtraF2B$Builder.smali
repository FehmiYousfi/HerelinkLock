.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF2B.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAeroX:I

.field private sueAeroY:I

.field private sueAeroZ:I

.field private sueBaromAlt:I

.field private sueBaromPress:I

.field private sueBaromTemp:I

.field private sueBatAmp:I

.field private sueBatAmpHours:I

.field private sueBatVolt:I

.field private sueDesiredHeight:I

.field private sueFlags:J

.field private sueImuLocationX:I

.field private sueImuLocationY:I

.field private sueImuLocationZ:I

.field private sueImuVelocityX:I

.field private sueImuVelocityY:I

.field private sueImuVelocityZ:I

.field private sueLocationErrorEarthX:I

.field private sueLocationErrorEarthY:I

.field private sueLocationErrorEarthZ:I

.field private sueMemoryStackFree:I

.field private sueOscFails:I

.field private suePwmInput1:I

.field private suePwmInput10:I

.field private suePwmInput11:I

.field private suePwmInput12:I

.field private suePwmInput2:I

.field private suePwmInput3:I

.field private suePwmInput4:I

.field private suePwmInput5:I

.field private suePwmInput6:I

.field private suePwmInput7:I

.field private suePwmInput8:I

.field private suePwmInput9:I

.field private suePwmOutput1:I

.field private suePwmOutput10:I

.field private suePwmOutput11:I

.field private suePwmOutput12:I

.field private suePwmOutput2:I

.field private suePwmOutput3:I

.field private suePwmOutput4:I

.field private suePwmOutput5:I

.field private suePwmOutput6:I

.field private suePwmOutput7:I

.field private suePwmOutput8:I

.field private suePwmOutput9:I

.field private sueTime:J

.field private sueWaypointGoalX:I

.field private sueWaypointGoalY:I

.field private sueWaypointGoalZ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;
    .locals 59

    move-object/from16 v0, p0

    .line 1932
    new-instance v55, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;

    move-object/from16 v1, v55

    iget-wide v2, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueTime:J

    iget v4, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput1:I

    iget v5, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput2:I

    iget v6, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput3:I

    iget v7, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput4:I

    iget v8, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput5:I

    iget v9, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput6:I

    iget v10, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput7:I

    iget v11, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput8:I

    iget v12, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput9:I

    iget v13, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput10:I

    iget v14, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput11:I

    iget v15, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput12:I

    move-object/from16 v56, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput1:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput2:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput3:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput4:I

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput5:I

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput6:I

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput7:I

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput8:I

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput9:I

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput10:I

    move/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput11:I

    move/from16 v26, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput12:I

    move/from16 v27, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuLocationX:I

    move/from16 v28, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuLocationY:I

    move/from16 v29, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuLocationZ:I

    move/from16 v30, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueLocationErrorEarthX:I

    move/from16 v31, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueLocationErrorEarthY:I

    move/from16 v32, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueLocationErrorEarthZ:I

    move/from16 v33, v1

    move-wide/from16 v57, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueFlags:J

    move-wide/from16 v34, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueOscFails:I

    move/from16 v36, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuVelocityX:I

    move/from16 v37, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuVelocityY:I

    move/from16 v38, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuVelocityZ:I

    move/from16 v39, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueWaypointGoalX:I

    move/from16 v40, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueWaypointGoalY:I

    move/from16 v41, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueWaypointGoalZ:I

    move/from16 v42, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueAeroX:I

    move/from16 v43, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueAeroY:I

    move/from16 v44, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueAeroZ:I

    move/from16 v45, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBaromTemp:I

    move/from16 v46, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBaromPress:I

    move/from16 v47, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBaromAlt:I

    move/from16 v48, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBatVolt:I

    move/from16 v49, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBatAmp:I

    move/from16 v50, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBatAmpHours:I

    move/from16 v51, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueDesiredHeight:I

    move/from16 v52, v1

    iget v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueMemoryStackFree:I

    move/from16 v53, v1

    const/16 v54, 0x0

    move-object/from16 v1, v56

    move-wide/from16 v2, v57

    invoke-direct/range {v1 .. v54}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B;-><init>(JIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIJIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$1;)V

    return-object v55
.end method

.method public final sueAeroX(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aeroforce in UDB X Axis"
        position = 0x28
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1787
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueAeroX:I

    return-object p0
.end method

.method public final sueAeroY(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aeroforce in UDB Y Axis"
        position = 0x29
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1801
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueAeroY:I

    return-object p0
.end method

.method public final sueAeroZ(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aeroforce in UDB Z axis"
        position = 0x2a
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1815
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueAeroZ:I

    return-object p0
.end method

.method public final sueBaromAlt(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE barometer altitude"
        position = 0x2d
        signed = true
        unitSize = 0x4
    .end annotation

    .line 1857
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBaromAlt:I

    return-object p0
.end method

.method public final sueBaromPress(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE barometer pressure"
        position = 0x2c
        signed = true
        unitSize = 0x4
    .end annotation

    .line 1843
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBaromPress:I

    return-object p0
.end method

.method public final sueBaromTemp(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE barometer temperature"
        position = 0x2b
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1829
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBaromTemp:I

    return-object p0
.end method

.method public final sueBatAmp(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE battery current"
        position = 0x2f
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1885
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBatAmp:I

    return-object p0
.end method

.method public final sueBatAmpHours(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE battery milli amp hours used"
        position = 0x30
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1899
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBatAmpHours:I

    return-object p0
.end method

.method public final sueBatVolt(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE battery voltage"
        position = 0x2e
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1871
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueBatVolt:I

    return-object p0
.end method

.method public final sueDesiredHeight(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sue autopilot desired height"
        position = 0x31
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1913
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueDesiredHeight:I

    return-object p0
.end method

.method public final sueFlags(J)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Status Flags"
        position = 0x20
        unitSize = 0x4
    .end annotation

    .line 1672
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueFlags:J

    return-object p0
.end method

.method public final sueImuLocationX(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Location X"
        position = 0x1a
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1586
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuLocationX:I

    return-object p0
.end method

.method public final sueImuLocationY(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Location Y"
        position = 0x1b
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1600
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuLocationY:I

    return-object p0
.end method

.method public final sueImuLocationZ(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Location Z"
        position = 0x1c
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1614
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuLocationZ:I

    return-object p0
.end method

.method public final sueImuVelocityX(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Velocity X"
        position = 0x22
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1700
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuVelocityX:I

    return-object p0
.end method

.method public final sueImuVelocityY(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Velocity Y"
        position = 0x23
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1714
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuVelocityY:I

    return-object p0
.end method

.method public final sueImuVelocityZ(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra IMU Velocity Z"
        position = 0x24
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1728
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueImuVelocityZ:I

    return-object p0
.end method

.method public final sueLocationErrorEarthX(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Location Error Earth\n                X"
        position = 0x1d
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1629
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueLocationErrorEarthX:I

    return-object p0
.end method

.method public final sueLocationErrorEarthY(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Location Error Earth\n                Y"
        position = 0x1e
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1644
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueLocationErrorEarthY:I

    return-object p0
.end method

.method public final sueLocationErrorEarthZ(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Location Error Earth\n                Z"
        position = 0x1f
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1659
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueLocationErrorEarthZ:I

    return-object p0
.end method

.method public final sueMemoryStackFree(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Stack Memory Free"
        position = 0x32
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1927
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueMemoryStackFree:I

    return-object p0
.end method

.method public final sueOscFails(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Oscillator Failure Count"
        position = 0x21
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1686
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueOscFails:I

    return-object p0
.end method

.method public final suePwmInput1(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 1"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1250
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput1:I

    return-object p0
.end method

.method public final suePwmInput10(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 10"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1376
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput10:I

    return-object p0
.end method

.method public final suePwmInput11(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 11"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1390
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput11:I

    return-object p0
.end method

.method public final suePwmInput12(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 12"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1404
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput12:I

    return-object p0
.end method

.method public final suePwmInput2(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 2"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1264
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput2:I

    return-object p0
.end method

.method public final suePwmInput3(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 3"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1278
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput3:I

    return-object p0
.end method

.method public final suePwmInput4(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 4"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1292
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput4:I

    return-object p0
.end method

.method public final suePwmInput5(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 5"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1306
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput5:I

    return-object p0
.end method

.method public final suePwmInput6(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 6"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1320
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput6:I

    return-object p0
.end method

.method public final suePwmInput7(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 7"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1334
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput7:I

    return-object p0
.end method

.method public final suePwmInput8(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 8"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1348
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput8:I

    return-object p0
.end method

.method public final suePwmInput9(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Input Channel 9"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1362
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmInput9:I

    return-object p0
.end method

.method public final suePwmOutput1(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 1"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1418
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput1:I

    return-object p0
.end method

.method public final suePwmOutput10(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 10"
        position = 0x17
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1544
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput10:I

    return-object p0
.end method

.method public final suePwmOutput11(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 11"
        position = 0x18
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1558
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput11:I

    return-object p0
.end method

.method public final suePwmOutput12(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 12"
        position = 0x19
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1572
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput12:I

    return-object p0
.end method

.method public final suePwmOutput2(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 2"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1432
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput2:I

    return-object p0
.end method

.method public final suePwmOutput3(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 3"
        position = 0x10
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1446
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput3:I

    return-object p0
.end method

.method public final suePwmOutput4(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 4"
        position = 0x11
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1460
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput4:I

    return-object p0
.end method

.method public final suePwmOutput5(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 5"
        position = 0x12
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1474
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput5:I

    return-object p0
.end method

.method public final suePwmOutput6(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 6"
        position = 0x13
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1488
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput6:I

    return-object p0
.end method

.method public final suePwmOutput7(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 7"
        position = 0x14
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1502
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput7:I

    return-object p0
.end method

.method public final suePwmOutput8(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 8"
        position = 0x15
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1516
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput8:I

    return-object p0
.end method

.method public final suePwmOutput9(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PWM Output Channel 9"
        position = 0x16
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1530
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->suePwmOutput9:I

    return-object p0
.end method

.method public final sueTime(J)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Time"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 1236
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueTime:J

    return-object p0
.end method

.method public final sueWaypointGoalX(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Current Waypoint Goal\n                X"
        position = 0x25
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1743
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueWaypointGoalX:I

    return-object p0
.end method

.method public final sueWaypointGoalY(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Current Waypoint Goal\n                Y"
        position = 0x26
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1758
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueWaypointGoalY:I

    return-object p0
.end method

.method public final sueWaypointGoalZ(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Current Waypoint Goal\n                Z"
        position = 0x27
        signed = true
        unitSize = 0x2
    .end annotation

    .line 1773
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2B$Builder;->sueWaypointGoalZ:I

    return-object p0
.end method
