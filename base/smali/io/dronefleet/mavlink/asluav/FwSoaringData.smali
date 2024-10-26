.class public final Lio/dronefleet/mavlink/asluav/FwSoaringData;
.super Ljava/lang/Object;
.source "FwSoaringData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x14
    description = "Fixed-wing soaring (i.e. thermal seeking) data"
    id = 0xd2
.end annotation


# instance fields
.field private final controlmode:I

.field private final debugvar1:F

.field private final debugvar2:F

.field private final disttosoarpoint:F

.field private final loiterdirection:F

.field private final loiterradius:F

.field private final thermalgseast:F

.field private final thermalgsnorth:F

.field private final timestamp:Ljava/math/BigInteger;

.field private final timestampmodechanged:Ljava/math/BigInteger;

.field private final tseDot:F

.field private final valid:I

.field private final varlat:F

.field private final varlon:F

.field private final varr:F

.field private final varw:F

.field private final vsinkexp:F

.field private final xlat:F

.field private final xlon:F

.field private final xr:F

.field private final xw:F

.field private final z1Exp:F

.field private final z1Localupdraftspeed:F

.field private final z2Deltaroll:F

.field private final z2Exp:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FFFFFFFFFFFFFFFFFFFFFII)V
    .locals 2

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    move v1, p3

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    move v1, p4

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    move v1, p5

    .line 83
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    move v1, p6

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    move v1, p7

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    move v1, p8

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    move v1, p9

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    move v1, p10

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    move v1, p11

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    move v1, p12

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    move v1, p13

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    move/from16 v1, p14

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    move/from16 v1, p15

    .line 93
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    move/from16 v1, p16

    .line 94
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    move/from16 v1, p17

    .line 95
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    move/from16 v1, p18

    .line 96
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    move/from16 v1, p19

    .line 97
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    move/from16 v1, p20

    .line 98
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    move/from16 v1, p21

    .line 99
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    move/from16 v1, p22

    .line 100
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    move/from16 v1, p23

    .line 101
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    move/from16 v1, p24

    .line 102
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    move/from16 v1, p25

    .line 103
    iput v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FFFFFFFFFFFFFFFFFFFFFIILio/dronefleet/mavlink/asluav/FwSoaringData$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p25}, Lio/dronefleet/mavlink/asluav/FwSoaringData;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FFFFFFFFFFFFFFFFFFFFFII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 111
    new-instance v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/FwSoaringData;
    .locals 27

    .line 514
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 515
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    .line 516
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 517
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 518
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 519
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 520
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 521
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 522
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 523
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 524
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 525
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 526
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 527
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 528
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 529
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 530
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 531
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 532
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v19

    .line 533
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v20

    .line 534
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v21

    .line 535
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v22

    .line 536
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v23

    .line 537
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 538
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v25

    .line 539
    new-instance v26, Lio/dronefleet/mavlink/asluav/FwSoaringData;

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v25}, Lio/dronefleet/mavlink/asluav/FwSoaringData;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FFFFFFFFFFFFFFFFFFFFFII)V

    return-object v26
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/FwSoaringData;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x66

    .line 543
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 545
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 546
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 547
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 548
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 549
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 550
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 551
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 552
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 553
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 554
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 555
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 556
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 557
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 558
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 559
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 560
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 561
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 562
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 563
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 564
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 565
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 566
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    iget p0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final controlmode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control Mode [-]"
        position = 0x18
        unitSize = 0x1
    .end annotation

    .line 405
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    return v0
.end method

.method public final debugvar1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug variable 1"
        position = 0x16
        unitSize = 0x4
    .end annotation

    .line 381
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    return v0
.end method

.method public final debugvar2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug variable 2"
        position = 0x17
        unitSize = 0x4
    .end annotation

    .line 393
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    return v0
.end method

.method public final disttosoarpoint()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to soar point"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 424
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;

    .line 425
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 426
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 427
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 428
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 429
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 430
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 431
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 432
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 433
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 434
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 435
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 436
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 437
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 438
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 439
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 440
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 441
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 442
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 443
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 444
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 445
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 446
    :cond_16
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 447
    :cond_17
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 448
    :cond_18
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 449
    :cond_19
    iget v2, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    return v0

    :cond_1b
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 456
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 457
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 458
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 459
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 460
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 461
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 462
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 463
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 464
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 465
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 466
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 467
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 468
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 469
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 470
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 471
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 472
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 473
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 474
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 475
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 476
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 477
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 478
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 479
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 480
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final loiterdirection()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Suggested loiter direction"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 256
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    return v0
.end method

.method public final loiterradius()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Suggested loiter radius"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 244
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    return v0
.end method

.method public final thermalgseast()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal drift (from estimator\n                prediction step only)"
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 357
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    return v0
.end method

.method public final thermalgsnorth()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal drift (from estimator\n                prediction step only)"
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 344
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 123
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final timestampmodechanged()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp since last mode\n                change"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FwSoaringData{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampmodechanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->timestampmodechanged:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xlon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", varw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", varr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", varlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", varlon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", loiterradius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterradius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", loiterdirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->loiterdirection:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", disttosoarpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->disttosoarpoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vsinkexp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z1Localupdraftspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z2Deltaroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z1Exp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z2Exp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thermalgsnorth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgsnorth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thermalgseast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->thermalgseast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tseDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", debugvar1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", debugvar2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->debugvar2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", controlmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->controlmode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tseDot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total specific energy change (filtered)"
        position = 0x15
        unitSize = 0x4
    .end annotation

    .line 369
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->tseDot:F

    return v0
.end method

.method public final valid()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data valid [-]"
        position = 0x19
        unitSize = 0x1
    .end annotation

    .line 417
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->valid:I

    return v0
.end method

.method public final varlat()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance Lat"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 220
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlat:F

    return v0
.end method

.method public final varlon()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance Lon"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 232
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varlon:F

    return v0
.end method

.method public final varr()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance R"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 208
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varr:F

    return v0
.end method

.method public final varw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance W"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 196
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->varw:F

    return v0
.end method

.method public final vsinkexp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Expected sink rate at current airspeed,\n                roll and throttle"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 281
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->vsinkexp:F

    return v0
.end method

.method public final xlat()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal center latitude"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 172
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlat:F

    return v0
.end method

.method public final xlon()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal center longitude"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xlon:F

    return v0
.end method

.method public final xr()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal radius"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xr:F

    return v0
.end method

.method public final xw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal core updraft strength"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->xw:F

    return v0
.end method

.method public final z1Exp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Expected measurement 1"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 319
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Exp:F

    return v0
.end method

.method public final z1Localupdraftspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measurement / updraft speed\n                at current/local airplane position"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 294
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z1Localupdraftspeed:F

    return v0
.end method

.method public final z2Deltaroll()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measurement / roll angle tracking\n                error"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 307
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Deltaroll:F

    return v0
.end method

.method public final z2Exp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Expected measurement 2"
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 331
    iget v0, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData;->z2Exp:F

    return v0
.end method
