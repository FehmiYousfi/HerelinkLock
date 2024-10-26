.class public final Lio/dronefleet/mavlink/common/UtmGlobalPosition;
.super Ljava/lang/Object;
.source "UtmGlobalPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x63
    description = "The global position resulting from GPS and sensor fusion."
    id = 0x154
.end annotation


# instance fields
.field private final alt:I

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmDataAvailFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final flightState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmFlightState;",
            ">;"
        }
    .end annotation
.end field

.field private final hAcc:I

.field private final lat:I

.field private final lon:I

.field private final nextAlt:I

.field private final nextLat:I

.field private final nextLon:I

.field private final relativeAlt:I

.field private final time:Ljava/math/BigInteger;

.field private final uasId:[B

.field private final updateRate:I

.field private final vAcc:I

.field private final velAcc:I

.field private final vx:I

.field private final vy:I

.field private final vz:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "[BIIIIIIIIIIIIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmFlightState;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmDataAvailFlags;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 66
    iput-object v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    move-object v1, p2

    .line 67
    iput-object v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    move v1, p3

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    move v1, p4

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    move v1, p5

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    move v1, p6

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    move v1, p7

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    move v1, p8

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    move v1, p9

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    move v1, p10

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    move v1, p11

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    move v1, p12

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    move v1, p13

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    move/from16 v1, p14

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    move/from16 v1, p15

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    move/from16 v1, p16

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    move-object/from16 v1, p17

    .line 82
    iput-object v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p18

    .line 83
    iput-object v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[BIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/UtmGlobalPosition$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p18}, Lio/dronefleet/mavlink/common/UtmGlobalPosition;-><init>(Ljava/math/BigInteger;[BIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 91
    new-instance v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/UtmGlobalPosition;
    .locals 21

    move-object/from16 v0, p0

    .line 402
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    .line 403
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 404
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 405
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 406
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 407
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 408
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 409
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 410
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 411
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 412
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 413
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 414
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 415
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 416
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    const/16 v1, 0x12

    .line 417
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    .line 418
    const-class v1, Lio/dronefleet/mavlink/common/UtmFlightState;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v18

    .line 419
    const-class v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v19

    .line 420
    new-instance v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;

    move-object v1, v0

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/UtmGlobalPosition;-><init>(Ljava/math/BigInteger;[BIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/UtmGlobalPosition;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x46

    .line 424
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 429
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 430
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 431
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 432
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 434
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 435
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 437
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 438
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 439
    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 440
    iget-object v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    const-class v1, Lio/dronefleet/mavlink/common/UtmFlightState;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 442
    const-class v1, Lio/dronefleet/mavlink/common/UtmDataAvailFlags;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final alt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (WGS84)"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 333
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;

    .line 334
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 335
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 336
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 337
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 338
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 339
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 340
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 341
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 342
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 343
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 344
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 345
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 346
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 347
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 348
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 349
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 350
    :cond_11
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 351
    :cond_12
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

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

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmDataAvailFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitwise\n                OR combination of the data available flags."
        enumType = Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 326
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final flightState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmFlightState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flight state"
        enumType = Lio/dronefleet/mavlink/common/UtmFlightState;
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 312
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final hAcc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position uncertainty (standard\n                deviation)"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 358
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 361
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 362
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 363
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 364
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 365
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 366
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 369
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 370
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 371
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 372
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 373
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 374
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 375
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    return v0
.end method

.method public final nextAlt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Next waypoint, altitude (WGS84)"
        position = 0xf
        signed = true
        unitSize = 0x4
    .end annotation

    .line 286
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    return v0
.end method

.method public final nextLat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Next waypoint, latitude (WGS84)"
        position = 0xd
        signed = true
        unitSize = 0x4
    .end annotation

    .line 260
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    return v0
.end method

.method public final nextLon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Next waypoint, longitude (WGS84)"
        position = 0xe
        signed = true
        unitSize = 0x4
    .end annotation

    .line 273
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    return v0
.end method

.method public final relativeAlt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above ground"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    return v0
.end method

.method public final time()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time of applicability of position\n                (microseconds since UNIX epoch)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtmGlobalPosition{time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->time:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uasId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->alt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", relativeAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->relativeAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->hAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", velAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->nextAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flightState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uasId()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x12
        description = "Unique UAS ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 117
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->uasId:[B

    return-object v0
.end method

.method public final updateRate()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time until next update. Set to 0 if\n                unknown or in data driven mode."
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 299
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->updateRate:I

    return v0
.end method

.method public final vAcc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude uncertainty (standard\n                deviation)"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 234
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vAcc:I

    return v0
.end method

.method public final velAcc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed uncertainty (standard\n                deviation)"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->velAcc:I

    return v0
.end method

.method public final vx()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X speed (latitude, positive north)"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 182
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vx:I

    return v0
.end method

.method public final vy()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y speed (longitude, positive east)"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 195
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vy:I

    return v0
.end method

.method public final vz()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z speed (altitude, positive down)"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 208
    iget v0, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition;->vz:I

    return v0
.end method
