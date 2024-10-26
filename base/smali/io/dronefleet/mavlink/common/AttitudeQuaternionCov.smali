.class public final Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;
.super Ljava/lang/Object;
.source "AttitudeQuaternionCov.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xa7
    description = "The attitude in the aeronautical frame (right-handed, Z-down, X-front,\n                Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero\n                rotation would be expressed as (1 0 0 0)."
    id = 0x3d
.end annotation


# instance fields
.field private final covariance:[F

.field private final pitchspeed:F

.field private final q:[F

.field private final rollspeed:F

.field private final timeUsec:Ljava/math/BigInteger;

.field private final yawspeed:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[FFFF[F)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    .line 41
    iput-object p2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    .line 42
    iput p3, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    .line 43
    iput p4, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    .line 44
    iput p5, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    .line 45
    iput-object p6, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[FFFF[FLio/dronefleet/mavlink/common/AttitudeQuaternionCov$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;-><init>(Ljava/math/BigInteger;[FFFF[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 53
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;
    .locals 7

    .line 176
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v0, 0x10

    .line 177
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v2

    .line 178
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 179
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 180
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    const/16 v0, 0x24

    .line 181
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v6

    .line 182
    new-instance p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;-><init>(Ljava/math/BigInteger;[FFFF[F)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x48

    .line 186
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    iget-object p0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

    const/16 v1, 0x24

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final covariance()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Row-major representation of a 3x3 attitude\n                covariance matrix (states: roll, pitch, yaw; first three entries are the first ROW,\n                next three entries are the second row, etc.). If unknown, assign NaN value to first\n                element in the array."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

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

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;

    .line 144
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 145
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 146
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 147
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 148
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 149
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

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

    .line 156
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pitchspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angular speed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    return v0
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components, w, x, y, z (1 0 0 0 is the\n                null-rotation)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 82
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    return-object v0
.end method

.method public final rollspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angular speed"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 68
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttitudeQuaternionCov{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rollspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->rollspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitchspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->pitchspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", covariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->covariance:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final yawspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angular speed"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;->yawspeed:F

    return v0
.end method
