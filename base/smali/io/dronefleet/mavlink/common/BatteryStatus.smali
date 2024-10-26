.class public final Lio/dronefleet/mavlink/common/BatteryStatus;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x9a
    description = "Battery information"
    id = 0x93
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

.field private final batteryRemaining:I

.field private final chargeState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryChargeState;",
            ">;"
        }
    .end annotation
.end field

.field private final currentBattery:I

.field private final currentConsumed:I

.field private final energyConsumed:I

.field private final faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFault;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryMode;",
            ">;"
        }
    .end annotation
.end field

.field private final temperature:I

.field private final timeRemaining:I

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;"
        }
    .end annotation
.end field

.field private final voltages:[I

.field private final voltagesExt:[I


# direct methods
.method private constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I[IIIIIILio/dronefleet/mavlink/util/EnumValue;[ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;I[IIIIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryChargeState;",
            ">;[I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryMode;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFault;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    .line 59
    iput-object p2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    .line 60
    iput-object p3, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    .line 61
    iput p4, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    .line 62
    iput-object p5, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    .line 63
    iput p6, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    .line 64
    iput p7, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    .line 65
    iput p8, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    .line 66
    iput p9, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    .line 67
    iput p10, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    .line 68
    iput-object p11, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    .line 69
    iput-object p12, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    .line 70
    iput-object p13, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    .line 71
    iput-object p14, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I[IIIIIILio/dronefleet/mavlink/util/EnumValue;[ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/BatteryStatus$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p14}, Lio/dronefleet/mavlink/common/BatteryStatus;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I[IIIIIILio/dronefleet/mavlink/util/EnumValue;[ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 79
    new-instance v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/BatteryStatus;
    .locals 17

    move-object/from16 v0, p0

    .line 365
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 366
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 367
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/16 v1, 0x14

    .line 368
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v5

    .line 369
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 370
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 371
    const-class v2, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    .line 372
    const-class v9, Lio/dronefleet/mavlink/common/MavBatteryType;

    invoke-static {v9, v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v9

    .line 373
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 374
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 375
    const-class v12, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    invoke-static {v12, v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v12

    const/16 v13, 0x8

    .line 376
    invoke-static {v0, v13}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v13

    .line 377
    const-class v14, Lio/dronefleet/mavlink/common/MavBatteryMode;

    invoke-static {v14, v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v14

    .line 378
    const-class v3, Lio/dronefleet/mavlink/common/MavBatteryFault;

    const/4 v15, 0x4

    invoke-static {v3, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v15

    .line 379
    new-instance v16, Lio/dronefleet/mavlink/common/BatteryStatus;

    move-object/from16 v0, v16

    move-object v3, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-direct/range {v0 .. v14}, Lio/dronefleet/mavlink/common/BatteryStatus;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I[IIIIIILio/dronefleet/mavlink/util/EnumValue;[ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object v16
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/BatteryStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x36

    .line 383
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 384
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 386
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 389
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 390
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryFunction;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 391
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 393
    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 394
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryChargeState;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_2
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 396
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryMode;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_3
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 397
    const-class v1, Lio/dronefleet/mavlink/common/MavBatteryFault;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_4
    const/4 p0, 0x4

    invoke-static {v1, v3, p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

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

    .line 105
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final batteryRemaining()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining battery energy.\n                Values: [0-100], -1: autopilot does not estimate the remaining battery."
        position = 0x9
        signed = true
        unitSize = 0x1
    .end annotation

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    return v0
.end method

.method public final chargeState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryChargeState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "State for\n                extent of discharge, provided by autopilot for warning or external reactions"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryChargeState;
        extension = true
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 246
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final currentBattery()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery current, -1: autopilot\n                does not measure the current"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    return v0
.end method

.method public final currentConsumed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Consumed charge, -1: autopilot\n                does not provide consumption estimate"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 187
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    return v0
.end method

.method public final energyConsumed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Consumed energy, -1: autopilot\n                does not provide energy consumption estimate"
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 201
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 308
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/BatteryStatus;

    .line 309
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 310
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 311
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 312
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 313
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 314
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 315
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 316
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 317
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 318
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 319
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 320
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 321
    :cond_d
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 322
    :cond_e
    iget-object v2, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v1

    :cond_f
    return v0

    :cond_10
    :goto_0
    return v1
.end method

.method public final faultBitmask()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFault;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fault/health indications. These should be set when charge_state is\n                MAV_BATTERY_CHARGE_STATE_FAILED or MAV_BATTERY_CHARGE_STATE_UNHEALTHY (if not, fault\n                reporting is not supported)."
        enumType = Lio/dronefleet/mavlink/common/MavBatteryFault;
        extension = true
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 301
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 336
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 337
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 338
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 340
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 341
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 342
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    return v0
.end method

.method public final mode()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryMode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery mode. Default (0) is\n                that battery mode reporting is not supported or battery is in normal-use mode."
        enumType = Lio/dronefleet/mavlink/common/MavBatteryMode;
        extension = true
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 283
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final temperature()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature of the battery.\n                INT16_MAX for unknown temperature."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 133
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    return v0
.end method

.method public final timeRemaining()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining battery time, 0:\n                autopilot does not provide remaining battery time estimate"
        extension = true
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 231
    iget v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryStatus{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryFunction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->currentConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", energyConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->energyConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->batteryRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->timeRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chargeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voltagesExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", faultBitmask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 119
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final voltages()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Battery voltage of cells 1 to 10\n                (see voltages_ext for cells 11-14). Cells in this field above the valid cell count\n                for this battery should have the UINT16_MAX value. If individual cell voltages are\n                unknown or not measured for this battery, then the overall battery voltage should be\n                filled in cell 0, with all others set to UINT16_MAX. If the voltage of the battery\n                is greater than (UINT16_MAX - 1), then cell 0 should be set to (UINT16_MAX - 1), and\n                cell 1 to the remaining voltage. This can be extended to multiple cells if the total\n                voltage is greater than 2 * (UINT16_MAX - 1)."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 159
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltages:[I

    return-object v0
.end method

.method public final voltagesExt()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Battery voltages for cells 11\n                to 14. Cells above the valid cell count for this battery should have a value of 0,\n                where zero indicates not supported (note, this is different than for the voltages\n                field and allows empty byte truncation). If the measured value is 0 then 1 should be\n                sent instead."
        extension = true
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 267
    iget-object v0, p0, Lio/dronefleet/mavlink/common/BatteryStatus;->voltagesExt:[I

    return-object v0
.end method
