.class public final Lio/dronefleet/mavlink/common/EfiStatus;
.super Ljava/lang/Object;
.source "EfiStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xd0
    description = "EFI status output"
    id = 0xe1
.end annotation


# instance fields
.field private final barometricPressure:F

.field private final cylinderHeadTemperature:F

.field private final ecuIndex:F

.field private final engineLoad:F

.field private final exhaustGasTemperature:F

.field private final fuelConsumed:F

.field private final fuelFlow:F

.field private final health:I

.field private final ignitionTiming:F

.field private final ignitionVoltage:F

.field private final injectionTime:F

.field private final intakeManifoldPressure:F

.field private final intakeManifoldTemperature:F

.field private final ptCompensation:F

.field private final rpm:F

.field private final sparkDwellTime:F

.field private final throttleOut:F

.field private final throttlePosition:F


# direct methods
.method private constructor <init>(IFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 64
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    move v1, p2

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    move v1, p3

    .line 66
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    move v1, p4

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    move v1, p5

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    move v1, p6

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    move v1, p7

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    move v1, p8

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    move v1, p9

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    move v1, p10

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    move v1, p11

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    move v1, p12

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    move v1, p13

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    move/from16 v1, p14

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    move/from16 v1, p15

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    move/from16 v1, p16

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    move/from16 v1, p17

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    move/from16 v1, p18

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    return-void
.end method

.method synthetic constructor <init>(IFFFFFFFFFFFFFFFFFLio/dronefleet/mavlink/common/EfiStatus$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p18}, Lio/dronefleet/mavlink/common/EfiStatus;-><init>(IFFFFFFFFFFFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/EfiStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 89
    new-instance v0, Lio/dronefleet/mavlink/common/EfiStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/EfiStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/EfiStatus;
    .locals 20

    .line 390
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 391
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 392
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 393
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 394
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 395
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 396
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 397
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 398
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 399
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 400
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 401
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 402
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 403
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 404
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 405
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 406
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 407
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 408
    new-instance v19, Lio/dronefleet/mavlink/common/EfiStatus;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lio/dronefleet/mavlink/common/EfiStatus;-><init>(IFFFFFFFFFFFFFFFFF)V

    return-object v19
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/EfiStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x45

    .line 412
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 413
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 414
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 415
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 416
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 417
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 418
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 419
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 420
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 425
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 429
    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    iget p0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final barometricPressure()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Barometric pressure"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 197
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    return v0
.end method

.method public final cylinderHeadTemperature()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Cylinder head\n                temperature"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    return v0
.end method

.method public final ecuIndex()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ECU index"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    return v0
.end method

.method public final engineLoad()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Engine load"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 321
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/EfiStatus;

    .line 322
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 323
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 324
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 325
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 326
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 327
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 328
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 329
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 330
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 331
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 332
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 333
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 334
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 335
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 336
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 337
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 338
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 339
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v1

    :cond_13
    return v0

    :cond_14
    :goto_0
    return v1
.end method

.method public final exhaustGasTemperature()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Exhaust gas\n                temperature"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 274
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    return v0
.end method

.method public final fuelConsumed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel consumed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 137
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    return v0
.end method

.method public final fuelFlow()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel flow rate"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 149
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 346
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 347
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 348
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 349
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 350
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 351
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 352
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 353
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 354
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 355
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 356
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 357
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 358
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 361
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 362
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 363
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final health()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI health status"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 101
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    return v0
.end method

.method public final ignitionTiming()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ignition timing (Crank angle\n                degrees)"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    return v0
.end method

.method public final ignitionVoltage()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Supply voltage to EFI sparking\n                system. Zero in this value means \"unknown\", so if the supply voltage really is zero\n                volts use 0.0001 instead."
        extension = true
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 314
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    return v0
.end method

.method public final injectionTime()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Injection time"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    return v0
.end method

.method public final intakeManifoldPressure()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Intake manifold\n                pressure("
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 210
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    return v0
.end method

.method public final intakeManifoldTemperature()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Intake manifold\n                temperature"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    return v0
.end method

.method public final ptCompensation()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pressure/temperature compensation"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 298
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    return v0
.end method

.method public final rpm()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RPM"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    return v0
.end method

.method public final sparkDwellTime()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Spark dwell time"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 185
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    return v0
.end method

.method public final throttleOut()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Output throttle"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 286
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    return v0
.end method

.method public final throttlePosition()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle position"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EfiStatus{health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ecuIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ecuIndex:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->rpm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fuelConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelConsumed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fuelFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->fuelFlow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", engineLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->engineLoad:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", throttlePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttlePosition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sparkDwellTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->sparkDwellTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", barometricPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->barometricPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", intakeManifoldPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", intakeManifoldTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->intakeManifoldTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cylinderHeadTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->cylinderHeadTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ignitionTiming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionTiming:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", injectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->injectionTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", exhaustGasTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->exhaustGasTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", throttleOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->throttleOut:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ptCompensation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ptCompensation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ignitionVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EfiStatus;->ignitionVoltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
