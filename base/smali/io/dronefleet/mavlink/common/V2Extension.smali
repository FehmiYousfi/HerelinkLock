.class public final Lio/dronefleet/mavlink/common/V2Extension;
.super Ljava/lang/Object;
.source "V2Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/V2Extension$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x8
    description = "Message implementing parts of the V2 payload specs in V1 frames for\n                transitional support."
    id = 0xf8
.end annotation


# instance fields
.field private final messageType:I

.field private final payload:[B

.field private final targetComponent:I

.field private final targetNetwork:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IIII[B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    .line 36
    iput p2, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    .line 37
    iput p3, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    .line 38
    iput p4, p0, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    .line 39
    iput-object p5, p0, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

    return-void
.end method

.method synthetic constructor <init>(IIII[BLio/dronefleet/mavlink/common/V2Extension$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/V2Extension;-><init>(IIII[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/V2Extension$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 47
    new-instance v0, Lio/dronefleet/mavlink/common/V2Extension$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/V2Extension$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/V2Extension;
    .locals 6

    .line 171
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 172
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 173
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 174
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/16 v0, 0xf9

    .line 175
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v5

    .line 176
    new-instance p0, Lio/dronefleet/mavlink/common/V2Extension;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/V2Extension;-><init>(IIII[B)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/V2Extension;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xfe

    .line 180
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 185
    iget-object p0, p0, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

    const/16 v1, 0xf9

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

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

    if-eqz p1, :cond_7

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
    check-cast p1, Lio/dronefleet/mavlink/common/V2Extension;

    .line 142
    iget v2, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 143
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 144
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 145
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 146
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

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

    .line 153
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget-object v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final messageType()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A code that identifies the software component\n                that understands this message (analogous to USB device classes or mime type\n                strings). If this code is less than 32768, it is considered a \'registered\' protocol\n                extension and the corresponding entry should be added to\n                https://github.com/mavlink/mavlink/definition_files/extension_message_ids.xml.\n                Software creators can register blocks of message IDs as needed (useful for GCS\n                specific metadata, etc...). Message_types greater than 32767 are considered local\n                experiments and should not be checked in to any widely distributed codebase."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 108
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    return v0
.end method

.method public final payload()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xf9
        description = "Variable length payload. The length must be\n                encoded in the payload as part of the message_type protocol, e.g. by including the\n                length as payload data, or by terminating the payload data with a non-zero marker.\n                This is required in order to reconstruct zero-terminated payloads that are (or\n                otherwise would be) trimmed by MAVLink 2 empty-byte truncation. The entire content\n                of the payload block is opaque unless you understand the encoding message_type. The\n                particular encoding used can be extension specific and might not always be\n                documented as part of the MAVLink specification."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 134
    iget-object v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 83
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    return v0
.end method

.method public final targetNetwork()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Network ID (0 for broadcast)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 59
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 71
    iget v0, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2Extension{targetNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/V2Extension;->payload:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
