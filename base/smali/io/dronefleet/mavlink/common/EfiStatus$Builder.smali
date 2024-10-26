.class public final Lio/dronefleet/mavlink/common/EfiStatus$Builder;
.super Ljava/lang/Object;
.source "EfiStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/EfiStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private barometricPressure:F

.field private cylinderHeadTemperature:F

.field private ecuIndex:F

.field private engineLoad:F

.field private exhaustGasTemperature:F

.field private fuelConsumed:F

.field private fuelFlow:F

.field private health:I

.field private ignitionTiming:F

.field private ignitionVoltage:F

.field private injectionTime:F

.field private intakeManifoldPressure:F

.field private intakeManifoldTemperature:F

.field private ptCompensation:F

.field private rpm:F

.field private sparkDwellTime:F

.field private throttleOut:F

.field private throttlePosition:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final barometricPressure(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Barometric pressure"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 584
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->barometricPressure:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/EfiStatus;
    .locals 23

    move-object/from16 v0, p0

    .line 715
    new-instance v21, Lio/dronefleet/mavlink/common/EfiStatus;

    move-object/from16 v1, v21

    iget v2, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->health:I

    iget v3, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ecuIndex:F

    iget v4, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->rpm:F

    iget v5, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->fuelConsumed:F

    iget v6, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->fuelFlow:F

    iget v7, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->engineLoad:F

    iget v8, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->throttlePosition:F

    iget v9, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->sparkDwellTime:F

    iget v10, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->barometricPressure:F

    iget v11, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->intakeManifoldPressure:F

    iget v12, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->intakeManifoldTemperature:F

    iget v13, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->cylinderHeadTemperature:F

    iget v14, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ignitionTiming:F

    iget v15, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->injectionTime:F

    move-object/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->exhaustGasTemperature:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->throttleOut:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ptCompensation:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ignitionVoltage:F

    move/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/EfiStatus;-><init>(IFFFFFFFFFFFFFFFFFLio/dronefleet/mavlink/common/EfiStatus$1;)V

    return-object v21
.end method

.method public final cylinderHeadTemperature(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Cylinder head\n                temperature"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 626
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->cylinderHeadTemperature:F

    return-object p0
.end method

.method public final ecuIndex(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ECU index"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 493
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ecuIndex:F

    return-object p0
.end method

.method public final engineLoad(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Engine load"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 545
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->engineLoad:F

    return-object p0
.end method

.method public final exhaustGasTemperature(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Exhaust gas\n                temperature"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 667
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->exhaustGasTemperature:F

    return-object p0
.end method

.method public final fuelConsumed(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel consumed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 519
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->fuelConsumed:F

    return-object p0
.end method

.method public final fuelFlow(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel flow rate"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 532
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->fuelFlow:F

    return-object p0
.end method

.method public final health(I)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI health status"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 480
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->health:I

    return-object p0
.end method

.method public final ignitionTiming(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ignition timing (Crank angle\n                degrees)"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 640
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ignitionTiming:F

    return-object p0
.end method

.method public final ignitionVoltage(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Supply voltage to EFI sparking\n                system. Zero in this value means \"unknown\", so if the supply voltage really is zero\n                volts use 0.0001 instead."
        extension = true
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 710
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ignitionVoltage:F

    return-object p0
.end method

.method public final injectionTime(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Injection time"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 653
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->injectionTime:F

    return-object p0
.end method

.method public final intakeManifoldPressure(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Intake manifold\n                pressure("
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 598
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->intakeManifoldPressure:F

    return-object p0
.end method

.method public final intakeManifoldTemperature(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Intake manifold\n                temperature"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 612
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->intakeManifoldTemperature:F

    return-object p0
.end method

.method public final ptCompensation(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pressure/temperature compensation"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 693
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->ptCompensation:F

    return-object p0
.end method

.method public final rpm(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RPM"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 506
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->rpm:F

    return-object p0
.end method

.method public final sparkDwellTime(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Spark dwell time"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 571
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->sparkDwellTime:F

    return-object p0
.end method

.method public final throttleOut(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Output throttle"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 680
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->throttleOut:F

    return-object p0
.end method

.method public final throttlePosition(F)Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle position"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 558
    iput p1, p0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;->throttlePosition:F

    return-object p0
.end method
