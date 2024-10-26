.class public final Lio/dronefleet/mavlink/common/ObstacleDistance;
.super Ljava/lang/Object;
.source "ObstacleDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x17
    description = "Obstacle distances in front of the sensor, starting from the left in\n                increment degrees to the right"
    id = 0x14a
.end annotation


# instance fields
.field private final angleOffset:F

.field private final distances:[I

.field private final frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final increment:I

.field private final incrementF:F

.field private final maxDistance:I

.field private final minDistance:I

.field private final sensorType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;[IIIIFFLio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;[IIIIFF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    .line 50
    iput-object p2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 51
    iput-object p3, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    .line 52
    iput p4, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    .line 53
    iput p5, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    .line 54
    iput p6, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    .line 55
    iput p7, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    .line 56
    iput p8, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    .line 57
    iput-object p9, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;[IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ObstacleDistance$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p9}, Lio/dronefleet/mavlink/common/ObstacleDistance;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;[IIIIFFLio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 65
    new-instance v0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ObstacleDistance;
    .locals 11

    .line 257
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v0, 0x90

    .line 258
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v3

    .line 259
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 260
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 261
    const-class v0, Lio/dronefleet/mavlink/common/MavDistanceSensor;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 262
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 263
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 264
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 265
    const-class v0, Lio/dronefleet/mavlink/common/MavFrame;

    invoke-static {v0, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 266
    new-instance v10, Lio/dronefleet/mavlink/common/ObstacleDistance;

    move-object v0, v10

    move-object v2, v4

    move v4, v7

    move v7, v8

    move v8, v9

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/ObstacleDistance;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;[IIIIFFLio/dronefleet/mavlink/util/EnumValue;)V

    return-object v10
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ObstacleDistance;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0xa7

    .line 270
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 272
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    const/16 v2, 0x90

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 273
    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 274
    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 275
    const-class v1, Lio/dronefleet/mavlink/common/MavDistanceSensor;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 276
    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 277
    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 278
    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

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
.method public final angleOffset()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Relative angle offset of the 0-index\n                element in the distances array. Value of 0 corresponds to forward. Positive is\n                clockwise direction, negative is counter-clockwise."
        extension = true
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    return v0
.end method

.method public final distances()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x48
        description = "Distance of obstacles around the\n                vehicle with index 0 corresponding to north + angle_offset, unless otherwise\n                specified in the frame. A value of 0 is valid and means that the obstacle is\n                practically touching the sensor. A value of max_distance +1 means no obstacle is\n                present. A value of UINT16_MAX for unknown/not used. In a array element, one unit\n                corresponds to 1cm."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 115
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 215
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ObstacleDistance;

    .line 216
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 217
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 218
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 219
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 220
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 221
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 222
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 223
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 224
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public final frame()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame of reference for\n                the yaw rotation and offset of the sensor data. Defaults to MAV_FRAME_GLOBAL, which\n                is north aligned. For body-mounted sensors use MAV_FRAME_BODY_FRD, which is vehicle\n                front aligned."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        extension = true
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 208
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 231
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 232
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 233
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 234
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 235
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 237
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 239
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final increment()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular width in degrees of each\n                array element. Increment direction is clockwise. This field is ignored if\n                increment_f is non-zero."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    return v0
.end method

.method public final incrementF()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular width in degrees of each\n                array element as a float. If non-zero then this value is used instead of the uint8_t\n                increment field. Positive is clockwise direction, negative is counter-clockwise."
        extension = true
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    return v0
.end method

.method public final maxDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum distance the sensor can\n                measure."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    return v0
.end method

.method public final minDistance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum distance the sensor can\n                measure."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    return v0
.end method

.method public final sensorType()Lio/dronefleet/mavlink/util/EnumValue;
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
        description = "Class id of the\n                distance sensor type."
        enumType = Lio/dronefleet/mavlink/common/MavDistanceSensor;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 94
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 80
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObstacleDistance{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->distances:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", increment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->increment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->minDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->maxDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", incrementF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->incrementF:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angleOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->angleOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
