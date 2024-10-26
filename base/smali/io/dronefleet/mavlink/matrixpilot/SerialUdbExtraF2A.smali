.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;
.super Ljava/lang/Object;
.source "SerialUdbExtraF2A.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x67
    description = "Backwards compatible MAVLink version of SERIAL_UDB_EXTRA - F2: Format Part\n                A"
    id = 0xaa
.end annotation


# instance fields
.field private final sueAirSpeed3dimu:I

.field private final sueAltitude:I

.field private final sueCog:I

.field private final sueCpuLoad:I

.field private final sueEstimatedWind0:I

.field private final sueEstimatedWind1:I

.field private final sueEstimatedWind2:I

.field private final sueHdop:I

.field private final sueLatitude:I

.field private final sueLongitude:I

.field private final sueMagfieldearth0:I

.field private final sueMagfieldearth1:I

.field private final sueMagfieldearth2:I

.field private final sueRmat0:I

.field private final sueRmat1:I

.field private final sueRmat2:I

.field private final sueRmat3:I

.field private final sueRmat4:I

.field private final sueRmat5:I

.field private final sueRmat6:I

.field private final sueRmat7:I

.field private final sueRmat8:I

.field private final sueSog:I

.field private final sueStatus:I

.field private final sueSvs:I

.field private final sueTime:J

.field private final sueWaypointIndex:I


# direct methods
.method private constructor <init>(JIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 3

    move-object v0, p0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 83
    iput-wide v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    move v1, p3

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    move v1, p4

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    move v1, p5

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    move v1, p6

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    move v1, p7

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    move v1, p8

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    move v1, p9

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    move v1, p10

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    move v1, p11

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    move v1, p12

    .line 93
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    move/from16 v1, p13

    .line 94
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    move/from16 v1, p14

    .line 95
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    move/from16 v1, p15

    .line 96
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    move/from16 v1, p16

    .line 97
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    move/from16 v1, p17

    .line 98
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    move/from16 v1, p18

    .line 99
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    move/from16 v1, p19

    .line 100
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    move/from16 v1, p20

    .line 101
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    move/from16 v1, p21

    .line 102
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    move/from16 v1, p22

    .line 103
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    move/from16 v1, p23

    .line 104
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    move/from16 v1, p24

    .line 105
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    move/from16 v1, p25

    .line 106
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    move/from16 v1, p26

    .line 107
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    move/from16 v1, p27

    .line 108
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    move/from16 v1, p28

    .line 109
    iput v1, v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

    return-void
.end method

.method synthetic constructor <init>(JIIIIIIIIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p28}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;-><init>(JIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 117
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;
    .locals 30

    .line 569
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 570
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 571
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 572
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 573
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 574
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 575
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 576
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 577
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 578
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 579
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 580
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 581
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 582
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 583
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 584
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 585
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 586
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v20

    .line 587
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v21

    .line 588
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v22

    .line 589
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v23

    .line 590
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 591
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v25

    .line 592
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v26

    .line 593
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v27

    .line 594
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v28

    .line 595
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 596
    new-instance v29, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;

    move-object/from16 v0, v29

    invoke-direct/range {v0 .. v28}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;-><init>(JIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-object v29
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x3d

    .line 600
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 601
    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 602
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 603
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 604
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 605
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 606
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 607
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 608
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 609
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 610
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 611
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 612
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 613
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 614
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 615
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 616
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 617
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 618
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 619
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 620
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 621
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 622
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 623
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 624
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 625
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 626
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 627
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

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

    if-eqz p1, :cond_1d

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 473
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;

    .line 474
    iget-wide v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 475
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 476
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 477
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 478
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 479
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 480
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 481
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 482
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 483
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 484
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 485
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 486
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 487
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 488
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 489
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 490
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 491
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 492
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 493
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 494
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 495
    :cond_16
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 496
    :cond_17
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 497
    :cond_18
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 498
    :cond_19
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 499
    :cond_1a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 500
    :cond_1b
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

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

.method public hashCode()I
    .locals 2

    .line 507
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 508
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 509
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 510
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 511
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 512
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 513
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 514
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 515
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 516
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 517
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 518
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 519
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 520
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 521
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 522
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 523
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 524
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 525
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 526
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 527
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 528
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 529
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 530
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 531
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 532
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 533
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueAirSpeed3dimu()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra 3D IMU Air Speed"
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 358
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    return v0
.end method

.method public final sueAltitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Altitude"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    return v0
.end method

.method public final sueCog()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra GPS Course Over Ground"
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 321
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    return v0
.end method

.method public final sueCpuLoad()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra CPU Load"
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 346
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    return v0
.end method

.method public final sueEstimatedWind0()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Estimated Wind 0"
        position = 0x14
        signed = true
        unitSize = 0x2
    .end annotation

    .line 371
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    return v0
.end method

.method public final sueEstimatedWind1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Estimated Wind 1"
        position = 0x15
        signed = true
        unitSize = 0x2
    .end annotation

    .line 384
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    return v0
.end method

.method public final sueEstimatedWind2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Estimated Wind 2"
        position = 0x16
        signed = true
        unitSize = 0x2
    .end annotation

    .line 397
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    return v0
.end method

.method public final sueHdop()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra GPS Horizontal Dilution of\n                Precision"
        position = 0x1b
        signed = true
        unitSize = 0x2
    .end annotation

    .line 466
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

    return v0
.end method

.method public final sueLatitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Latitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    return v0
.end method

.method public final sueLongitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Longitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    return v0
.end method

.method public final sueMagfieldearth0()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Magnetic Field Earth\n                0"
        position = 0x17
        signed = true
        unitSize = 0x2
    .end annotation

    .line 411
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    return v0
.end method

.method public final sueMagfieldearth1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Magnetic Field Earth\n                1"
        position = 0x18
        signed = true
        unitSize = 0x2
    .end annotation

    .line 425
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    return v0
.end method

.method public final sueMagfieldearth2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Magnetic Field Earth\n                2"
        position = 0x19
        signed = true
        unitSize = 0x2
    .end annotation

    .line 439
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    return v0
.end method

.method public final sueRmat0()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 0"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 205
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    return v0
.end method

.method public final sueRmat1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 1"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 218
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    return v0
.end method

.method public final sueRmat2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 2"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 231
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    return v0
.end method

.method public final sueRmat3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 3"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 244
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    return v0
.end method

.method public final sueRmat4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 4"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 257
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    return v0
.end method

.method public final sueRmat5()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 5"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 270
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    return v0
.end method

.method public final sueRmat6()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 6"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 283
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    return v0
.end method

.method public final sueRmat7()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 7"
        position = 0xe
        signed = true
        unitSize = 0x2
    .end annotation

    .line 296
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    return v0
.end method

.method public final sueRmat8()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rmat 8"
        position = 0xf
        signed = true
        unitSize = 0x2
    .end annotation

    .line 309
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    return v0
.end method

.method public final sueSog()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Speed Over Ground"
        position = 0x11
        signed = true
        unitSize = 0x2
    .end annotation

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    return v0
.end method

.method public final sueStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Status"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    return v0
.end method

.method public final sueSvs()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Number of Sattelites in View"
        position = 0x1a
        signed = true
        unitSize = 0x2
    .end annotation

    .line 452
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    return v0
.end method

.method public final sueTime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Time"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 129
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    return-wide v0
.end method

.method public final sueWaypointIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Waypoint Index"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF2A{sueTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sueStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAltitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueWaypointIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueWaypointIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRmat8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueRmat8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueCog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueSog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueCpuLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueCpuLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAirSpeed3dimu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueAirSpeed3dimu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueEstimatedWind0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueEstimatedWind1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueEstimatedWind2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueEstimatedWind2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueMagfieldearth0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueMagfieldearth1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueMagfieldearth2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueMagfieldearth2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueSvs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueSvs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueHdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF2A;->sueHdop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
