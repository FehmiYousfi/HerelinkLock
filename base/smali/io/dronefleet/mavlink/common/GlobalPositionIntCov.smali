.class public final Lio/dronefleet/mavlink/common/GlobalPositionIntCov;
.super Ljava/lang/Object;
.source "GlobalPositionIntCov.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x77
    description = "The filtered global position (e.g. fused GPS and accelerometers). The\n                position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer\n                message since the resolution of float is not sufficient. NOTE: This message is\n                intended for onboard networks / companion computers and higher-bandwidth links and\n                optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message\n                for a minimal subset."
    id = 0x3f
.end annotation


# instance fields
.field private final alt:I

.field private final covariance:[F

.field private final estimatorType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;"
        }
    .end annotation
.end field

.field private final lat:I

.field private final lon:I

.field private final relativeAlt:I

.field private final timeUsec:Ljava/math/BigInteger;

.field private final vx:F

.field private final vy:F

.field private final vz:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFF[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;IIIIFFF[F)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    .line 59
    iput-object p2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 60
    iput p3, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    .line 61
    iput p4, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

    .line 62
    iput p5, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    .line 63
    iput p6, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    .line 64
    iput p7, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    .line 65
    iput p8, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    .line 66
    iput p9, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    .line 67
    iput-object p10, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFF[FLio/dronefleet/mavlink/common/GlobalPositionIntCov$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFF[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov;
    .locals 11

    .line 262
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 263
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 264
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 265
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 266
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 267
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 268
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 269
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    const/16 v0, 0x90

    .line 270
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v10

    .line 271
    const-class v0, Lio/dronefleet/mavlink/common/MavEstimatorType;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    .line 272
    new-instance p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFF[F)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GlobalPositionIntCov;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xb5

    .line 276
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 278
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 280
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 281
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 283
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 284
    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 285
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    const/16 v2, 0x90

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 286
    const-class v1, Lio/dronefleet/mavlink/common/MavEstimatorType;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final alt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude in meters above MSL"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    return v0
.end method

.method public final covariance()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x24
        description = "Row-major representation of a 6x6 position and\n                velocity 6x6 cross-covariance matrix (states: lat, lon, alt, vx, vy, vz; first six\n                entries are the first ROW, next six entries are the second row, etc.). If unknown,\n                assign NaN value to first element in the array."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 210
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 217
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;

    .line 218
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 219
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 220
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 221
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 222
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 223
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 224
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 225
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 226
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 227
    :cond_a
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public final estimatorType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Class id of the\n                estimator this estimate originated from."
        enumType = Lio/dronefleet/mavlink/common/MavEstimatorType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 234
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 235
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 237
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 242
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 243
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 117
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

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

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 90
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalPositionIntCov{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", estimatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->alt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", relativeAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->relativeAlt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", covariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->covariance:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vx()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X Speed (Latitude)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vx:F

    return v0
.end method

.method public final vy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y Speed (Longitude)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vy:F

    return v0
.end method

.method public final vz()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z Speed (Altitude)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;->vz:F

    return v0
.end method
