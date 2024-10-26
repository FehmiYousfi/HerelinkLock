.class public final Lio/dronefleet/mavlink/common/RcChannelsOverride;
.super Ljava/lang/Object;
.source "RcChannelsOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x7c
    description = "The RAW values of the RC channels sent to the MAV to override info received\n                from the RC radio. The standard PPM modulation is as follows: 1000 microseconds: 0%,\n                2000 microseconds: 100%. Individual receivers/transmitters might violate this\n                specification. Note carefully the semantic differences between the first 8 channels\n                and the subsequent channels"
    id = 0x46
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

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IIIIIIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    move v1, p2

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    move v1, p3

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    move v1, p4

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    move v1, p5

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    move v1, p6

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    move v1, p7

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    move v1, p8

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    move v1, p9

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    move v1, p10

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    move v1, p11

    .line 83
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    move v1, p12

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    move v1, p13

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    move/from16 v1, p14

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    move/from16 v1, p15

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    move/from16 v1, p16

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    move/from16 v1, p17

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    move/from16 v1, p18

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    move/from16 v1, p19

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    move/from16 v1, p20

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/common/RcChannelsOverride$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p20}, Lio/dronefleet/mavlink/common/RcChannelsOverride;-><init>(IIIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 100
    new-instance v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/RcChannelsOverride;
    .locals 22

    .line 486
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 487
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 488
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 489
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 490
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 491
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 492
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 493
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 494
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 495
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 496
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 497
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 498
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 499
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 500
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 501
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 502
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 503
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 504
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 505
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v20

    .line 506
    new-instance v21, Lio/dronefleet/mavlink/common/RcChannelsOverride;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lio/dronefleet/mavlink/common/RcChannelsOverride;-><init>(IIIIIIIIIIIIIIIIIIII)V

    return-object v21
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/RcChannelsOverride;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x26

    .line 510
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 511
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 512
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 513
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 514
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 515
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 516
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 517
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 519
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 520
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 521
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 522
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 523
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 524
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 525
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 526
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 527
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 528
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 530
    iget p0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final chan10Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 10 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    return v0
.end method

.method public final chan11Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 11 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 292
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    return v0
.end method

.method public final chan12Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 12 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 308
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    return v0
.end method

.method public final chan13Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 13 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 324
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    return v0
.end method

.method public final chan14Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 14 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 340
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    return v0
.end method

.method public final chan15Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 15 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 356
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    return v0
.end method

.method public final chan16Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 16 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 372
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    return v0
.end method

.method public final chan17Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 17 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x14
        unitSize = 0x2
    .end annotation

    .line 388
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    return v0
.end method

.method public final chan18Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 18 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x15
        unitSize = 0x2
    .end annotation

    .line 404
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    return v0
.end method

.method public final chan1Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 139
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    return v0
.end method

.method public final chan2Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    return v0
.end method

.method public final chan3Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    return v0
.end method

.method public final chan4Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    return v0
.end method

.method public final chan5Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 199
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    return v0
.end method

.method public final chan6Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    return v0
.end method

.method public final chan7Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 229
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    return v0
.end method

.method public final chan8Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 244
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    return v0
.end method

.method public final chan9Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 9 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 260
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 410
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 411
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;

    .line 412
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 413
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 414
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 415
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 416
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 417
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 418
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 419
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 420
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 421
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 422
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 423
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 424
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 425
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 426
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 427
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 428
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 429
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 430
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 431
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    :cond_15
    return v0

    :cond_16
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 438
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 439
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 440
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 441
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 442
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 443
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 444
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 445
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 446
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 447
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 448
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 449
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 450
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 451
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 452
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 453
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 454
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 455
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 456
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 457
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcChannelsOverride{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan1Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan1Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan2Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan2Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan3Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan3Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan4Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan4Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan5Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan5Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan6Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan6Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan7Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan7Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan8Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan8Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan9Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan9Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan10Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan10Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan11Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan11Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan12Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan12Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan13Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan13Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan14Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan14Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan15Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan15Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan16Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan16Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan17Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan17Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan18Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride;->chan18Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
