.class public final Lio/dronefleet/mavlink/common/HilState;
.super Ljava/lang/Object;
.source "HilState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/HilState$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb7
    description = "Sent from simulation to autopilot. This packet is useful for high\n                throughput applications such as hardware in the loop simulations."
    id = 0x5a
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final alt:I

.field private final lat:I

.field private final lon:I

.field private final pitch:F

.field private final pitchspeed:F

.field private final roll:F

.field private final rollspeed:F

.field private final timeUsec:Ljava/math/BigInteger;

.field private final vx:I

.field private final vy:I

.field private final vz:I

.field private final xacc:I

.field private final yacc:I

.field private final yaw:F

.field private final yawspeed:F

.field private final zacc:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FFFFFFIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 64
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    move v1, p2

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->roll:F

    move v1, p3

    .line 66
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    move v1, p4

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    move v1, p5

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    move v1, p6

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    move v1, p7

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    move v1, p8

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->lat:I

    move v1, p9

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->lon:I

    move v1, p10

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->alt:I

    move v1, p11

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->vx:I

    move v1, p12

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->vy:I

    move v1, p13

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->vz:I

    move/from16 v1, p14

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    move/from16 v1, p15

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    move/from16 v1, p16

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFFFFFIIIIIIIIILio/dronefleet/mavlink/common/HilState$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p16}, Lio/dronefleet/mavlink/common/HilState;-><init>(Ljava/math/BigInteger;FFFFFFIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/HilState$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 87
    new-instance v0, Lio/dronefleet/mavlink/common/HilState$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/HilState$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/HilState;
    .locals 18

    .line 362
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 363
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 364
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 365
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 366
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 367
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 368
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 369
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 370
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 371
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 372
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 373
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 374
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 375
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 376
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 377
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 378
    new-instance v17, Lio/dronefleet/mavlink/common/HilState;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lio/dronefleet/mavlink/common/HilState;-><init>(Ljava/math/BigInteger;FFFFFFIIIIIIIII)V

    return-object v17
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/HilState;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x38

    .line 382
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 384
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->roll:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 386
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 389
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 390
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 391
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->alt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->vx:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 394
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->vy:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->vz:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 396
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 397
    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    iget p0, p0, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final alt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude"
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->alt:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 299
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/HilState;

    .line 300
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 301
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->roll:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->roll:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 302
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 303
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 304
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 305
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 306
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 307
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 308
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 309
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->alt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->alt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 310
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->vx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->vx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 311
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->vy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->vy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 312
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->vz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->vz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 313
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 314
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 315
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 322
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 323
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->roll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 324
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 325
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 326
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 327
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 328
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->alt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->vx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->vy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->vz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 336
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 337
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 201
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->lon:I

    return v0
.end method

.method public final pitch()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    return v0
.end method

.method public final pitchspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame pitch / theta angular\n                speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    return v0
.end method

.method public final roll()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 114
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->roll:F

    return v0
.end method

.method public final rollspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame roll / phi angular speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 150
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 102
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HilState{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilState;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rollspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->rollspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitchspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->pitchspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->alt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->vx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->vy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->vz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xacc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yacc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zacc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vx()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X Speed (Latitude)"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->vx:I

    return v0
.end method

.method public final vy()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y Speed (Longitude)"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->vy:I

    return v0
.end method

.method public final vz()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z Speed (Altitude)"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->vz:I

    return v0
.end method

.method public final xacc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 266
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->xacc:I

    return v0
.end method

.method public final yacc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration"
        position = 0x10
        signed = true
        unitSize = 0x2
    .end annotation

    .line 279
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->yacc:I

    return v0
.end method

.method public final yaw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->yaw:F

    return v0
.end method

.method public final yawspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame yaw / psi angular speed"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->yawspeed:F

    return v0
.end method

.method public final zacc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration"
        position = 0x11
        signed = true
        unitSize = 0x2
    .end annotation

    .line 292
    iget v0, p0, Lio/dronefleet/mavlink/common/HilState;->zacc:I

    return v0
.end method
