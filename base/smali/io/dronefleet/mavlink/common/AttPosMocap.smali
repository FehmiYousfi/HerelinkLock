.class public final Lio/dronefleet/mavlink/common/AttPosMocap;
.super Ljava/lang/Object;
.source "AttPosMocap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x6d
    description = "Motion capture attitude and position"
    id = 0x8a
.end annotation


# instance fields
.field private final covariance:[F

.field private final q:[F

.field private final timeUsec:Ljava/math/BigInteger;

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[FFFF[F)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    .line 38
    iput-object p2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    .line 39
    iput p3, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    .line 40
    iput p4, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    .line 41
    iput p5, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    .line 42
    iput-object p6, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[FFFF[FLio/dronefleet/mavlink/common/AttPosMocap$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/common/AttPosMocap;-><init>(Ljava/math/BigInteger;[FFFF[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AttPosMocap;
    .locals 7

    .line 174
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v0, 0x10

    .line 175
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v2

    .line 176
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 177
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 178
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    const/16 v0, 0x54

    .line 179
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v6

    .line 180
    new-instance p0, Lio/dronefleet/mavlink/common/AttPosMocap;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/AttPosMocap;-><init>(Ljava/math/BigInteger;[FFFF[F)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AttPosMocap;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x78

    .line 184
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget-object p0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    const/16 v1, 0x54

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final covariance()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x15
        description = "Row-major representation of a pose 6x6\n                cross-covariance matrix upper right triangle (states: x, y, z, roll, pitch, yaw;\n                first six entries are the first ROW, next five entries are the second ROW, etc.). If\n                unknown, assign NaN value to first element in the array."
        extension = true
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 134
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AttPosMocap;

    .line 142
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 143
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 144
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 145
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 146
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 147
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 154
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 155
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Attitude quaternion (w, x, y, z order, zero-rotation is\n                1, 0, 0, 0)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 79
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    return-object v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 65
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttPosMocap{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", covariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->covariance:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X position (NED)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->x:F

    return v0
.end method

.method public final y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y position (NED)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 103
    iget v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->y:F

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z position (NED)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/common/AttPosMocap;->z:F

    return v0
.end method
