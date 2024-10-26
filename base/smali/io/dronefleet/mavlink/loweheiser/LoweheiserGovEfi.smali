.class public final Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;
.super Ljava/lang/Object;
.source "LoweheiserGovEfi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc3
    description = "Composite EFI and Governor data from Loweheiser equipment. This message is\n                created by the EFI unit based on its own data and data received from a governor\n                attached to that EFI unit."
    id = 0x27a7
.end annotation


# instance fields
.field private final currBatt:F

.field private final currGen:F

.field private final currRot:F

.field private final efiBaro:F

.field private final efiBatt:F

.field private final efiClt:F

.field private final efiExhaustGasTemperature:F

.field private final efiFuelConsumed:F

.field private final efiFuelFlow:F

.field private final efiIndex:I

.field private final efiMat:F

.field private final efiPw:F

.field private final efiRpm:F

.field private final efiStatus:I

.field private final efiTps:F

.field private final fuelLevel:F

.field private final generatorStatus:I

.field private final generatorTemp:F

.field private final rectifierTemp:F

.field private final runtime:J

.field private final throttle:F

.field private final untilMaintenance:I

.field private final voltBatt:F


# direct methods
.method private constructor <init>(FFFFFFJIFFFFFFFFFFFFIII)V
    .locals 3

    move-object v0, p0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    move v1, p2

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    move v1, p3

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    move v1, p4

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    move v1, p5

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    move v1, p6

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    move-wide v1, p7

    .line 83
    iput-wide v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    move v1, p9

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    move v1, p10

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    move v1, p11

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    move v1, p12

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    move/from16 v1, p13

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    move/from16 v1, p14

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    move/from16 v1, p15

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    move/from16 v1, p16

    .line 91
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    move/from16 v1, p17

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    move/from16 v1, p18

    .line 93
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    move/from16 v1, p19

    .line 94
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    move/from16 v1, p20

    .line 95
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    move/from16 v1, p21

    .line 96
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    move/from16 v1, p22

    .line 97
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    move/from16 v1, p23

    .line 98
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    move/from16 v1, p24

    .line 99
    iput v1, v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    return-void
.end method

.method synthetic constructor <init>(FFFFFFJIFFFFFFFFFFFFIIILio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p24}, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;-><init>(FFFFFFJIFFFFFFFFFFFFIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 107
    new-instance v0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;
    .locals 26

    .line 482
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 483
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 484
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 485
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 486
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 487
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 488
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    .line 489
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 490
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 491
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 492
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 493
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 494
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 495
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 496
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 497
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 498
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 499
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v19

    .line 500
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v20

    .line 501
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v21

    .line 502
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v23

    .line 503
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 504
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v22

    .line 505
    new-instance v25, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v24}, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;-><init>(FFFFFFJIFFFFFFFFFFFFIII)V

    return-object v25
.end method

.method public static serialize(Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x55

    .line 509
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 510
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 511
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 512
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 513
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 514
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 515
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 516
    iget-wide v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 517
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 519
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 520
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 521
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 522
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 523
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 524
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 525
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 526
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 527
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 528
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 530
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 531
    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 532
    iget p0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final currBatt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator Battery current."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 131
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    return v0
.end method

.method public final currGen()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current being produced by generator."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    return v0
.end method

.method public final currRot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Load current being consumed by the UAV\n                (sum of curr_gen and curr_batt)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    return v0
.end method

.method public final efiBaro()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Atmospheric pressure."
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 306
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    return v0
.end method

.method public final efiBatt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI Supply Voltage."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 246
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    return v0
.end method

.method public final efiClt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Cylinder Head Temperature."
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 330
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    return v0
.end method

.method public final efiExhaustGasTemperature()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Exhaust gas\n                temperature."
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 355
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    return v0
.end method

.method public final efiFuelConsumed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel consumed."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 294
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    return v0
.end method

.method public final efiFuelFlow()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fuel flow rate in litres/hour."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    return v0
.end method

.method public final efiIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI index."
        position = 0x15
        unitSize = 0x1
    .end annotation

    .line 367
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    return v0
.end method

.method public final efiMat()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Manifold Air Temperature."
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 318
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    return v0
.end method

.method public final efiPw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Injector pulse-width in miliseconds."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 270
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    return v0
.end method

.method public final efiRpm()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor RPM."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 258
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    return v0
.end method

.method public final efiStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EFI status."
        position = 0x17
        unitSize = 0x2
    .end annotation

    .line 391
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    return v0
.end method

.method public final efiTps()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle Position."
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 342
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_19

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 398
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;

    .line 399
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 400
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 401
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 402
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 403
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 404
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 405
    :cond_7
    iget-wide v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 406
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 407
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 408
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 409
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 410
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 411
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 412
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 413
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 414
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 415
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 416
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 417
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 418
    :cond_14
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 419
    :cond_15
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 420
    :cond_16
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 421
    :cond_17
    iget v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    :cond_18
    return v0

    :cond_19
    :goto_0
    return v1
.end method

.method public final fuelLevel()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator fuel remaining in litres."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    return v0
.end method

.method public final generatorStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator status."
        position = 0x16
        unitSize = 0x2
    .end annotation

    .line 379
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    return v0
.end method

.method public final generatorTemp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The temperature of the mechanical\n                motor, fuel cell core or generator."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 234
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 428
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 429
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 430
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 431
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 432
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 433
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 434
    iget-wide v2, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 435
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 436
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 437
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 438
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 439
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 440
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 441
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 442
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 443
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 444
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 445
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 446
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 447
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 448
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 449
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 450
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final rectifierTemp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Temperature of the\n                rectifier."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    return v0
.end method

.method public final runtime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds this generator has run since it\n                was rebooted."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 193
    iget-wide v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    return-wide v0
.end method

.method public final throttle()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle Output."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoweheiserGovEfi{voltBatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currBatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currBatt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currGen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currGen:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currRot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->currRot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fuelLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->fuelLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", throttle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->throttle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->runtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", untilMaintenance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rectifierTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->rectifierTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", generatorTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiBatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBatt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiRpm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiPw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiPw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiFuelFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelFlow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiFuelConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiFuelConsumed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiBaro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiBaro:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiMat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiMat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiClt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiClt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiTps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiTps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiExhaustGasTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiExhaustGasTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", efiIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generatorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->generatorStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", efiStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->efiStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final untilMaintenance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds until this generator\n                requires maintenance. A negative value indicates maintenance is past due."
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 208
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->untilMaintenance:I

    return v0
.end method

.method public final voltBatt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generator Battery voltage."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 119
    iget v0, p0, Lio/dronefleet/mavlink/loweheiser/LoweheiserGovEfi;->voltBatt:F

    return v0
.end method
