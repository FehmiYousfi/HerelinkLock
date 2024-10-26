.class public final Lio/dronefleet/mavlink/common/Statustext;
.super Ljava/lang/Object;
.source "Statustext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/Statustext$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x53
    description = "Status text message. These messages are printed in yellow in the COMM\n                console of QGroundControl. WARNING: They consume quite some bandwidth, so use only\n                for important status and error messages. If implemented wisely, these messages are\n                buffered on the MCU and sent only at a limited rate (e.g. 10 Hz)."
    id = 0xfd
.end annotation


# instance fields
.field private final chunkSeq:I

.field private final id:I

.field private final severity:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSeverity;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSeverity;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    .line 41
    iput-object p2, p0, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    .line 42
    iput p3, p0, Lio/dronefleet/mavlink/common/Statustext;->id:I

    .line 43
    iput p4, p0, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;IILio/dronefleet/mavlink/common/Statustext$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/Statustext;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;II)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 51
    new-instance v0, Lio/dronefleet/mavlink/common/Statustext$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/Statustext$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/Statustext;
    .locals 4

    .line 146
    const-class v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    const/16 v1, 0x32

    .line 147
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 149
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 150
    new-instance v3, Lio/dronefleet/mavlink/common/Statustext;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/common/Statustext;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;II)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/Statustext;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x36

    .line 154
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 155
    const-class v1, Lio/dronefleet/mavlink/common/MavSeverity;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 156
    iget-object v1, p0, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 157
    iget v1, p0, Lio/dronefleet/mavlink/common/Statustext;->id:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    iget p0, p0, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final chunkSeq()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This chunk\'s sequence number; indexing is from\n                zero. Any null character in the text field is taken to mean this was the last chunk."
        extension = true
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/Statustext;

    .line 120
    iget-object v2, p0, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 121
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 122
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/Statustext;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/Statustext;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 123
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 130
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 131
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/common/Statustext;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 133
    iget v0, p0, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final id()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique (opaque) identifier for this statustext message.\n                May be used to reassemble a logical long-statustext message from a sequence of\n                chunks. A value of zero indicates this is the only chunk in the sequence and the\n                message can be emitted immediately."
        extension = true
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 97
    iget v0, p0, Lio/dronefleet/mavlink/common/Statustext;->id:I

    return v0
.end method

.method public final severity()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSeverity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Severity of status. Relies on\n                the definitions within RFC-5424."
        enumType = Lio/dronefleet/mavlink/common/MavSeverity;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 65
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "Status text message, without null termination\n                character"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 79
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statustext{severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Statustext;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Statustext;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/Statustext;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chunkSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/Statustext;->chunkSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
