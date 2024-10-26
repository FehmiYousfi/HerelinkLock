.class public final Lio/dronefleet/mavlink/common/DataTransmissionHandshake;
.super Ljava/lang/Object;
.source "DataTransmissionHandshake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x1d
    description = "Handshake message to initiate, control and stop image streaming when using\n                the Image Transmission Protocol:\n                https://mavlink.io/en/services/image_transmission.html."
    id = 0x82
.end annotation


# instance fields
.field private final height:I

.field private final jpgQuality:I

.field private final packets:I

.field private final payload:I

.field private final size:J

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavlinkDataStreamType;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavlinkDataStreamType;",
            ">;JIIIII)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    .line 45
    iput-wide p2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    .line 46
    iput p4, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    .line 47
    iput p5, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    .line 48
    iput p6, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    .line 49
    iput p7, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    .line 50
    iput p8, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JIIIIILio/dronefleet/mavlink/common/DataTransmissionHandshake$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/DataTransmissionHandshake;
    .locals 9

    .line 189
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 190
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 191
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 192
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 193
    const-class v0, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v1

    .line 194
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 195
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 196
    new-instance p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/DataTransmissionHandshake;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0xd

    .line 200
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 201
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    const-class v1, Lio/dronefleet/mavlink/common/MavlinkDataStreamType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    iget p0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 153
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;

    .line 154
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 155
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 156
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 157
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 158
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 159
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 160
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

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

    .line 167
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final height()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Height of a matrix or image."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 108
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    return v0
.end method

.method public final jpgQuality()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "JPEG quality. Values: [1-100]."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 146
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

    return v0
.end method

.method public final packets()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of packets being sent (set on ACK only)."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 120
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    return v0
.end method

.method public final payload()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Payload size per packet (normally 253\n                byte, see DATA field size in message ENCAPSULATED_DATA) (set on ACK only)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 134
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    return v0
.end method

.method public final size()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "total data size (set on ACK only)."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 84
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataTransmissionHandshake{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->packets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->payload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jpgQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->jpgQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavlinkDataStreamType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of\n                requested/acknowledged data."
        enumType = Lio/dronefleet/mavlink/common/MavlinkDataStreamType;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 72
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final width()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Width of a matrix or image."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 96
    iget v0, p0, Lio/dronefleet/mavlink/common/DataTransmissionHandshake;->width:I

    return v0
.end method
