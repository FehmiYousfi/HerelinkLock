.class public final Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
.super Ljava/lang/Object;
.source "LoweheiserGovEfi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currBatt:F

.field private currGen:F

.field private currRot:F

.field private efiBaro:F

.field private efiBatt:F

.field private efiClt:F

.field private efiExhaustGasTemperature:F

.field private efiFuelConsumed:F

.field private efiFuelFlow:F

.field private efiIndex:I

.field private efiMat:F

.field private efiPw:F

.field private efiRpm:F

.field private efiStatus:I

.field private efiTps:F

.field private fuelLevel:F

.field private generatorStatus:I

.field private generatorTemp:F

.field private rectifierTemp:F

.field private runtime:J

.field private throttle:F

.field private untilMaintenance:I

.field private voltBatt:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;
    .locals 29

    move-object/from16 v0, p0

    .line 891
    new-instance v27, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;

    move-object/from16 v1, v27

    iget v2, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->voltBatt:F

    iget v3, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->currBatt:F

    iget v4, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->currGen:F

    iget v5, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->currRot:F

    iget v6, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->fuelLevel:F

    iget v7, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->throttle:F

    iget-wide v8, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->runtime:J

    iget v10, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->untilMaintenance:I

    iget v11, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->rectifierTemp:F

    iget v12, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->generatorTemp:F

    iget v13, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiBatt:F

    iget v14, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiRpm:F

    iget v15, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiPw:F

    move-object/from16 v28, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiFuelFlow:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiFuelConsumed:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiBaro:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiMat:F

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiClt:F

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiTps:F

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiExhaustGasTemperature:F

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiIndex:I

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->generatorStatus:I

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiStatus:I

    move/from16 v25, v1

    const/16 v26, 0x0

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;-><init>(FFFFFFJIFFFFFFFFFFFFIIILio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$1;)V

    return-object v27
.end method

.method public final currBatt(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator Battery current."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 605
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->currBatt:F

    return-object p0
.end method

.method public final currGen(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current being produced by generator."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 618
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->currGen:F

    return-object p0
.end method

.method public final currRot(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Load current being consumed by the UAV\n                (sum of curr_gen and curr_batt)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 632
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->currRot:F

    return-object p0
.end method

.method public final efiBaro(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Atmospheric pressure."
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 794
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiBaro:F

    return-object p0
.end method

.method public final efiBatt(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI Supply Voltage."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 729
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiBatt:F

    return-object p0
.end method

.method public final efiClt(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Cylinder Head Temperature."
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 820
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiClt:F

    return-object p0
.end method

.method public final efiExhaustGasTemperature(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Exhaust gas\n                temperature."
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 847
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiExhaustGasTemperature:F

    return-object p0
.end method

.method public final efiFuelConsumed(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel consumed."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 781
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiFuelConsumed:F

    return-object p0
.end method

.method public final efiFuelFlow(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel flow rate in litres/hour."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 768
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiFuelFlow:F

    return-object p0
.end method

.method public final efiIndex(I)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI index."
        position = 0x15
        unitSize = 0x1
    .end annotation

    .line 860
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiIndex:I

    return-object p0
.end method

.method public final efiMat(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Manifold Air Temperature."
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 807
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiMat:F

    return-object p0
.end method

.method public final efiPw(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Injector pulse-width in miliseconds."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 755
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiPw:F

    return-object p0
.end method

.method public final efiRpm(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor RPM."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 742
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiRpm:F

    return-object p0
.end method

.method public final efiStatus(I)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI status."
        position = 0x17
        unitSize = 0x2
    .end annotation

    .line 886
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiStatus:I

    return-object p0
.end method

.method public final efiTps(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle Position."
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 833
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->efiTps:F

    return-object p0
.end method

.method public final fuelLevel(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator fuel remaining in litres."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 645
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->fuelLevel:F

    return-object p0
.end method

.method public final generatorStatus(I)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator status."
        position = 0x16
        unitSize = 0x2
    .end annotation

    .line 873
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->generatorStatus:I

    return-object p0
.end method

.method public final generatorTemp(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The temperature of the mechanical\n                motor, fuel cell core or generator."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 716
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->generatorTemp:F

    return-object p0
.end method

.method public final rectifierTemp(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Temperature of the\n                rectifier."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 702
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->rectifierTemp:F

    return-object p0
.end method

.method public final runtime(J)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds this generator has run since it\n                was rebooted."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 672
    iput-wide p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->runtime:J

    return-object p0
.end method

.method public final throttle(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle Output."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 658
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->throttle:F

    return-object p0
.end method

.method public final untilMaintenance(I)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds until this generator\n                requires maintenance. A negative value indicates maintenance is past due."
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 688
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->untilMaintenance:I

    return-object p0
.end method

.method public final voltBatt(F)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator Battery voltage."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 592
    iput p1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;->voltBatt:F

    return-object p0
.end method
