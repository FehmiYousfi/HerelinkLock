.class public final Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;
.super Ljava/lang/Object;
.source "VideoStreamInformation99.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xde
    description = "Information about video stream"
    id = 0x6914
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bitrate:J

.field private final cameraId:I

.field private final framerate:F

.field private final resolutionH:I

.field private final resolutionV:I

.field private final rotation:I

.field private final status:I

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIFIIJILjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    .line 48
    iput p2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    .line 49
    iput p3, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    .line 50
    iput p4, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    .line 51
    iput p5, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    .line 52
    iput-wide p6, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    .line 53
    iput p8, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    .line 54
    iput-object p9, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IIFIIJILjava/lang/String;Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p9}, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;-><init>(IIFIIJILjava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;
    .locals 10

    .line 208
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 209
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 210
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 211
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 212
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 213
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 214
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v0, 0xe6

    .line 215
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v9

    .line 216
    new-instance p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;-><init>(IIFIIJILjava/lang/String;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xf6

    .line 220
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 221
    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 222
    iget-wide v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 223
    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 226
    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 228
    iget-object p0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

    const/16 v1, 0xe6

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final bitrate()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bit rate."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 135
    iget-wide v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    return-wide v0
.end method

.method public final cameraId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video Stream ID (1 for first, 2 for second,\n                etc.)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 169
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;

    .line 170
    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 171
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 172
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 173
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 174
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 175
    :cond_6
    iget-wide v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 176
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 177
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

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

.method public final framerate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame rate."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 185
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 186
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 187
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 189
    iget-wide v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 190
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 191
    iget-object v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final resolutionH()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal resolution."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    return v0
.end method

.method public final resolutionV()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical resolution."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    return v0
.end method

.method public final rotation()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video image rotation clockwise."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    return v0
.end method

.method public final status()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of streams available."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 87
    iget v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamInformation99{cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", framerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->framerate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->resolutionV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->bitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xe6
        description = "Video stream URI (TCP or RTSP URI ground station\n                should connect to) or port number (UDP port ground station should listen to)."
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 162
    iget-object v0, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;->uri:Ljava/lang/String;

    return-object v0
.end method
