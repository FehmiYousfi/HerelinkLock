.class public final Lio/dronefleet/mavlink/common/FollowTarget;
.super Ljava/lang/Object;
.source "FollowTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x7f
    description = "Current motion information from a designated system"
    id = 0x90
.end annotation


# instance fields
.field private final acc:[F

.field private final alt:F

.field private final attitudeQ:[F

.field private final customState:Ljava/math/BigInteger;

.field private final estCapabilities:I

.field private final lat:I

.field private final lon:I

.field private final positionCov:[F

.field private final rates:[F

.field private final timestamp:Ljava/math/BigInteger;

.field private final vel:[F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;IIIF[F[F[F[F[FLjava/math/BigInteger;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    .line 49
    iput p2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    .line 50
    iput p3, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

    .line 51
    iput p4, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    .line 52
    iput p5, p0, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    .line 53
    iput-object p6, p0, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    .line 54
    iput-object p7, p0, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    .line 55
    iput-object p8, p0, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    .line 56
    iput-object p9, p0, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    .line 57
    iput-object p10, p0, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    .line 58
    iput-object p11, p0, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;IIIF[F[F[F[F[FLjava/math/BigInteger;Lio/dronefleet/mavlink/common/FollowTarget$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p11}, Lio/dronefleet/mavlink/common/FollowTarget;-><init>(Ljava/math/BigInteger;IIIF[F[F[F[F[FLjava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 66
    new-instance v0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/FollowTarget$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/FollowTarget;
    .locals 12

    .line 263
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 264
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v11

    .line 265
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 266
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 267
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    const/16 v0, 0xc

    .line 268
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v6

    .line 269
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v7

    const/16 v2, 0x10

    .line 270
    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v8

    .line 271
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v9

    .line 272
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v10

    .line 273
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 274
    new-instance p0, Lio/dronefleet/mavlink/common/FollowTarget;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/FollowTarget;-><init>(Ljava/math/BigInteger;IIIF[F[F[F[F[FLjava/math/BigInteger;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/FollowTarget;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x5d

    .line 278
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 280
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 281
    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 283
    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 284
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 285
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 286
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 287
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 288
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    iget p0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final acc()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "linear target acceleration (0,0,0) for\n                unknown"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 156
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    return-object v0
.end method

.method public final alt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 129
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    return v0
.end method

.method public final attitudeQ()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "(1 0 0 0 for unknown)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 169
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    return-object v0
.end method

.method public final customState()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "button states or switches of a tracker\n                device"
        position = 0xb
        unitSize = 0x8
    .end annotation

    .line 208
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

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
    check-cast p1, Lio/dronefleet/mavlink/common/FollowTarget;

    .line 216
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 217
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 218
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 219
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 220
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 221
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 222
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 223
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 224
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 225
    :cond_a
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 226
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

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

.method public final estCapabilities()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "bit positions for tracker reporting\n                capabilities (POS = 0, VEL = 1, ACCEL = 2, ATT + RATES = 3)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 233
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 234
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 235
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 237
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 238
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 239
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 240
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 242
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 243
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

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

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

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

    .line 117
    iget v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    return v0
.end method

.method public final positionCov()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "eph epv"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 195
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    return-object v0
.end method

.method public final rates()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "(0 0 0 for unknown)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 182
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    return-object v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 78
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FollowTarget{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", estCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->estCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->alt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->acc:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attitudeQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->attitudeQ:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->rates:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positionCov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->positionCov:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget;->customState:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vel()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "target velocity (0,0,0) for unknown"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 142
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FollowTarget;->vel:[F

    return-object v0
.end method
