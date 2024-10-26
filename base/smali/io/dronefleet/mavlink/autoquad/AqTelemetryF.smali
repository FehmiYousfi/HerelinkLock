.class public final Lio/dronefleet/mavlink/autoquad/AqTelemetryF;
.super Ljava/lang/Object;
.source "AqTelemetryF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf1
    description = "Sends up to 20 raw float values."
    id = 0x96
.end annotation


# instance fields
.field private final index:I

.field private final value1:F

.field private final value10:F

.field private final value11:F

.field private final value12:F

.field private final value13:F

.field private final value14:F

.field private final value15:F

.field private final value16:F

.field private final value17:F

.field private final value18:F

.field private final value19:F

.field private final value2:F

.field private final value20:F

.field private final value3:F

.field private final value4:F

.field private final value5:F

.field private final value6:F

.field private final value7:F

.field private final value8:F

.field private final value9:F


# direct methods
.method private constructor <init>(IFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    move v1, p2

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    move v1, p3

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    move v1, p4

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    move v1, p5

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    move v1, p6

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    move v1, p7

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    move v1, p8

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    move v1, p9

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    move v1, p10

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    move v1, p11

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    move v1, p12

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    move v1, p13

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    move/from16 v1, p14

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    move/from16 v1, p15

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    move/from16 v1, p16

    .line 83
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    move/from16 v1, p17

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    move/from16 v1, p18

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    move/from16 v1, p19

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    move/from16 v1, p20

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    move/from16 v1, p21

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    return-void
.end method

.method synthetic constructor <init>(IFFFFFFFFFFFFFFFFFFFFLio/dronefleet/mavlink/autoquad/AqTelemetryF$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p21}, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;-><init>(IFFFFFFFFFFFFFFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 96
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/autoquad/AqTelemetryF;
    .locals 23

    .line 433
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 434
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 435
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 436
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 437
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 438
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 439
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 440
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 441
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 442
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 443
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 444
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 445
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 446
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 447
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 448
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 449
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 450
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v19

    .line 451
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v20

    .line 452
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v21

    .line 453
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 454
    new-instance v22, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;-><init>(IFFFFFFFFFFFFFFFFFFFF)V

    return-object v22
.end method

.method public static serialize(Lio/dronefleet/mavlink/autoquad/AqTelemetryF;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x52

    .line 458
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 459
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 460
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 461
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 462
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 463
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 464
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 465
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 466
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 467
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 468
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 469
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 470
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 471
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 472
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 473
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 474
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 475
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 476
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 477
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 478
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 479
    iget p0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 355
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;

    .line 356
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 357
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 358
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 359
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 360
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 361
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 362
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 363
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 364
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 365
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 366
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 367
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 368
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 369
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 370
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 371
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 372
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 373
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 374
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 375
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 376
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0

    :cond_17
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 383
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 384
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 385
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 386
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 387
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 388
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 389
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 390
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 391
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 392
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 393
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 394
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 395
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 396
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 397
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 398
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 399
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 401
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 402
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 403
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final index()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of message"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 108
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AqTelemetryF{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value13="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value14="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value15="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value17="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value18="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value19="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value1"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 120
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value1:F

    return v0
.end method

.method public final value10()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value10"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 228
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value10:F

    return v0
.end method

.method public final value11()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value11"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value11:F

    return v0
.end method

.method public final value12()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value12"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value12:F

    return v0
.end method

.method public final value13()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value13"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 264
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value13:F

    return v0
.end method

.method public final value14()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value14"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value14:F

    return v0
.end method

.method public final value15()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value15"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 288
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value15:F

    return v0
.end method

.method public final value16()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value16"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 300
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value16:F

    return v0
.end method

.method public final value17()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value17"
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 312
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value17:F

    return v0
.end method

.method public final value18()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value18"
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 324
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value18:F

    return v0
.end method

.method public final value19()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value19"
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 336
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value19:F

    return v0
.end method

.method public final value2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value2"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value2:F

    return v0
.end method

.method public final value20()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value20"
        position = 0x15
        unitSize = 0x4
    .end annotation

    .line 348
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value20:F

    return v0
.end method

.method public final value3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value3"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 144
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value3:F

    return v0
.end method

.method public final value4()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value4"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value4:F

    return v0
.end method

.method public final value5()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value5"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value5:F

    return v0
.end method

.method public final value6()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value6"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value6:F

    return v0
.end method

.method public final value7()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value7"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value7:F

    return v0
.end method

.method public final value8()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value8"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 204
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value8:F

    return v0
.end method

.method public final value9()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value9"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;->value9:F

    return v0
.end method
