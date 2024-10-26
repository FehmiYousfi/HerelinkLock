.class public final Lio/dronefleet/mavlink/common/CameraCaptureStatus;
.super Ljava/lang/Object;
.source "CameraCaptureStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc
    description = "Information about the status of a capture. Can be requested with a\n                MAV_CMD_REQUEST_MESSAGE command."
    id = 0x106
.end annotation


# instance fields
.field private final availableCapacity:F

.field private final imageCount:I

.field private final imageInterval:F

.field private final imageStatus:I

.field private final recordingTimeMs:J

.field private final timeBootMs:J

.field private final videoStatus:I


# direct methods
.method private constructor <init>(JIIFJFI)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    .line 41
    iput p3, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    .line 42
    iput p4, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    .line 43
    iput p5, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    .line 44
    iput-wide p6, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    .line 45
    iput p8, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    .line 46
    iput p9, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    return-void
.end method

.method synthetic constructor <init>(JIIFJFILio/dronefleet/mavlink/common/CameraCaptureStatus$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p9}, Lio/dronefleet/mavlink/common/CameraCaptureStatus;-><init>(JIIFJFI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/CameraCaptureStatus;
    .locals 10

    .line 190
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 191
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 192
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 193
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 194
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 195
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 196
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 197
    new-instance p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/CameraCaptureStatus;-><init>(JIIFJFI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/CameraCaptureStatus;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x16

    .line 201
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 208
    iget p0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final availableCapacity()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Available storage capacity."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 154
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;

    .line 155
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 156
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 157
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 158
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 159
    :cond_5
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 160
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 161
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public hashCode()I
    .locals 4

    .line 168
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final imageCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of images captured (\'forever\', or\n                until reset using MAV_CMD_STORAGE_FORMAT)."
        extension = true
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    return v0
.end method

.method public final imageInterval()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image capture interval"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 107
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    return v0
.end method

.method public final imageStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current status of image capturing (0: idle, 1:\n                capture in progress, 2: interval set but idle, 3: interval set and capture in\n                progress)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 82
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    return v0
.end method

.method public final recordingTimeMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since recording\n                started"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 120
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    return-wide v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 67
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCaptureStatus{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", imageStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageInterval:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", recordingTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->recordingTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", availableCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->availableCapacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", imageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->imageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final videoStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current status of video capturing (0: idle, 1:\n                capture in progress)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus;->videoStatus:I

    return v0
.end method
