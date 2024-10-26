.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF22.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAccelXAtCalibration:I

.field private sueAccelYAtCalibration:I

.field private sueAccelZAtCalibration:I

.field private sueGyroXAtCalibration:I

.field private sueGyroYAtCalibration:I

.field private sueGyroZAtCalibration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;
    .locals 9

    .line 292
    new-instance v8, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueAccelXAtCalibration:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueAccelYAtCalibration:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueAccelZAtCalibration:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueGyroXAtCalibration:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueGyroYAtCalibration:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueGyroZAtCalibration:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;-><init>(IIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$1;)V

    return-object v8
.end method

.method public final sueAccelXAtCalibration(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X accelerometer at\n                calibration time"
        position = 0x1
        signed = true
        unitSize = 0x2
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueAccelXAtCalibration:I

    return-object p0
.end method

.method public final sueAccelYAtCalibration(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y accelerometer at\n                calibration time"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 230
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueAccelYAtCalibration:I

    return-object p0
.end method

.method public final sueAccelZAtCalibration(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z accelerometer at\n                calibration time"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueAccelZAtCalibration:I

    return-object p0
.end method

.method public final sueGyroXAtCalibration(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X gyro at calibration time"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 259
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueGyroXAtCalibration:I

    return-object p0
.end method

.method public final sueGyroYAtCalibration(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y gyro at calibration time"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 273
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueGyroYAtCalibration:I

    return-object p0
.end method

.method public final sueGyroZAtCalibration(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z gyro at calibration time"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 287
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;->sueGyroZAtCalibration:I

    return-object p0
.end method
