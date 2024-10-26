.class public final Lio/dronefleet/mavlink/common/DistanceSensor;
.super Ljava/lang/Object;
.source "DistanceSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x55
    description = "Distance sensor information for an onboard rangefinder."
    id = 0x84
.end annotation


# instance fields
.field private final covariance:I

.field private final currentDistance:I

.field private final horizontalFov:F

.field private final id:I

.field private final maxDistance:I

.field private final minDistance:I

.field private final orientation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private final quaternion:[F

.field private final signalQuality:I

.field private final timeBootMs:J

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final verticalFov:F


# direct methods
.method private constructor <init>(JIIILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;IFF[FI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;IFF[FI)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    .line 54
    iput p3, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    .line 55
    iput p4, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    .line 56
    iput p5, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    .line 57
    iput-object p6, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

    .line 58
    iput p7, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    .line 59
    iput-object p8, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    .line 60
    iput p9, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    .line 61
    iput p10, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    .line 62
    iput p11, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    .line 63
    iput-object p12, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    .line 64
    iput p13, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

    return-void
.end method

.method synthetic constructor <init>(JIIILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;IFF[FILio/dronefleet/mavlink/common/DistanceSensor$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/common/DistanceSensor;-><init>(JIIILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;IFF[FI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 72
    new-instance v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/DistanceSensor;
    .locals 15

    .line 306
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 307
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 308
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 309
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 310
    const-class v0, Lio/dronefleet/mavlink/common/MavDistanceSensor;

    const/4 v6, 0x1

    invoke-static {v0, p0, v6}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v7

    .line 311
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 312
    const-class v0, Lio/dronefleet/mavlink/common/MavSensorOrientation;

    invoke-static {v0, p0, v6}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v9

    .line 313
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 314
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 315
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    const/16 v0, 0x10

    .line 316
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v13

    .line 317
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 318
    new-instance v14, Lio/dronefleet/mavlink/common/DistanceSensor;

    move-object v0, v14

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move v13, p0

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/DistanceSensor;-><init>(JIIILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;IFF[FI)V

    return-object v14
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/DistanceSensor;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x27

    .line 322
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 323
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 324
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 325
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 326
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    const-class v1, Lio/dronefleet/mavlink/common/MavDistanceSensor;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 328
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 329
    const-class v1, Lio/dronefleet/mavlink/common/MavSensorOrientation;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 331
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    iget-object v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 334
    iget p0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final covariance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measurement variance. Max standard\n                deviation is 6cm. 255 if unknown."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    return v0
.end method

.method public final currentDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current distance reading"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 255
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/DistanceSensor;

    .line 256
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 257
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 258
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 259
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 260
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 261
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 262
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 263
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 264
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 265
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 266
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 267
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 274
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 275
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 277
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 278
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 279
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 280
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 281
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 283
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 284
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 285
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final horizontalFov()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal Field of View (angle)\n                where the distance measurement is valid and the field of view is known. Otherwise\n                this is set to 0."
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 195
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    return v0
.end method

.method public final id()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard ID of the sensor"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    return v0
.end method

.method public final maxDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum distance the sensor can\n                measure"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    return v0
.end method

.method public final minDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum distance the sensor can\n                measure"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    return v0
.end method

.method public final orientation()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Direction the\n                sensor faces. downward-facing: ROTATION_PITCH_270, upward-facing: ROTATION_PITCH_90,\n                backward-facing: ROTATION_PITCH_180, forward-facing: ROTATION_NONE, left-facing:\n                ROTATION_YAW_90, right-facing: ROTATION_YAW_270"
        enumType = Lio/dronefleet/mavlink/common/MavSensorOrientation;
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 166
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final quaternion()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion of the sensor orientation in vehicle\n                body frame (w, x, y, z order, zero-rotation is 1, 0, 0, 0). Zero-rotation is along\n                the vehicle body x-axis. This field is required if the orientation is set to\n                MAV_SENSOR_ROTATION_CUSTOM. Set it to 0 if invalid.\""
        extension = true
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 230
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    return-object v0
.end method

.method public final signalQuality()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Signal quality of the sensor.\n                Specific to each sensor type, representing the relation of the signal strength with\n                the target reflectivity, distance, size or aspect, but normalised as a percentage. 0\n                = unknown/unset signal quality, 1 = invalid signal, 100 = perfect signal."
        extension = true
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 85
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistanceSensor{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->minDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->maxDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->currentDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", covariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->covariance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalFov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->horizontalFov:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", verticalFov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", quaternion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->quaternion:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signalQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->signalQuality:I

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
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of distance sensor."
        enumType = Lio/dronefleet/mavlink/common/MavDistanceSensor;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final verticalFov()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical Field of View (angle) where\n                the distance measurement is valid and the field of view is known. Otherwise this is\n                set to 0."
        extension = true
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 211
    iget v0, p0, Lio/dronefleet/mavlink/common/DistanceSensor;->verticalFov:F

    return v0
.end method
