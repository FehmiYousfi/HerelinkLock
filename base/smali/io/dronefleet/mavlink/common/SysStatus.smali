.class public final Lio/dronefleet/mavlink/common/SysStatus;
.super Ljava/lang/Object;
.source "SysStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SysStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x7c
    description = "The general system state. If the system is following the MAVLink standard,\n                the system state is mainly defined by three orthogonal states/modes: The system\n                mode, which is either LOCKED (motors shut down and locked), MANUAL (system under RC\n                control), GUIDED (system with autonomous position control, position setpoint\n                controlled manually) or AUTO (system guided by path/waypoint planner). The NAV_MODE\n                defined the current flight state: LIFTOFF (often an open-loop maneuver), LANDING,\n                WAYPOINTS or VECTOR. This represents the internal navigation state machine. The\n                system status shows whether the system is currently active or not and if an\n                emergency occurred. During the CRITICAL and EMERGENCY states the MAV is still\n                considered to be active, but should start emergency procedures autonomously. After a\n                failure occurred it should first move from active to critical to allow manual\n                intervention and then move to emergency after a certain timeout."
    id = 0x1
.end annotation


# instance fields
.field private final batteryRemaining:I

.field private final currentBattery:I

.field private final dropRateComm:I

.field private final errorsComm:I

.field private final errorsCount1:I

.field private final errorsCount2:I

.field private final errorsCount3:I

.field private final errorsCount4:I

.field private final load:I

.field private final onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final voltageBattery:I


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;IIIIIIIIII)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    .line 78
    iput-object p2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    .line 79
    iput-object p3, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    .line 80
    iput p4, p0, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    .line 81
    iput p5, p0, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    .line 82
    iput p6, p0, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    .line 83
    iput p7, p0, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    .line 84
    iput p8, p0, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    .line 85
    iput p9, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    .line 86
    iput p10, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    .line 87
    iput p11, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    .line 88
    iput p12, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    .line 89
    iput p13, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIILio/dronefleet/mavlink/common/SysStatus$1;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/common/SysStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 97
    new-instance v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SysStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SysStatus;
    .locals 17

    move-object/from16 v0, p0

    .line 337
    const-class v1, Lio/dronefleet/mavlink/common/MavSysStatusSensor;

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 338
    const-class v1, Lio/dronefleet/mavlink/common/MavSysStatusSensor;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 339
    const-class v1, Lio/dronefleet/mavlink/common/MavSysStatusSensor;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 340
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 341
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 342
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 343
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 344
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 345
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 346
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 347
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 348
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 349
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 350
    new-instance v0, Lio/dronefleet/mavlink/common/SysStatus;

    move-object v3, v0

    invoke-direct/range {v3 .. v16}, Lio/dronefleet/mavlink/common/SysStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIII)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SysStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x1f

    .line 354
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 355
    const-class v1, Lio/dronefleet/mavlink/common/MavSysStatusSensor;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 356
    const-class v1, Lio/dronefleet/mavlink/common/MavSysStatusSensor;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 357
    const-class v1, Lio/dronefleet/mavlink/common/MavSysStatusSensor;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 358
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 359
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 360
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 361
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 362
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 363
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 364
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 365
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 366
    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 367
    iget p0, p0, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final batteryRemaining()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery energy remaining, -1:\n                Battery remaining energy not sent by autopilot"
        position = 0x7
        signed = true
        unitSize = 0x1
    .end annotation

    .line 199
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    return v0
.end method

.method public final currentBattery()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery current, -1: Current not\n                sent by autopilot"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 185
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    return v0
.end method

.method public final dropRateComm()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Communication drop rate, (UART,\n                I2C, SPI, CAN), dropped packets on all links (packets that were corrupted on\n                reception on the MAV)"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 283
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SysStatus;

    .line 284
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 285
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 286
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 287
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 288
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 289
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 290
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 291
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 292
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 293
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 294
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 295
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 296
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public final errorsComm()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Communication errors (UART, I2C, SPI, CAN),\n                dropped packets on all links (packets that were corrupted on reception on the MAV)"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 228
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    return v0
.end method

.method public final errorsCount1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    return v0
.end method

.method public final errorsCount2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    return v0
.end method

.method public final errorsCount3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 264
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    return v0
.end method

.method public final errorsCount4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 303
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 304
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 305
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 306
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 307
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 308
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 309
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 310
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 311
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 312
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 313
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 314
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 315
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final load()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum usage in percent of the mainloop\n                time. Values: [0-1000] - should always be below 1000"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    return v0
.end method

.method public final onboardControlSensorsEnabled()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap showing\n                which onboard controllers and sensors are enabled: Value of 0: not enabled. Value of\n                1: enabled."
        enumType = Lio/dronefleet/mavlink/common/MavSysStatusSensor;
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 129
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final onboardControlSensorsHealth()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap showing\n                which onboard controllers and sensors have an error (or are operational). Value of\n                0: error. Value of 1: healthy."
        enumType = Lio/dronefleet/mavlink/common/MavSysStatusSensor;
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 145
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final onboardControlSensorsPresent()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap showing\n                which onboard controllers and sensors are present. Value of 0: not present. Value of\n                1: present."
        enumType = Lio/dronefleet/mavlink/common/MavSysStatusSensor;
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 113
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SysStatus{onboardControlSensorsPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onboardControlSensorsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onboardControlSensorsHealth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", load="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->load:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltageBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->currentBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->batteryRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dropRateComm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->dropRateComm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorsComm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsComm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorsCount1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorsCount2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorsCount3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorsCount4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SysStatus;->errorsCount4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final voltageBattery()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery voltage, UINT16_MAX:\n                Voltage not sent by autopilot"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 171
    iget v0, p0, Lio/dronefleet/mavlink/common/SysStatus;->voltageBattery:I

    return v0
.end method
