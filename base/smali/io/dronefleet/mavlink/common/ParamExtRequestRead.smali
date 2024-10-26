.class public final Lio/dronefleet/mavlink/common/ParamExtRequestRead;
.super Ljava/lang/Object;
.source "ParamExtRequestRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf3
    description = "Request to read the value of a parameter with either the param_id string id\n                or param_index. PARAM_EXT_VALUE should be emitted in response."
    id = 0x140
.end annotation


# instance fields
.field private final paramId:Ljava/lang/String;

.field private final paramIndex:I

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    .line 35
    iput p2, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    .line 36
    iput-object p3, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    .line 37
    iput p4, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;ILio/dronefleet/mavlink/common/ParamExtRequestRead$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/ParamExtRequestRead;-><init>(IILjava/lang/String;I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ParamExtRequestRead$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ParamExtRequestRead;
    .locals 4

    .line 136
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 137
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 138
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x10

    .line 139
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v3, Lio/dronefleet/mavlink/common/ParamExtRequestRead;

    invoke-direct {v3, v1, v2, p0, v0}, Lio/dronefleet/mavlink/common/ParamExtRequestRead;-><init>(IILjava/lang/String;I)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ParamExtRequestRead;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    .line 144
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 146
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    iget-object p0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

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

    if-eqz p1, :cond_6

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ParamExtRequestRead;

    .line 110
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 111
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 112
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 113
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

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

    .line 120
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 121
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 122
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final paramId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Parameter id, terminated by NULL if the length is\n                less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the\n                length is exactly 16 chars - applications have to provide 16+1 bytes storage if the\n                ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 87
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    return-object v0
.end method

.method public final paramIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter index. Set to -1 to use\n                the Parameter ID field as identifier (else param_id will be ignored)"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 102
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 69
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 57
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamExtRequestRead{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paramIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamExtRequestRead;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
