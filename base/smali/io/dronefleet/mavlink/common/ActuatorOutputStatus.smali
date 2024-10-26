.class public final Lio/dronefleet/mavlink/common/ActuatorOutputStatus;
.super Ljava/lang/Object;
.source "ActuatorOutputStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xfb
    description = "The raw values of the actuator outputs (e.g. on Pixhawk, from MAIN, AUX\n                ports). This message supersedes SERVO_OUTPUT_RAW."
    id = 0x177
.end annotation


# instance fields
.field private final active:J

.field private final actuator:[F

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;J[F)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    .line 33
    iput-wide p2, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    .line 34
    iput-object p4, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;J[FLio/dronefleet/mavlink/common/ActuatorOutputStatus$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;-><init>(Ljava/math/BigInteger;J[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 42
    new-instance v0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ActuatorOutputStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ActuatorOutputStatus;
    .locals 4

    .line 111
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 112
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const/16 v3, 0x80

    .line 113
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object p0

    .line 114
    new-instance v3, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;-><init>(Ljava/math/BigInteger;J[F)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ActuatorOutputStatus;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x8c

    .line 118
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    iget-object p0, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final active()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Active outputs"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 66
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    return-wide v0
.end method

.method public final actuator()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Servo / motor output array values. Zero values\n                indicate unused channels."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 80
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;

    .line 88
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 89
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 90
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

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

.method public hashCode()I
    .locals 4

    .line 97
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 98
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 99
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 54
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActuatorOutputStatus{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->active:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", actuator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ActuatorOutputStatus;->actuator:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
