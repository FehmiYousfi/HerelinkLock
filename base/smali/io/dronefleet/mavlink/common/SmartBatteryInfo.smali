.class public final Lio/dronefleet/mavlink/common/SmartBatteryInfo;
.super Ljava/lang/Object;
.source "SmartBatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x4b
    description = "Smart Battery information (static/infrequent update). Use for updates from:\n                smart battery to flight stack, flight stack to GCS. Use BATTERY_STATUS for smart\n                battery frequent updates."
    id = 0x172
.end annotation


# instance fields
.field private final batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final capacityFull:I

.field private final capacityFullSpecification:I

.field private final cellsInSeries:I

.field private final chargingMaximumVoltage:I

.field private final chargingMinimumVoltage:I

.field private final cycleCount:I

.field private final deviceName:Ljava/lang/String;

.field private final dischargeMaximumBurstCurrent:J

.field private final dischargeMaximumCurrent:J

.field private final dischargeMinimumVoltage:I

.field private final id:I

.field private final manufactureDate:Ljava/lang/String;

.field private final restingMinimumVoltage:I

.field private final serialNumber:Ljava/lang/String;

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;"
        }
    .end annotation
.end field

.field private final weight:I


# direct methods
.method private constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIILjava/lang/String;Ljava/lang/String;IIIIIIJJLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIJJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    move-object v1, p2

    .line 69
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    move-object v1, p3

    .line 70
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p4

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    move v1, p5

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    move v1, p6

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    move-object v1, p7

    .line 74
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    move-object v1, p8

    .line 75
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    move v1, p9

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    move v1, p10

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    move v1, p11

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    move v1, p12

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    move/from16 v1, p13

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    move/from16 v1, p14

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    move-wide/from16 v1, p15

    .line 82
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    move-wide/from16 v1, p17

    .line 83
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    move-object/from16 v1, p19

    .line 84
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIILjava/lang/String;Ljava/lang/String;IIIIIIJJLjava/lang/String;Lio/dronefleet/mavlink/common/SmartBatteryInfo$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p19}, Lio/dronefleet/mavlink/common/SmartBatteryInfo;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIILjava/lang/String;Ljava/lang/String;IIIIIIJJLjava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SmartBatteryInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SmartBatteryInfo;
    .locals 21

    move-object/from16 v0, p0

    .line 398
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 399
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 400
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 401
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 402
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 403
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 404
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 405
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 406
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 407
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryType;

    invoke-static {v1, v0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    const/16 v1, 0x10

    .line 408
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x32

    .line 409
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v9

    .line 410
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 411
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 412
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v16

    .line 413
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v18

    const/16 v1, 0xb

    .line 414
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v20

    .line 415
    new-instance v0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/SmartBatteryInfo;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIILjava/lang/String;Ljava/lang/String;IIIIIIJJLjava/lang/String;)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SmartBatteryInfo;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x6d

    .line 419
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 420
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 425
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 429
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 430
    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 431
    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 432
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 434
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 435
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    iget-object p0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final batteryFunction()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Function of\n                the battery"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryFunction;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 118
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final capacityFull()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Capacity when full (accounting\n                for battery degradation), -1: field not provided."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    return v0
.end method

.method public final capacityFullSpecification()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Capacity when full\n                according to manufacturer, -1: field not provided."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 146
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    return v0
.end method

.method public final cellsInSeries()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of battery cells in series. 0: field\n                not provided."
        extension = true
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    return v0
.end method

.method public final chargingMaximumVoltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum per-cell\n                voltage when charged. 0: field not provided."
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    return v0
.end method

.method public final chargingMinimumVoltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum per-cell\n                voltage when charging. If not supplied set to UINT16_MAX value."
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 241
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    return v0
.end method

.method public final cycleCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Charge/discharge cycle count. UINT16_MAX:\n                field not provided."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    return v0
.end method

.method public final deviceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "Static device name in ASCII characters, 0\n                terminated. All 0: field not provided. Encode as manufacturer name then product name\n                separated using an underscore."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 203
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final dischargeMaximumBurstCurrent()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum pack\n                discharge burst current. 0: field not provided."
        extension = true
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 310
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    return-wide v0
.end method

.method public final dischargeMaximumCurrent()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum pack\n                discharge current. 0: field not provided."
        extension = true
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 296
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    return-wide v0
.end method

.method public final dischargeMinimumVoltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum per-cell\n                voltage when discharging. If not supplied set to UINT16_MAX value."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 228
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 332
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;

    .line 333
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 334
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 335
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 336
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 337
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 338
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 339
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 340
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 341
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 342
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 343
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 344
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 345
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 346
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 347
    :cond_f
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 348
    :cond_10
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 349
    :cond_11
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0

    :cond_13
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 356
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 357
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 358
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 361
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 362
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 363
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 364
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 365
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 366
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 369
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 370
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 371
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 372
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final id()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    return v0
.end method

.method public final manufactureDate()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xb
        description = "Manufacture date (DD/MM/YYYY) in ASCII\n                characters, 0 terminated. All 0: field not provided."
        extension = true
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 325
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    return-object v0
.end method

.method public final restingMinimumVoltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum per-cell\n                voltage when resting. If not supplied set to UINT16_MAX value."
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 254
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    return v0
.end method

.method public final serialNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Serial number in ASCII characters, 0\n                terminated. All 0: field not provided."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 187
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartBatteryInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryFunction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capacityFullSpecification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFullSpecification:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capacityFull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->capacityFull:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cycleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cycleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dischargeMinimumVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMinimumVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chargingMinimumVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMinimumVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restingMinimumVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->restingMinimumVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chargingMaximumVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->chargingMaximumVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellsInSeries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->cellsInSeries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dischargeMaximumCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumCurrent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dischargeMaximumBurstCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->dischargeMaximumBurstCurrent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", manufactureDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->manufactureDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type (chemistry) of the\n                battery"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 132
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final weight()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery weight. 0: field not provided."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/SmartBatteryInfo;->weight:I

    return v0
.end method
