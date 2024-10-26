.class public final Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
.super Ljava/lang/Object;
.source "SmartBatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SmartBatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;"
        }
    .end annotation
.end field

.field private capacityFull:I

.field private capacityFullSpecification:I

.field private cellsInSeries:I

.field private chargingMaximumVoltage:I

.field private chargingMinimumVoltage:I

.field private cycleCount:I

.field private deviceName:Ljava/lang/String;

.field private dischargeMaximumBurstCurrent:J

.field private dischargeMaximumCurrent:J

.field private dischargeMinimumVoltage:I

.field private id:I

.field private manufactureDate:Ljava/lang/String;

.field private restingMinimumVoltage:I

.field private serialNumber:Ljava/lang/String;

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;"
        }
    .end annotation
.end field

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final batteryFunction(Lio/dronefleet/mavlink/common/MavBatteryFunction;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0

    .line 507
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Function of\n                the battery"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryFunction;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 499
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final batteryFunction(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;"
        }
    .end annotation

    .line 521
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs batteryFunction([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0

    .line 514
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/SmartBatteryInfo;
    .locals 25

    move-object/from16 v0, p0

    .line 768
    new-instance v22, Lio/dronefleet/mavlink/common/SmartBatteryInfo;

    move-object/from16 v1, v22

    iget v2, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->id:I

    iget-object v3, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->capacityFullSpecification:I

    iget v6, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->capacityFull:I

    iget v7, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->cycleCount:I

    iget-object v8, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->serialNumber:Ljava/lang/String;

    iget-object v9, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->deviceName:Ljava/lang/String;

    iget v10, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->weight:I

    iget v11, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->dischargeMinimumVoltage:I

    iget v12, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->chargingMinimumVoltage:I

    iget v13, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->restingMinimumVoltage:I

    iget v14, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->chargingMaximumVoltage:I

    iget v15, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->cellsInSeries:I

    move-object/from16 v23, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->dischargeMaximumCurrent:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->dischargeMaximumBurstCurrent:J

    move-wide/from16 v18, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->manufactureDate:Ljava/lang/String;

    move-object/from16 v20, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct/range {v1 .. v21}, Lio/dronefleet/mavlink/common/SmartBatteryInfo;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIILjava/lang/String;Ljava/lang/String;IIIIIIJJLjava/lang/String;Lio/dronefleet/mavlink/common/SmartBatteryInfo$1;)V

    return-object v22
.end method

.method public final capacityFull(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Capacity when full (accounting\n                for battery degradation), -1: field not provided."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 586
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->capacityFull:I

    return-object p0
.end method

.method public final capacityFullSpecification(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Capacity when full\n                according to manufacturer, -1: field not provided."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 571
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->capacityFullSpecification:I

    return-object p0
.end method

.method public final cellsInSeries(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of battery cells in series. 0: field\n                not provided."
        extension = true
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 717
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->cellsInSeries:I

    return-object p0
.end method

.method public final chargingMaximumVoltage(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum per-cell\n                voltage when charged. 0: field not provided."
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 702
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->chargingMaximumVoltage:I

    return-object p0
.end method

.method public final chargingMinimumVoltage(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum per-cell\n                voltage when charging. If not supplied set to UINT16_MAX value."
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 673
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->chargingMinimumVoltage:I

    return-object p0
.end method

.method public final cycleCount(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Charge/discharge cycle count. UINT16_MAX:\n                field not provided."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 600
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->cycleCount:I

    return-object p0
.end method

.method public final deviceName(Ljava/lang/String;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "Static device name in ASCII characters, 0\n                terminated. All 0: field not provided. Encode as manufacturer name then product name\n                separated using an underscore."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 632
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final dischargeMaximumBurstCurrent(J)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum pack\n                discharge burst current. 0: field not provided."
        extension = true
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 747
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->dischargeMaximumBurstCurrent:J

    return-object p0
.end method

.method public final dischargeMaximumCurrent(J)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum pack\n                discharge current. 0: field not provided."
        extension = true
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 732
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->dischargeMaximumCurrent:J

    return-object p0
.end method

.method public final dischargeMinimumVoltage(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum per-cell\n                voltage when discharging. If not supplied set to UINT16_MAX value."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 659
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->dischargeMinimumVoltage:I

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 484
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->id:I

    return-object p0
.end method

.method public final manufactureDate(Ljava/lang/String;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xb
        description = "Manufacture date (DD/MM/YYYY) in ASCII\n                characters, 0 terminated. All 0: field not provided."
        extension = true
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 763
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->manufactureDate:Ljava/lang/String;

    return-object p0
.end method

.method public final restingMinimumVoltage(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum per-cell\n                voltage when resting. If not supplied set to UINT16_MAX value."
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 687
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->restingMinimumVoltage:I

    return-object p0
.end method

.method public final serialNumber(Ljava/lang/String;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Serial number in ASCII characters, 0\n                terminated. All 0: field not provided."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 615
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/MavBatteryType;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0

    .line 543
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type (chemistry) of the\n                battery"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 535
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;"
        }
    .end annotation

    .line 557
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0

    .line 550
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final weight(I)Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery weight. 0: field not provided."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 645
    iput p1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;->weight:I

    return-object p0
.end method
