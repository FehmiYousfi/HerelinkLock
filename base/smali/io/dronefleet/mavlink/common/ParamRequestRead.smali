.class public final Lio/dronefleet/mavlink/common/ParamRequestRead;
.super Ljava/lang/Object;
.source "ParamRequestRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xd6
    description = "Request to read the onboard parameter with the param_id string id. Onboard\n                parameters are stored as key[const char*] -> value[float]. This allows to send a\n                parameter to any other component (such as the GCS) without the need of previous\n                knowledge of possible parameter names. Thus the same GCS can store different\n                parameters for different autopilots. See also\n                https://mavlink.io/en/services/parameter.html for a full documentation of\n                QGroundControl and IMU code."
    id = 0x14
.end annotation


# instance fields
.field private final paramId:Ljava/lang/String;

.field private final paramIndex:I

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    .line 44
    iput p2, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    .line 45
    iput-object p3, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

    .line 46
    iput p4, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;ILio/dronefleet/mavlink/common/ParamRequestRead$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/ParamRequestRead;-><init>(IILjava/lang/String;I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ParamRequestRead$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ParamRequestRead;
    .locals 4

    .line 145
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 146
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 147
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x10

    .line 148
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v3, Lio/dronefleet/mavlink/common/ParamRequestRead;

    invoke-direct {v3, v1, v2, p0, v0}, Lio/dronefleet/mavlink/common/ParamRequestRead;-><init>(IILjava/lang/String;I)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ParamRequestRead;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    .line 153
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 155
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-object p0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

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

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ParamRequestRead;

    .line 119
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 120
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 121
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 122
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

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

    .line 129
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 131
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

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
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 96
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

    return-object v0
.end method

.method public final paramIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter index. Send -1 to use the param ID\n                field as identifier (else the param id will be ignored)"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 78
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 66
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamRequestRead{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paramIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamRequestRead;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
