.class public final Lio/dronefleet/mavlink/common/MessageInterval;
.super Ljava/lang/Object;
.source "MessageInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/MessageInterval$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x5f
    description = "The interval between messages for a particular MAVLink message ID. This\n                message is the response to the MAV_CMD_GET_MESSAGE_INTERVAL command. This interface\n                replaces DATA_STREAM."
    id = 0xf4
.end annotation


# instance fields
.field private final intervalUs:I

.field private final messageId:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    .line 32
    iput p2, p0, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/common/MessageInterval$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/common/MessageInterval;-><init>(II)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/MessageInterval$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/MessageInterval$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/MessageInterval$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/MessageInterval;
    .locals 2

    .line 97
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 99
    new-instance v1, Lio/dronefleet/mavlink/common/MessageInterval;

    invoke-direct {v1, p0, v0}, Lio/dronefleet/mavlink/common/MessageInterval;-><init>(II)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/MessageInterval;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    .line 103
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    iget v1, p0, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    iget p0, p0, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/MessageInterval;

    .line 77
    iget v2, p0, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 78
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget v0, p0, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final intervalUs()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The interval between two messages. A\n                value of -1 indicates this stream is disabled, 0 indicates it is not available, >\n                0 indicates the interval at which it is sent."
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 69
    iget v0, p0, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    return v0
.end method

.method public final messageId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID of the requested MAVLink message. v1.0\n                is limited to 254 messages."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 53
    iget v0, p0, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageInterval{messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MessageInterval;->messageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intervalUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MessageInterval;->intervalUs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
