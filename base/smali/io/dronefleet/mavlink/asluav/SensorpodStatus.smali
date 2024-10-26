.class public final Lio/dronefleet/mavlink/asluav/SensorpodStatus;
.super Ljava/lang/Object;
.source "SensorpodStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x36
    description = "Monitoring of sensorpod status"
    id = 0xd3
.end annotation


# instance fields
.field private final cpuTemp:I

.field private final freeSpace:I

.field private final recordingNodesCount:I

.field private final timestamp:Ljava/math/BigInteger;

.field private final visensorRate1:I

.field private final visensorRate2:I

.field private final visensorRate3:I

.field private final visensorRate4:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;IIIIIII)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    .line 43
    iput p2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    .line 44
    iput p3, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    .line 45
    iput p4, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    .line 46
    iput p5, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    .line 47
    iput p6, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    .line 48
    iput p7, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    .line 49
    iput p8, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;IIIIIIILio/dronefleet/mavlink/asluav/SensorpodStatus$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/asluav/SensorpodStatus;-><init>(Ljava/math/BigInteger;IIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 57
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/SensorpodStatus;
    .locals 9

    .line 201
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 202
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 203
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 204
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 205
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 206
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 207
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 208
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 209
    new-instance p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/asluav/SensorpodStatus;-><init>(Ljava/math/BigInteger;IIIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/SensorpodStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    .line 213
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 219
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 221
    iget p0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final cpuTemp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature of sensorpod CPU in"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 142
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 162
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;

    .line 163
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 164
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 165
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 166
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 167
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 168
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 169
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 170
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public final freeSpace()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Free space available in recordings directory in\n                [Gb] * 1e2"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 177
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 182
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final recordingNodesCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of recording nodes"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp in linuxtime (since\n                1.1.1970)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 70
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorpodStatus{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visensorRate1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visensorRate2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visensorRate3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visensorRate4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordingNodesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->recordingNodesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpuTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->cpuTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->freeSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final visensorRate1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 1"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 82
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate1:I

    return v0
.end method

.method public final visensorRate2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 2"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate2:I

    return v0
.end method

.method public final visensorRate3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 3"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate3:I

    return v0
.end method

.method public final visensorRate4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 4"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus;->visensorRate4:I

    return v0
.end method
