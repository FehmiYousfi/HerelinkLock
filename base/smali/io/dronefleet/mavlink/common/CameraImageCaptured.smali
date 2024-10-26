.class public final Lio/dronefleet/mavlink/common/CameraImageCaptured;
.super Ljava/lang/Object;
.source "CameraImageCaptured.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x85
    description = "Information about a captured image. This is emitted every time a message is\n                captured. It may be re-requested using MAV_CMD_REQUEST_MESSAGE, using param2 to\n                indicate the sequence number for the missing image."
    id = 0x107
.end annotation


# instance fields
.field private final alt:I

.field private final cameraId:I

.field private final captureResult:I

.field private final fileUrl:Ljava/lang/String;

.field private final imageIndex:I

.field private final lat:I

.field private final lon:I

.field private final q:[F

.field private final relativeAlt:I

.field private final timeBootMs:J

.field private final timeUtc:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(JLjava/math/BigInteger;IIIII[FIILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    .line 53
    iput-object p3, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    .line 54
    iput p4, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    .line 55
    iput p5, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    .line 56
    iput p6, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    .line 57
    iput p7, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    .line 58
    iput p8, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    .line 59
    iput-object p9, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    .line 60
    iput p10, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    .line 61
    iput p11, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    .line 62
    iput-object p12, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JLjava/math/BigInteger;IIIII[FIILjava/lang/String;Lio/dronefleet/mavlink/common/CameraImageCaptured$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/common/CameraImageCaptured;-><init>(JLjava/math/BigInteger;IIIII[FIILjava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/CameraImageCaptured;
    .locals 13

    .line 274
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v3

    .line 275
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 276
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 277
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 278
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 279
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/16 v0, 0x10

    .line 280
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v9

    .line 281
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 282
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 283
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v11

    const/16 v0, 0xcd

    .line 284
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v12

    .line 285
    new-instance p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/CameraImageCaptured;-><init>(JLjava/math/BigInteger;IIIII[FIILjava/lang/String;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/CameraImageCaptured;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xff

    .line 289
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 291
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 292
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 300
    iget-object p0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    const/16 v1, 0xcd

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final alt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL) where image was taken"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    return v0
.end method

.method public final cameraId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Deprecated/unused. Component IDs are used to\n                differentiate multiple cameras."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 109
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    return v0
.end method

.method public final captureResult()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Boolean indicating success (1) or failure (0)\n                while capturing this image."
        position = 0xa
        signed = true
        unitSize = 0x1
    .end annotation

    .line 204
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 226
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;

    .line 227
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 228
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 229
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 230
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 231
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 232
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 233
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 234
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 235
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 236
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 237
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v1
.end method

.method public final fileUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xcd
        description = "URL of image taken. Either local storage or\n                http://foo.jpg if camera provides an HTTP interface."
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 219
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 244
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 245
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 246
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 251
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 254
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final imageIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Zero based index of this image (i.e. a new\n                image will have index CAMERA_CAPTURE_STATUS.image count -1)"
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 190
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    return v0
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude where image was taken"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 122
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude where capture was taken"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    return v0
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion of camera orientation (w, x, y, z order,\n                zero-rotation is 1, 0, 0, 0)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 175
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    return-object v0
.end method

.method public final relativeAlt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above ground"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 83
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    return-wide v0
.end method

.method public final timeUtc()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since UNIX epoch) in\n                UTC. 0 for unknown."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 96
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraImageCaptured{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->timeUtc:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->alt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", relativeAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->relativeAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->imageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->captureResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
