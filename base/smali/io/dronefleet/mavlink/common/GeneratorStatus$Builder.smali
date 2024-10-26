.class public final Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
.super Ljava/lang/Object;
.source "GeneratorStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GeneratorStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batCurrentSetpoint:F

.field private batteryCurrent:F

.field private busVoltage:F

.field private generatorSpeed:I

.field private generatorTemperature:I

.field private loadCurrent:F

.field private powerGenerated:F

.field private rectifierTemperature:I

.field private runtime:J

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;",
            ">;"
        }
    .end annotation
.end field

.field private timeUntilMaintenance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final batCurrentSetpoint(F)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The target battery current.\n                Positive for out. Negative for in. NaN: field not provided"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 464
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->batCurrentSetpoint:F

    return-object p0
.end method

.method public final batteryCurrent(F)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current into/out of battery.\n                Positive for out. Negative for in. NaN: field not provided."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->batteryCurrent:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GeneratorStatus;
    .locals 15

    .line 516
    new-instance v14, Lio/dronefleet/mavlink/common/GeneratorStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->generatorSpeed:I

    iget v3, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->batteryCurrent:F

    iget v4, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->loadCurrent:F

    iget v5, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->powerGenerated:F

    iget v6, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->busVoltage:F

    iget v7, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->rectifierTemperature:I

    iget v8, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->batCurrentSetpoint:F

    iget v9, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->generatorTemperature:I

    iget-wide v10, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->runtime:J

    iget v12, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->timeUntilMaintenance:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/GeneratorStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;IFFFFIFIJILio/dronefleet/mavlink/common/GeneratorStatus$1;)V

    return-object v14
.end method

.method public final busVoltage(F)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Voltage of the bus seen at the\n                generator, or battery bus if battery bus is controlled by generator and at a\n                different voltage to main bus."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 435
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->busVoltage:F

    return-object p0
.end method

.method public final generatorSpeed(I)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed of electrical generator\n                or alternator. UINT16_MAX: field not provided."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 375
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->generatorSpeed:I

    return-object p0
.end method

.method public final generatorTemperature(I)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The temperature of the\n                mechanical motor, fuel cell core or generator. INT16_MAX: field not provided."
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 480
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->generatorTemperature:I

    return-object p0
.end method

.method public final loadCurrent(F)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current going to the UAV. If battery\n                current not available this is the DC current from the generator. Positive for out.\n                Negative for in. NaN: field not provided"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 405
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->loadCurrent:F

    return-object p0
.end method

.method public final powerGenerated(F)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The power being generated. NaN:\n                field not provided"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 419
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->powerGenerated:F

    return-object p0
.end method

.method public final rectifierTemperature(I)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The temperature of the\n                rectifier or power converter. INT16_MAX: field not provided."
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 450
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->rectifierTemperature:I

    return-object p0
.end method

.method public final runtime(J)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds this generator has run since it\n                was rebooted. UINT32_MAX: field not provided."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 494
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->runtime:J

    return-object p0
.end method

.method public final status(Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0

    .line 348
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status flags."
        enumType = Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 340
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;"
        }
    .end annotation

    .line 362
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0

    .line 355
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeUntilMaintenance(I)Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds until this\n                generator requires maintenance. A negative value indicates maintenance is past-due.\n                INT32_MAX: field not provided."
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 511
    iput p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;->timeUntilMaintenance:I

    return-object p0
.end method
