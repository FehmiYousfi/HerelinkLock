.class public final Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;
.super Ljava/lang/Object;
.source "OpenDroneIdOperatorId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x31
    description = "Data for filling the OpenDroneID Operator ID message, which contains the\n                CAA (Civil Aviation Authority) issued operator ID."
    id = 0x3269
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final idOrMac:[B

.field private final operatorId:Ljava/lang/String;

.field private final operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;",
            ">;"
        }
    .end annotation
.end field

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    .line 47
    iput p2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    .line 48
    iput-object p3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    .line 49
    iput-object p4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 50
    iput-object p5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;
    .locals 6

    .line 164
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 165
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v0, 0x14

    .line 166
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    .line 167
    const-class v4, Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    const/4 v5, 0x1

    invoke-static {v4, p0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 168
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v5

    .line 169
    new-instance p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x2b

    .line 173
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 175
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 177
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object p0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

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

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;

    .line 135
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 136
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 137
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 138
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 139
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

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

    .line 146
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 148
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 149
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 150
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final idOrMac()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 98
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    return-object v0
.end method

.method public final operatorId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Text description or numeric value expressed as\n                ASCII characters. Shall be filled with nulls in the unused portion of the field."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 127
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

    return-object v0
.end method

.method public final operatorIdType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates\n                the type of the operator_id field."
        enumType = Lio/dronefleet/mavlink/common/MavOdidOperatorIdType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 112
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 82
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 70
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenDroneIdOperatorId{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idOrMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->idOrMac:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorIdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorIdType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdOperatorId;->operatorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
