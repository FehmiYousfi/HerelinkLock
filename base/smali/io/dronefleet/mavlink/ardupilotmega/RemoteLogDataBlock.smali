.class public final Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;
.super Ljava/lang/Object;
.source "RemoteLogDataBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x9f
    description = "Send a block of log data to remote location."
    id = 0xb8
.end annotation


# instance fields
.field private final data:[B

.field private final seqno:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;",
            ">;"
        }
    .end annotation
.end field

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;",
            ">;[B)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    .line 36
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    .line 37
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    .line 38
    iput-object p4, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;
    .locals 4

    .line 131
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v0

    .line 132
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 133
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xc8

    .line 134
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 135
    new-instance v3, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;

    invoke-direct {v3, v1, v2, v0, p0}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[B)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0xce

    .line 139
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 142
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

    const/16 v1, 0xc8

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final data()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xc8
        description = "Log data block."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 97
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;

    .line 105
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 106
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 107
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 108
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

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

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 116
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 117
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 118
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final seqno()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log data\n                block sequence number."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 84
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 70
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 58
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteLogDataBlock{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
