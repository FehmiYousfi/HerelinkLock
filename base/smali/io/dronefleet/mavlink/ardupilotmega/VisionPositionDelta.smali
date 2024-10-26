.class public final Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;
.super Ljava/lang/Object;
.source "VisionPositionDelta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x6a
    description = "Camera vision based attitude and position deltas."
    id = 0x2b03
.end annotation


# instance fields
.field private final angleDelta:[F

.field private final confidence:F

.field private final positionDelta:[F

.field private final timeDeltaUsec:Ljava/math/BigInteger;

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[F[FF)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    .line 36
    iput-object p2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    .line 37
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    .line 38
    iput-object p4, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    .line 39
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[F[FFLio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[F[FF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 47
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;
    .locals 6

    .line 154
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 155
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v0, 0xc

    .line 156
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v3

    .line 157
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v4

    .line 158
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 159
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[F[FF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2c

    .line 163
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 165
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 167
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final angleDelta()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Defines a rotation vector [roll,\n                pitch, yaw] to the current MAV_FRAME_BODY_FRD from the previous MAV_FRAME_BODY_FRD."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 88
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    return-object v0
.end method

.method public final confidence()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Normalised confidence value from 0 to\n                100."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 117
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;

    .line 125
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 126
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 127
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 128
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 129
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 137
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 138
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 139
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final positionDelta()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Change in position to the current\n                MAV_FRAME_BODY_FRD from the previous FRAME_BODY_FRD rotated to the current\n                MAV_FRAME_BODY_FRD."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    return-object v0
.end method

.method public final timeDeltaUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the last reported\n                camera frame."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 73
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (synced to UNIX time or\n                since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 60
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisionPositionDelta{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeDeltaUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->timeDeltaUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", angleDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->angleDelta:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positionDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->positionDelta:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
