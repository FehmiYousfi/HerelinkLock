.class public final Lio/dronefleet/mavlink/common/ControlSystemState;
.super Ljava/lang/Object;
.source "ControlSystemState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x67
    description = "The smoothed, monotonic system state used to feed the control loops of the\n                system."
    id = 0x92
.end annotation


# instance fields
.field private final airspeed:F

.field private final pitchRate:F

.field private final posVariance:[F

.field private final q:[F

.field private final rollRate:F

.field private final timeUsec:Ljava/math/BigInteger;

.field private final velVariance:[F

.field private final xAcc:F

.field private final xPos:F

.field private final xVel:F

.field private final yAcc:F

.field private final yPos:F

.field private final yVel:F

.field private final yawRate:F

.field private final zAcc:F

.field private final zPos:F

.field private final zVel:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FFFFFFFFFF[F[F[FFFF)V
    .locals 2

    move-object v0, p0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 62
    iput-object v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    move v1, p2

    .line 63
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    move v1, p3

    .line 64
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    move v1, p4

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    move v1, p5

    .line 66
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    move v1, p6

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    move v1, p7

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    move v1, p8

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    move v1, p9

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    move v1, p10

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    move v1, p11

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    move-object v1, p12

    .line 73
    iput-object v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    move-object v1, p13

    .line 74
    iput-object v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    move-object/from16 v1, p14

    .line 75
    iput-object v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    move/from16 v1, p15

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    move/from16 v1, p16

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    move/from16 v1, p17

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFFFFFFFFF[F[F[FFFFLio/dronefleet/mavlink/common/ControlSystemState$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p17}, Lio/dronefleet/mavlink/common/ControlSystemState;-><init>(Ljava/math/BigInteger;FFFFFFFFFF[F[F[FFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ControlSystemState;
    .locals 19

    move-object/from16 v0, p0

    .line 369
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    .line 370
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 371
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 372
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 373
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 374
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 375
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 376
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 377
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 378
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 379
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    const/16 v1, 0xc

    .line 380
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v13

    .line 381
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v14

    const/16 v1, 0x10

    .line 382
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v15

    .line 383
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 384
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 385
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 386
    new-instance v0, Lio/dronefleet/mavlink/common/ControlSystemState;

    move-object v1, v0

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/ControlSystemState;-><init>(Ljava/math/BigInteger;FFFFFFFFFF[F[F[FFFF)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ControlSystemState;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x64

    .line 390
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 394
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 396
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 397
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 399
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 400
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 401
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 403
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 404
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 405
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 406
    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 407
    iget p0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final airspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed, set to -1 if unknown"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 303
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ControlSystemState;

    .line 304
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 305
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 306
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 307
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 308
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 309
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 310
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 311
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 312
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 313
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 314
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 315
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 316
    :cond_d
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 317
    :cond_e
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 318
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 319
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 320
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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
    .locals 2

    .line 327
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 328
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 336
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 337
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 338
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 340
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 341
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 342
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 343
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pitchRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular rate in pitch axis"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 284
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    return v0
.end method

.method public final posVariance()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Variance in local position"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 247
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    return-object v0
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "The attitude, represented as Quaternion"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 260
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    return-object v0
.end method

.method public final rollRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular rate in roll axis"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 272
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 101
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlSystemState{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xVel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yVel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zVel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", airspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->airspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velVariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", posVariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->posVariance:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rollRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->rollRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitchRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->pitchRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final velVariance()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Variance of body velocity estimate"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 234
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->velVariance:[F

    return-object v0
.end method

.method public final xAcc()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration in body frame"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xAcc:F

    return v0
.end method

.method public final xPos()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X position in local frame"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 185
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xPos:F

    return v0
.end method

.method public final xVel()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X velocity in body frame"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 149
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->xVel:F

    return v0
.end method

.method public final yAcc()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration in body frame"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yAcc:F

    return v0
.end method

.method public final yPos()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y position in local frame"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 197
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yPos:F

    return v0
.end method

.method public final yVel()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y velocity in body frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yVel:F

    return v0
.end method

.method public final yawRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular rate in yaw axis"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 296
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->yawRate:F

    return v0
.end method

.method public final zAcc()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration in body frame"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 137
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zAcc:F

    return v0
.end method

.method public final zPos()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z position in local frame"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zPos:F

    return v0
.end method

.method public final zVel()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z velocity in body frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/ControlSystemState;->zVel:F

    return v0
.end method
