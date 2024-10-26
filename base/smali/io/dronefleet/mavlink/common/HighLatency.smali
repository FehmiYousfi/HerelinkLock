.class public final Lio/dronefleet/mavlink/common/HighLatency;
.super Ljava/lang/Object;
.source "HighLatency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/HighLatency$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x96
    description = "Message appropriate for high latency connections like Iridium"
    id = 0xea
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final airspeed:I

.field private final airspeedSp:I

.field private final altitudeAmsl:I

.field private final altitudeSp:I

.field private final baseMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final batteryRemaining:I

.field private final climbRate:I

.field private final customMode:J

.field private final failsafe:I

.field private final gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsNsat:I

.field private final groundspeed:I

.field private final heading:I

.field private final headingSp:I

.field private final landedState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation
.end field

.field private final latitude:I

.field private final longitude:I

.field private final pitch:I

.field private final roll:I

.field private final temperature:I

.field private final temperatureAir:I

.field private final throttle:I

.field private final wpDistance:I

.field private final wpNum:I


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;IIIIIIIIIIIIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;IIIIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 83
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    move-wide v1, p2

    .line 84
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p5

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    move v1, p6

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    move v1, p7

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    move v1, p8

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    move v1, p9

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    move v1, p10

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    move v1, p11

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    move v1, p12

    .line 93
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    move/from16 v1, p13

    .line 94
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    move/from16 v1, p14

    .line 95
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    move/from16 v1, p15

    .line 96
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    move/from16 v1, p16

    .line 97
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    move/from16 v1, p17

    .line 98
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    move/from16 v1, p18

    .line 99
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    move-object/from16 v1, p19

    .line 100
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p20

    .line 101
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    move/from16 v1, p21

    .line 102
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    move/from16 v1, p22

    .line 103
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    move/from16 v1, p23

    .line 104
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    move/from16 v1, p24

    .line 105
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    move/from16 v1, p25

    .line 106
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIIIIILio/dronefleet/mavlink/common/HighLatency$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p25}, Lio/dronefleet/mavlink/common/HighLatency;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 114
    new-instance v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/HighLatency$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/HighLatency;
    .locals 28

    move-object/from16 v0, p0

    .line 519
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 520
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 521
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 522
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 523
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 524
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 525
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 526
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 527
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 528
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v26

    .line 529
    const-class v1, Lio/dronefleet/mavlink/minimal/MavModeFlag;

    const/4 v15, 0x1

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    .line 530
    const-class v1, Lio/dronefleet/mavlink/common/MavLandedState;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 531
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 532
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    move-object/from16 v27, v2

    move v2, v15

    move v15, v1

    .line 533
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 534
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 535
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 536
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 537
    const-class v1, Lio/dronefleet/mavlink/common/GpsFixType;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v20

    .line 538
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v21

    .line 539
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v22

    .line 540
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v23

    .line 541
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 542
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v25

    .line 543
    new-instance v0, Lio/dronefleet/mavlink/common/HighLatency;

    move-object v1, v0

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v26}, Lio/dronefleet/mavlink/common/HighLatency;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIIIII)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/HighLatency;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x28

    .line 547
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 548
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 549
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 550
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 551
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 552
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 553
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 554
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 555
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 556
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 557
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 558
    const-class v1, Lio/dronefleet/mavlink/minimal/MavModeFlag;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 559
    const-class v1, Lio/dronefleet/mavlink/common/MavLandedState;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 560
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 561
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 562
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 563
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 564
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 565
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 566
    const-class v1, Lio/dronefleet/mavlink/common/GpsFixType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 570
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 571
    iget p0, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final airspeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "airspeed"
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 284
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    return v0
.end method

.method public final airspeedSp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "airspeed setpoint"
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 296
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    return v0
.end method

.method public final altitudeAmsl()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above mean sea level"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 258
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    return v0
.end method

.method public final altitudeSp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude setpoint relative to the\n                home position"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 272
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    return v0
.end method

.method public final baseMode()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of\n                enabled system modes."
        enumType = Lio/dronefleet/mavlink/minimal/MavModeFlag;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 128
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final batteryRemaining()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining battery\n                (percentage)"
        position = 0x14
        unitSize = 0x1
    .end annotation

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    return v0
.end method

.method public final climbRate()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "climb rate"
        position = 0x11
        signed = true
        unitSize = 0x1
    .end annotation

    .line 321
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    return v0
.end method

.method public final customMode()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield for use for\n                autopilot-specific flags."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 141
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 432
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/HighLatency;

    .line 433
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 434
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 435
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 436
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 437
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 438
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 439
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 440
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 441
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 442
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 443
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 444
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 445
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 446
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 447
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 448
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 449
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 450
    :cond_12
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 451
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 452
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 453
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 454
    :cond_16
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 455
    :cond_17
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 456
    :cond_18
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v1

    :cond_19
    return v0

    :cond_1a
    :goto_0
    return v1
.end method

.method public final failsafe()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "failsafe (each bit represents a failsafe where\n                0=ok, 1=failsafe active (bit0:RC, bit1:batt, bit2:GPS, bit3:GCS, bit4:fence)"
        position = 0x17
        unitSize = 0x1
    .end annotation

    .line 401
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    return v0
.end method

.method public final gpsFixType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS Fix type."
        enumType = Lio/dronefleet/mavlink/common/GpsFixType;
        position = 0x13
        unitSize = 0x1
    .end annotation

    .line 347
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final gpsNsat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If unknown, set to\n                255"
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    return v0
.end method

.method public final groundspeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "groundspeed"
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 308
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 463
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 464
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 465
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 466
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 467
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 468
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 469
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 470
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 471
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 472
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 473
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 474
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 475
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 476
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 477
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 478
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 479
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 480
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 481
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 482
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 483
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 484
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 485
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 486
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final heading()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "heading"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 193
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    return v0
.end method

.method public final headingSp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "heading setpoint"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    return v0
.end method

.method public final landedState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The landed state. Is\n                set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown."
        enumType = Lio/dronefleet/mavlink/common/MavLandedState;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 155
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final latitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 232
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    return v0
.end method

.method public final longitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 245
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    return v0
.end method

.method public final pitch()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "pitch"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    return v0
.end method

.method public final roll()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "roll"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    return v0
.end method

.method public final temperature()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot temperature (degrees C)"
        position = 0x15
        signed = true
        unitSize = 0x1
    .end annotation

    .line 373
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    return v0
.end method

.method public final temperatureAir()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Air temperature (degrees C)\n                from airspeed sensor"
        position = 0x16
        signed = true
        unitSize = 0x1
    .end annotation

    .line 387
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    return v0
.end method

.method public final throttle()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "throttle (percentage)"
        position = 0x8
        signed = true
        unitSize = 0x1
    .end annotation

    .line 206
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HighLatency{baseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->customMode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", landedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->roll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->pitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->heading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", throttle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->throttle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headingSp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->headingSp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitudeAmsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeAmsl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitudeSp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->altitudeSp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeedSp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->airspeedSp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groundspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->groundspeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", climbRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->climbRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsNsat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsNsat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsFixType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->batteryRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temperatureAir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->temperatureAir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failsafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->failsafe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wpNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wpDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wpDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "distance to target"
        position = 0x19
        unitSize = 0x2
    .end annotation

    .line 425
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpDistance:I

    return v0
.end method

.method public final wpNum()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "current waypoint number"
        position = 0x18
        unitSize = 0x1
    .end annotation

    .line 413
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency;->wpNum:I

    return v0
.end method
