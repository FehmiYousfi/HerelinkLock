.class public final Lio/dronefleet/mavlink/common/GpsInput;
.super Ljava/lang/Object;
.source "GpsInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GpsInput$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x97
    description = "GPS sensor input message. This is a raw sensor value sent by the GPS. This\n                is NOT the global position estimate of the system."
    id = 0xe8
.end annotation


# instance fields
.field private final alt:F

.field private final fixType:I

.field private final gpsId:I

.field private final hdop:F

.field private final horizAccuracy:F

.field private final ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final lat:I

.field private final lon:I

.field private final satellitesVisible:I

.field private final speedAccuracy:F

.field private final timeUsec:Ljava/math/BigInteger;

.field private final timeWeek:I

.field private final timeWeekMs:J

.field private final vd:F

.field private final vdop:F

.field private final ve:F

.field private final vertAccuracy:F

.field private final vn:F

.field private final yaw:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;JIIIIFFFFFFFFFII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;",
            ">;JIIIIFFFFFFFFFII)V"
        }
    .end annotation

    move-object v0, p0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 70
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    move v1, p2

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    move-object v1, p3

    .line 72
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    move-wide v1, p4

    .line 73
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    move v1, p6

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    move v1, p7

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    move v1, p8

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    move v1, p9

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    move v1, p10

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    move v1, p11

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    move v1, p12

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    move/from16 v1, p13

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    move/from16 v1, p14

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    move/from16 v1, p15

    .line 83
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    move/from16 v1, p16

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    move/from16 v1, p17

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    move/from16 v1, p18

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    move/from16 v1, p19

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    move/from16 v1, p20

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;JIIIIFFFFFFFFFIILio/dronefleet/mavlink/common/GpsInput$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p20}, Lio/dronefleet/mavlink/common/GpsInput;-><init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;JIIIIFFFFFFFFFII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 96
    new-instance v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GpsInput$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GpsInput;
    .locals 22

    .line 420
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 421
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 422
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 423
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 424
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 425
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 426
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 427
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 428
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 429
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 430
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 431
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 432
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 433
    const-class v0, Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;

    const/4 v2, 0x2

    move-object/from16 v7, p0

    invoke-static {v0, v7, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 434
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 435
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 436
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v0

    move v7, v0

    .line 437
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 438
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v20

    .line 439
    new-instance v21, Lio/dronefleet/mavlink/common/GpsInput;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lio/dronefleet/mavlink/common/GpsInput;-><init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;JIIIIFFFFFFFFFII)V

    return-object v21
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GpsInput;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x41

    .line 443
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 446
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 447
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 448
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 449
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 450
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 451
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 452
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 453
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 454
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 455
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 456
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 457
    const-class v1, Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 458
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 459
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 460
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 462
    iget p0, p0, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final alt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 348
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GpsInput;

    .line 349
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 350
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 351
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 352
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 353
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 354
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 355
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 356
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 357
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 358
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 359
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 360
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 361
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 362
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 363
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 364
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 365
    :cond_11
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 366
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 367
    :cond_13
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v1

    :cond_14
    return v0

    :cond_15
    :goto_0
    return v1
.end method

.method public final fixType()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0-1: no fix, 2: 2D fix, 3: 3D fix. 4: 3D with\n                DGPS. 5: 3D with RTK"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    return v0
.end method

.method public final gpsId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the GPS for multiple GPS\n                inputs"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 374
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 375
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 376
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 377
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 378
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 379
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 380
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 381
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 382
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 383
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 384
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 385
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 386
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 387
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 388
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 389
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 390
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 391
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 392
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final hdop()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS HDOP horizontal dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    return v0
.end method

.method public final horizAccuracy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS horizontal accuracy"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 303
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    return v0
.end method

.method public final ignoreFlags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap indicating which GPS input flags fields to ignore. All\n                other fields must be provided."
        enumType = Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 138
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    return v0
.end method

.method public final satellitesVisible()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible."
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 327
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    return v0
.end method

.method public final speedAccuracy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS speed accuracy"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 291
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 111
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final timeWeek()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS week number"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    return v0
.end method

.method public final timeWeekMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS time (from start of GPS\n                week)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 151
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsInput{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->gpsId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeWeekMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeekMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->timeWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fixType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->fixType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->alt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", hdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->hdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speedAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->speedAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", horizAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->horizAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vertAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", satellitesVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->satellitesVisible:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vd()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in down direction in earth-fixed\n                NED frame"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 279
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vd:F

    return v0
.end method

.method public final vdop()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS VDOP vertical dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vdop:F

    return v0
.end method

.method public final ve()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in east direction in earth-fixed\n                NED frame"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 266
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->ve:F

    return v0
.end method

.method public final vertAccuracy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS vertical accuracy"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 315
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vertAccuracy:F

    return v0
.end method

.method public final vn()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in north direction in earth-fixed\n                NED frame"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->vn:F

    return v0
.end method

.method public final yaw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw of vehicle relative to Earth\'s North,\n                zero means not available, use 36000 for north"
        extension = true
        position = 0x14
        unitSize = 0x2
    .end annotation

    .line 341
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsInput;->yaw:I

    return v0
.end method
