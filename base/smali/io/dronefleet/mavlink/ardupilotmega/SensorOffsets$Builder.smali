.class public final Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
.super Ljava/lang/Object;
.source "SensorOffsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accelCalX:F

.field private accelCalY:F

.field private accelCalZ:F

.field private gyroCalX:F

.field private gyroCalY:F

.field private gyroCalZ:F

.field private magDeclination:F

.field private magOfsX:I

.field private magOfsY:I

.field private magOfsZ:I

.field private rawPress:I

.field private rawTemp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accelCalX(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Accel X calibration."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 469
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->accelCalX:F

    return-object p0
.end method

.method public final accelCalY(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Accel Y calibration."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 482
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->accelCalY:F

    return-object p0
.end method

.method public final accelCalZ(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Accel Z calibration."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 495
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->accelCalZ:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets;
    .locals 15

    .line 500
    new-instance v14, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magOfsX:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magOfsY:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magOfsZ:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magDeclination:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->rawPress:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->rawTemp:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->gyroCalX:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->gyroCalY:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->gyroCalZ:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->accelCalX:F

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->accelCalY:F

    iget v12, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->accelCalZ:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets;-><init>(IIIFIIFFFFFFLio/dronefleet/mavlink/ardupilotmega/SensorOffsets$1;)V

    return-object v14
.end method

.method public final gyroCalX(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gyro X calibration."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 430
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->gyroCalX:F

    return-object p0
.end method

.method public final gyroCalY(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gyro Y calibration."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 443
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->gyroCalY:F

    return-object p0
.end method

.method public final gyroCalZ(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gyro Z calibration."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 456
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->gyroCalZ:F

    return-object p0
.end method

.method public final magDeclination(F)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetic declination."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magDeclination:F

    return-object p0
.end method

.method public final magOfsX(I)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer X offset."
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 348
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magOfsX:I

    return-object p0
.end method

.method public final magOfsY(I)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer Y offset."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 362
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magOfsY:I

    return-object p0
.end method

.method public final magOfsZ(I)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer Z offset."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 376
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->magOfsZ:I

    return-object p0
.end method

.method public final rawPress(I)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Raw pressure from barometer."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 403
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->rawPress:I

    return-object p0
.end method

.method public final rawTemp(I)Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Raw temperature from barometer."
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 417
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SensorOffsets$Builder;->rawTemp:I

    return-object p0
.end method
