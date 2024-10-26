.class public final Lio/dronefleet/mavlink/common/ActuatorControlTarget;
.super Ljava/lang/Object;
.source "ActuatorControlTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ActuatorControlTarget$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb5
    description = "Set the vehicle attitude and body angular rates."
    id = 0x8c
.end annotation


# instance fields
.field private final controls:[F

.field private final groupMlx:I

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;I[F)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    .line 31
    iput p2, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    .line 32
    iput-object p3, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;I[FLio/dronefleet/mavlink/common/ActuatorControlTarget$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/common/ActuatorControlTarget;-><init>(Ljava/math/BigInteger;I[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ActuatorControlTarget$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/ActuatorControlTarget$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ActuatorControlTarget$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ActuatorControlTarget;
    .locals 3

    .line 121
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    .line 122
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v1

    .line 123
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 124
    new-instance v2, Lio/dronefleet/mavlink/common/ActuatorControlTarget;

    invoke-direct {v2, v0, p0, v1}, Lio/dronefleet/mavlink/common/ActuatorControlTarget;-><init>(Ljava/math/BigInteger;I[F)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ActuatorControlTarget;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x29

    .line 128
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    iget p0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final controls()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Actuator controls. Normed to -1..+1 where 0 is\n                neutral position. Throttle for single rotation direction motors is 0..1, negative\n                range for reverse direction. Standard mapping for attitude controls (group 0):\n                (index 0-7): roll, pitch, yaw, throttle, flaps, spoilers, airbrakes, landing gear.\n                Load a pass-through mixer to repurpose them as generic outputs."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 90
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ActuatorControlTarget;

    .line 98
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 99
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 100
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final groupMlx()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Actuator group. The \"_mlx\" indicates this is a\n                multi-instance message and a MAVLink parser should use this field to difference\n                between instances."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 70
    iget v0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 107
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 108
    iget v0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 109
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 55
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActuatorControlTarget{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupMlx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->groupMlx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", controls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorControlTarget;->controls:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
