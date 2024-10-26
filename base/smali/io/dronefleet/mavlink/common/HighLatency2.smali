.class public final Lio/dronefleet/mavlink/common/HighLatency2;
.super Ljava/lang/Object;
.source "HighLatency2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb3
    description = "Message appropriate for high latency connections like Iridium (version 2)"
    id = 0xeb
.end annotation


# instance fields
.field private final airspeed:I

.field private final airspeedSp:I

.field private final altitude:I

.field private final autopilot:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;"
        }
    .end annotation
.end field

.field private final battery:I

.field private final climbRate:I

.field private final custom0:I

.field private final custom1:I

.field private final custom2:I

.field private final customMode:I

.field private final eph:I

.field private final epv:I

.field private final failureFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/HlFailureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final groundspeed:I

.field private final heading:I

.field private final latitude:I

.field private final longitude:I

.field private final targetAltitude:I

.field private final targetDistance:I

.field private final targetHeading:I

.field private final temperatureAir:I

.field private final throttle:I

.field private final timestamp:J

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;"
        }
    .end annotation
.end field

.field private final windHeading:I

.field private final windspeed:I

.field private final wpNum:I


# direct methods
.method private constructor <init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;IIIIIIIIIIIIIIIIIIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/HlFailureFlag;",
            ">;III)V"
        }
    .end annotation

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 87
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    move-object v1, p3

    .line 88
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    move-object v1, p4

    .line 89
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p5

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    move v1, p6

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    move v1, p7

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    move v1, p8

    .line 93
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    move v1, p9

    .line 94
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    move v1, p10

    .line 95
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    move v1, p11

    .line 96
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    move v1, p12

    .line 97
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    move/from16 v1, p13

    .line 98
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    move/from16 v1, p14

    .line 99
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    move/from16 v1, p15

    .line 100
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    move/from16 v1, p16

    .line 101
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    move/from16 v1, p17

    .line 102
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    move/from16 v1, p18

    .line 103
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    move/from16 v1, p19

    .line 104
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    move/from16 v1, p20

    .line 105
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    move/from16 v1, p21

    .line 106
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    move/from16 v1, p22

    .line 107
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    move/from16 v1, p23

    .line 108
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    move/from16 v1, p24

    .line 109
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    move-object/from16 v1, p25

    .line 110
    iput-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p26

    .line 111
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    move/from16 v1, p27

    .line 112
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    move/from16 v1, p28

    .line 113
    iput v1, v0, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

    return-void
.end method

.method synthetic constructor <init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIILio/dronefleet/mavlink/common/HighLatency2$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p28}, Lio/dronefleet/mavlink/common/HighLatency2;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;III)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 121
    new-instance v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/HighLatency2;
    .locals 30

    move-object/from16 v0, p0

    .line 572
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 573
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 574
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 575
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 576
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 577
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 578
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 579
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v25

    .line 580
    const-class v1, Lio/dronefleet/mavlink/common/HlFailureFlag;

    const/4 v4, 0x2

    invoke-static {v1, v0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v26

    .line 581
    const-class v1, Lio/dronefleet/mavlink/minimal/MavType;

    const/4 v5, 0x1

    invoke-static {v1, v0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 582
    const-class v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    invoke-static {v1, v0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 583
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 584
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 585
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 586
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 587
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 588
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 589
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 590
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 591
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v20

    .line 592
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v21

    .line 593
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v22

    .line 594
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v23

    .line 595
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 596
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v27

    .line 597
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v28

    .line 598
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v29

    .line 599
    new-instance v0, Lio/dronefleet/mavlink/common/HighLatency2;

    move-object v1, v0

    invoke-direct/range {v1 .. v29}, Lio/dronefleet/mavlink/common/HighLatency2;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;III)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/HighLatency2;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x2a

    .line 603
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 604
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 605
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 606
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 607
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 608
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 609
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 610
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 611
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 612
    const-class v1, Lio/dronefleet/mavlink/common/HlFailureFlag;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 613
    const-class v1, Lio/dronefleet/mavlink/minimal/MavType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 614
    const-class v1, Lio/dronefleet/mavlink/minimal/MavAutopilot;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 615
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 616
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 617
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 618
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 619
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 620
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 621
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 622
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 623
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 624
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 625
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 626
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 627
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 628
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 629
    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 630
    iget p0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final airspeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 289
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    return v0
.end method

.method public final airspeedSp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed setpoint"
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 301
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    return v0
.end method

.method public final altitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above mean sea level"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    return v0
.end method

.method public final autopilot()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot type / class. Use\n                MAV_AUTOPILOT_INVALID for components that are not flight controllers."
        enumType = Lio/dronefleet/mavlink/minimal/MavAutopilot;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 163
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final battery()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery level (-1 if field not\n                provided)."
        position = 0x16
        signed = true
        unitSize = 0x1
    .end annotation

    .line 405
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    return v0
.end method

.method public final climbRate()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum climb rate magnitude since\n                last message"
        position = 0x15
        signed = true
        unitSize = 0x1
    .end annotation

    .line 391
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    return v0
.end method

.method public final custom0()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Field for custom payload."
        position = 0x19
        signed = true
        unitSize = 0x1
    .end annotation

    .line 443
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    return v0
.end method

.method public final custom1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Field for custom payload."
        position = 0x1a
        signed = true
        unitSize = 0x1
    .end annotation

    .line 456
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    return v0
.end method

.method public final custom2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Field for custom payload."
        position = 0x1b
        signed = true
        unitSize = 0x1
    .end annotation

    .line 469
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

    return v0
.end method

.method public final customMode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield for use for\n                autopilot-specific flags (2 byte version)."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    return v0
.end method

.method public final eph()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum error horizontal position since last\n                message"
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 350
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    return v0
.end method

.method public final epv()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum error vertical position since last\n                message"
        position = 0x13
        unitSize = 0x1
    .end annotation

    .line 363
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 476
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/HighLatency2;

    .line 477
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 478
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 479
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 480
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 481
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 482
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 483
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 484
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 485
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 486
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 487
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 488
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 489
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 490
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 491
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 492
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 493
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 494
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 495
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 496
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 497
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 498
    :cond_16
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 499
    :cond_17
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 500
    :cond_18
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 501
    :cond_19
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 502
    :cond_1a
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 503
    :cond_1b
    iget v2, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    return v1

    :cond_1c
    return v0

    :cond_1d
    :goto_0
    return v1
.end method

.method public final failureFlags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/HlFailureFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of failure flags."
        enumType = Lio/dronefleet/mavlink/common/HlFailureFlag;
        position = 0x18
        unitSize = 0x2
    .end annotation

    .line 430
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final groundspeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Groundspeed"
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 313
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 510
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 511
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 512
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 513
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 514
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 515
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 516
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 517
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 518
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 519
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 520
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 521
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 522
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 523
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 524
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 525
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 526
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 527
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 528
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 529
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 530
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 531
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 532
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 533
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 534
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 535
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 536
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

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
        description = "Heading"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    return v0
.end method

.method public final latitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    return v0
.end method

.method public final longitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    return v0
.end method

.method public final targetAltitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude setpoint"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 228
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    return v0
.end method

.method public final targetDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to target waypoint or\n                position"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 265
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    return v0
.end method

.method public final targetHeading()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heading setpoint"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    return v0
.end method

.method public final temperatureAir()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Air temperature from airspeed\n                sensor"
        position = 0x14
        signed = true
        unitSize = 0x1
    .end annotation

    .line 377
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    return v0
.end method

.method public final throttle()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle"
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 277
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    return v0
.end method

.method public final timestamp()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (milliseconds since boot or\n                Unix epoch)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 134
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HighLatency2{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autopilot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->customMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetAltitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->heading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetHeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetHeading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->targetDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", throttle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->throttle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeedSp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->airspeedSp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groundspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->groundspeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windHeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->eph:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", epv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->epv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temperatureAir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->temperatureAir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", climbRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->climbRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wpNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", custom0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", custom1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", custom2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HighLatency2;->custom2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of the MAV (quadrotor,\n                helicopter, etc.)"
        enumType = Lio/dronefleet/mavlink/minimal/MavType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 148
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final windHeading()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind heading"
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 337
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windHeading:I

    return v0
.end method

.method public final windspeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Windspeed"
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 325
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->windspeed:I

    return v0
.end method

.method public final wpNum()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current waypoint number"
        position = 0x17
        unitSize = 0x2
    .end annotation

    .line 417
    iget v0, p0, Lio/dronefleet/mavlink/common/HighLatency2;->wpNum:I

    return v0
.end method
