.class public final Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;
.super Ljava/lang/Object;
.source "OpenDroneIdBasicId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x72
    description = "Data for filling the OpenDroneID Basic ID message. This and the below\n                messages are primarily meant for feeding data to/from an OpenDroneID implementation.\n                E.g. https://github.com/opendroneid/opendroneid-core-c. These messages are\n                compatible with the ASTM F3411 Remote ID standard and the ASD-STAN prEN 4709-002\n                Direct Remote ID standard. Additional information and usage of these messages is\n                documented at https://mavlink.io/en/services/opendroneid.html."
    id = 0x3264
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final idOrMac:[B

.field private final idType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidIdType;",
            ">;"
        }
    .end annotation
.end field

.field private final targetComponent:I

.field private final targetSystem:I

.field private final uaType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidUaType;",
            ">;"
        }
    .end annotation
.end field

.field private final uasId:[B


# direct methods
.method private constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidIdType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidUaType;",
            ">;[B)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    .line 57
    iput p2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    .line 58
    iput-object p3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    .line 59
    iput-object p4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 60
    iput-object p5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 61
    iput-object p6, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/common/OpenDroneIdBasicId$1;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;
    .locals 7

    .line 193
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 194
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v0, 0x14

    .line 195
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    .line 196
    const-class v4, Lio/dronefleet/mavlink/common/MavOdidIdType;

    const/4 v5, 0x1

    invoke-static {v4, p0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 197
    const-class v6, Lio/dronefleet/mavlink/common/MavOdidUaType;

    invoke-static {v6, p0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 198
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v6

    .line 199
    new-instance p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[B)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;)Ljava/nio/ByteBuffer;
    .locals 6

    const/16 v0, 0x2c

    .line 203
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 205
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidIdType;

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_0
    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidUaType;

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v4

    :goto_1
    invoke-static {v1, v4, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 209
    iget-object p0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

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

    if-eqz p1, :cond_8

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;

    .line 161
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 162
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 163
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 164
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 165
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 166
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 175
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 177
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

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

    .line 109
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    return-object v0
.end method

.method public final idType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidIdType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the format for\n                the uas_id field of this message."
        enumType = Lio/dronefleet/mavlink/common/MavOdidIdType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 123
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 81
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenDroneIdBasicId{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idOrMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idOrMac:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->idType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uasId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uaType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidUaType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the type of UA\n                (Unmanned Aircraft)."
        enumType = Lio/dronefleet/mavlink/common/MavOdidUaType;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 137
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uaType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final uasId()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "UAS (Unmanned Aircraft System) ID following the\n                format specified by id_type. Shall be filled with nulls in the unused portion of the\n                field."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 153
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdBasicId;->uasId:[B

    return-object v0
.end method
