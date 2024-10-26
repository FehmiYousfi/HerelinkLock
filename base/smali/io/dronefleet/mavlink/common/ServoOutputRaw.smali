.class public final Lio/dronefleet/mavlink/common/ServoOutputRaw;
.super Ljava/lang/Object;
.source "ServoOutputRaw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xde
    description = "Superseded by ACTUATOR_OUTPUT_STATUS. The RAW values of the servo outputs\n                (for RC input from the remote, use the RC_CHANNELS messages). The standard PPM\n                modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%."
    id = 0x24
.end annotation


# instance fields
.field private final port:I

.field private final servo10Raw:I

.field private final servo11Raw:I

.field private final servo12Raw:I

.field private final servo13Raw:I

.field private final servo14Raw:I

.field private final servo15Raw:I

.field private final servo16Raw:I

.field private final servo1Raw:I

.field private final servo2Raw:I

.field private final servo3Raw:I

.field private final servo4Raw:I

.field private final servo5Raw:I

.field private final servo6Raw:I

.field private final servo7Raw:I

.field private final servo8Raw:I

.field private final servo9Raw:I

.field private final timeUsec:J


# direct methods
.method private constructor <init>(JIIIIIIIIIIIIIIIII)V
    .locals 3

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 66
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    move v1, p3

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    move v1, p4

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    move v1, p5

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    move v1, p6

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    move v1, p7

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    move v1, p8

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    move v1, p9

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    move v1, p10

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    move v1, p11

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    move v1, p12

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    move/from16 v1, p13

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    move/from16 v1, p14

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    move/from16 v1, p15

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    move/from16 v1, p16

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    move/from16 v1, p17

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    move/from16 v1, p18

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    move/from16 v1, p19

    .line 83
    iput v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    return-void
.end method

.method synthetic constructor <init>(JIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/common/ServoOutputRaw$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p19}, Lio/dronefleet/mavlink/common/ServoOutputRaw;-><init>(JIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 91
    new-instance v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ServoOutputRaw;
    .locals 21

    .line 396
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 397
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 398
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 399
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 400
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 401
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 402
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 403
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 404
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 405
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 406
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 407
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 408
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 409
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 410
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 411
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 412
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 413
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 414
    new-instance v20, Lio/dronefleet/mavlink/common/ServoOutputRaw;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lio/dronefleet/mavlink/common/ServoOutputRaw;-><init>(JIIIIIIIIIIIIIIIII)V

    return-object v20
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ServoOutputRaw;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x25

    .line 418
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 419
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 420
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 425
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 430
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 431
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 432
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 434
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 435
    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    iget p0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 327
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;

    .line 328
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 329
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 330
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 331
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 332
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 333
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 334
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 335
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 336
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 337
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 338
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 339
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 340
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 341
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 342
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 343
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 344
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 345
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public hashCode()I
    .locals 2

    .line 352
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 353
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 354
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 355
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 356
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 357
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 358
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 361
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 362
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 363
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 364
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 365
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 366
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 369
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final port()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output port (set of 8 outputs = 1 port). Flight\n                stacks running on Pixhawk should use: 0 = MAIN, 1 = AUX."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 120
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    return v0
.end method

.method public final servo10Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 10 value"
        extension = true
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 242
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    return v0
.end method

.method public final servo11Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 11 value"
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 255
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    return v0
.end method

.method public final servo12Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 12 value"
        extension = true
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    return v0
.end method

.method public final servo13Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 13 value"
        extension = true
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 281
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    return v0
.end method

.method public final servo14Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 14 value"
        extension = true
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 294
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    return v0
.end method

.method public final servo15Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 15 value"
        extension = true
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 307
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    return v0
.end method

.method public final servo16Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 16 value"
        extension = true
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 320
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    return v0
.end method

.method public final servo1Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 1 value"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    return v0
.end method

.method public final servo2Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 2 value"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 144
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    return v0
.end method

.method public final servo3Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 3 value"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    return v0
.end method

.method public final servo4Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 4 value"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    return v0
.end method

.method public final servo5Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 5 value"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    return v0
.end method

.method public final servo6Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 6 value"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    return v0
.end method

.method public final servo7Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 7 value"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 204
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    return v0
.end method

.method public final servo8Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 8 value"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    return v0
.end method

.method public final servo9Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 9 value"
        extension = true
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 229
    iget v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    return v0
.end method

.method public final timeUsec()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 106
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServoOutputRaw{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->timeUsec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo1Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo1Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo2Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo2Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo3Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo3Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo4Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo4Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo5Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo5Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo6Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo6Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo7Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo7Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo8Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo8Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo9Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo9Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo10Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo10Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo11Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo11Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo12Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo12Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo13Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo13Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo14Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo14Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo15Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo15Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servo16Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw;->servo16Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
