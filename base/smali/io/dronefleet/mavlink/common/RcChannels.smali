.class public final Lio/dronefleet/mavlink/common/RcChannels;
.super Ljava/lang/Object;
.source "RcChannels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/RcChannels$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x76
    description = "The PPM values of the RC channels received. The standard PPM modulation is\n                as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX\n                implies the channel is unused. Individual receivers/transmitters might violate this\n                specification."
    id = 0x41
.end annotation


# instance fields
.field private final chan10Raw:I

.field private final chan11Raw:I

.field private final chan12Raw:I

.field private final chan13Raw:I

.field private final chan14Raw:I

.field private final chan15Raw:I

.field private final chan16Raw:I

.field private final chan17Raw:I

.field private final chan18Raw:I

.field private final chan1Raw:I

.field private final chan2Raw:I

.field private final chan3Raw:I

.field private final chan4Raw:I

.field private final chan5Raw:I

.field private final chan6Raw:I

.field private final chan7Raw:I

.field private final chan8Raw:I

.field private final chan9Raw:I

.field private final chancount:I

.field private final rssi:I

.field private final timeBootMs:J


# direct methods
.method private constructor <init>(JIIIIIIIIIIIIIIIIIIII)V
    .locals 3

    move-object v0, p0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 73
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    move v1, p3

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    move v1, p4

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    move v1, p5

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    move v1, p6

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    move v1, p7

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    move v1, p8

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    move v1, p9

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    move v1, p10

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    move v1, p11

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    move v1, p12

    .line 83
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    move/from16 v1, p13

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    move/from16 v1, p14

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    move/from16 v1, p15

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    move/from16 v1, p16

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    move/from16 v1, p17

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    move/from16 v1, p18

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    move/from16 v1, p19

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    move/from16 v1, p20

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    move/from16 v1, p21

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    move/from16 v1, p22

    .line 93
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    return-void
.end method

.method synthetic constructor <init>(JIIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/common/RcChannels$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p22}, Lio/dronefleet/mavlink/common/RcChannels;-><init>(JIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 101
    new-instance v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/RcChannels$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/RcChannels;
    .locals 24

    .line 445
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 446
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 447
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 448
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 449
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 450
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 451
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 452
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 453
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 454
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 455
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 456
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 457
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 458
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 459
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 460
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 461
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 462
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v20

    .line 463
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v21

    .line 464
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 465
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v22

    .line 466
    new-instance v23, Lio/dronefleet/mavlink/common/RcChannels;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lio/dronefleet/mavlink/common/RcChannels;-><init>(JIIIIIIIIIIIIIIIIIIII)V

    return-object v23
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/RcChannels;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2a

    .line 470
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 471
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 472
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 473
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 474
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 475
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 476
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 477
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 478
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 479
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 480
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 481
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 482
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 483
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 484
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 485
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 486
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 487
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 488
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 489
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 490
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 491
    iget p0, p0, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final chan10Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 10 value."
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    return v0
.end method

.method public final chan11Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 11 value."
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 262
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    return v0
.end method

.method public final chan12Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 12 value."
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 274
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    return v0
.end method

.method public final chan13Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 13 value."
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 286
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    return v0
.end method

.method public final chan14Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 14 value."
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 298
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    return v0
.end method

.method public final chan15Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 15 value."
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 310
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    return v0
.end method

.method public final chan16Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 16 value."
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 322
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    return v0
.end method

.method public final chan17Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 17 value."
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    return v0
.end method

.method public final chan18Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 18 value."
        position = 0x14
        unitSize = 0x2
    .end annotation

    .line 346
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    return v0
.end method

.method public final chan1Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 142
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    return v0
.end method

.method public final chan2Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    return v0
.end method

.method public final chan3Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 166
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    return v0
.end method

.method public final chan4Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    return v0
.end method

.method public final chan5Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 190
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    return v0
.end method

.method public final chan6Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    return v0
.end method

.method public final chan7Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    return v0
.end method

.method public final chan8Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 226
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    return v0
.end method

.method public final chan9Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 9 value."
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    return v0
.end method

.method public final chancount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of RC channels being received. This\n                can be larger than 18, indicating that more channels are available but not given in\n                this message. This value should be 0 when no RC channels are available."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 367
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/RcChannels;

    .line 368
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 369
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 370
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 371
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 372
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 373
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 374
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 375
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 376
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 377
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 378
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 379
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 380
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 381
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 382
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 383
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 384
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 385
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 386
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 387
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 388
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 395
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 396
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 397
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 398
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 399
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 401
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 402
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 403
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 404
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 405
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 406
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 407
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 408
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 409
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 410
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 411
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 412
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 413
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 414
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 415
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final rssi()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive signal strength indicator in device-dependent\n                units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0x15
        unitSize = 0x1
    .end annotation

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 114
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcChannels{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", chancount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chancount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan1Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan1Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan2Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan2Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan3Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan3Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan4Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan4Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan5Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan5Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan6Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan6Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan7Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan7Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan8Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan8Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan9Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan9Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan10Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan10Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan11Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan11Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan12Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan12Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan13Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan13Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan14Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan14Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan15Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan15Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan16Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan16Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan17Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan17Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan18Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->chan18Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannels;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
