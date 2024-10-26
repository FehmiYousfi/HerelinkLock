.class public final Lio/dronefleet/mavlink/ualberta/NavFilterBias;
.super Ljava/lang/Object;
.source "NavFilterBias.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x22
    description = "Accelerometer and Gyro biases from the navigation filter"
    id = 0xdc
.end annotation


# instance fields
.field private final accel0:F

.field private final accel1:F

.field private final accel2:F

.field private final gyro0:F

.field private final gyro1:F

.field private final gyro2:F

.field private final usec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FFFFFF)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    .line 40
    iput p2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    .line 41
    iput p3, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    .line 42
    iput p4, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    .line 43
    iput p5, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    .line 44
    iput p6, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    .line 45
    iput p7, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFFFFFLio/dronefleet/mavlink/ualberta/NavFilterBias$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/ualberta/NavFilterBias;-><init>(Ljava/math/BigInteger;FFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 53
    new-instance v0, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ualberta/NavFilterBias$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ualberta/NavFilterBias;
    .locals 8

    .line 180
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 181
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 182
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 183
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 184
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 185
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 186
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 187
    new-instance p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ualberta/NavFilterBias;-><init>(Ljava/math/BigInteger;FFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ualberta/NavFilterBias;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x20

    .line 191
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 195
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 196
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 197
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    iget p0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final accel0()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[0]"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    return v0
.end method

.method public final accel1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[1]"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 89
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    return v0
.end method

.method public final accel2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[2]"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 101
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 144
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;

    .line 145
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 146
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 147
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 148
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 149
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 150
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 151
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public final gyro0()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[0]"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    return v0
.end method

.method public final gyro1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[1]"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    return v0
.end method

.method public final gyro2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "b_f[2]"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 137
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 158
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavFilterBias{usec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accel0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel0:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accel1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accel2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->accel2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gyro0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro0:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gyro1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gyro2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->gyro2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (microseconds)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 65
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/NavFilterBias;->usec:Ljava/math/BigInteger;

    return-object v0
.end method
