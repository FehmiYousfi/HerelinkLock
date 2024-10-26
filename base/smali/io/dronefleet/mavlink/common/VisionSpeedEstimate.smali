.class public final Lio/dronefleet/mavlink/common/VisionSpeedEstimate;
.super Ljava/lang/Object;
.source "VisionSpeedEstimate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xd0
    description = "Speed estimate from a vision source."
    id = 0x67
.end annotation


# instance fields
.field private final covariance:[F

.field private final resetCounter:I

.field private final usec:Ljava/math/BigInteger;

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FFF[FI)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    .line 38
    iput p2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    .line 39
    iput p3, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    .line 40
    iput p4, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    .line 41
    iput-object p5, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

    .line 42
    iput p6, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFF[FILio/dronefleet/mavlink/common/VisionSpeedEstimate$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;-><init>(Ljava/math/BigInteger;FFF[FI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/VisionSpeedEstimate;
    .locals 7

    .line 174
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 175
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 176
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 177
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    const/16 v0, 0x24

    .line 178
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v5

    .line 179
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 180
    new-instance p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;-><init>(Ljava/math/BigInteger;FFF[FI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/VisionSpeedEstimate;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x39

    .line 184
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget-object v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

    const/16 v2, 0x24

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget p0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final covariance()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Row-major representation of 3x3 linear velocity\n                covariance matrix (states: vx, vy, vz; 1st three entries - 1st row, etc.). If\n                unknown, assign NaN value to first element in the array."
        extension = true
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 116
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

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
    check-cast p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;

    .line 142
    iget-object v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 143
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 144
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 145
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 146
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 147
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final resetCounter()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimate reset counter. This should be\n                incremented when the estimate resets in any of the dimensions (position, velocity,\n                attitude, angular speed). This is designed to be used when e.g an external SLAM\n                system detects a loop-closure and the estimate jumps."
        extension = true
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 134
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisionSpeedEstimate{usec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", covariance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->covariance:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resetCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->resetCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX time or time since system\n                boot)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 63
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->usec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global X speed"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->x:F

    return v0
.end method

.method public final y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Y speed"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 87
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->y:F

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Z speed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;->z:F

    return v0
.end method
