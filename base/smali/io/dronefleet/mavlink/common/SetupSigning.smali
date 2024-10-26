.class public final Lio/dronefleet/mavlink/common/SetupSigning;
.super Ljava/lang/Object;
.source "SetupSigning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SetupSigning$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x47
    description = "Setup a MAVLink2 signing key. If called with secret_key of all zero and\n                zero initial_timestamp will disable signing"
    id = 0x100
.end annotation


# instance fields
.field private final initialTimestamp:Ljava/math/BigInteger;

.field private final secretKey:[B

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(II[BLjava/math/BigInteger;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    .line 36
    iput p2, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    .line 37
    iput-object p3, p0, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    .line 38
    iput-object p4, p0, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(II[BLjava/math/BigInteger;Lio/dronefleet/mavlink/common/SetupSigning$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/SetupSigning;-><init>(II[BLjava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SetupSigning$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/SetupSigning$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SetupSigning$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SetupSigning;
    .locals 4

    .line 129
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 130
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 131
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x20

    .line 132
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 133
    new-instance v3, Lio/dronefleet/mavlink/common/SetupSigning;

    invoke-direct {v3, v1, v2, p0, v0}, Lio/dronefleet/mavlink/common/SetupSigning;-><init>(II[BLjava/math/BigInteger;)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SetupSigning;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x2a

    .line 137
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 139
    iget v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    iget v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    iget-object p0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    const/16 v1, 0x20

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

    if-eqz p1, :cond_6

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SetupSigning;

    .line 103
    iget v2, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 104
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 105
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 106
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

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

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 114
    iget v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 115
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 116
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final initialTimestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "initial timestamp"
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 95
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final secretKey()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "signing key"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 83
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "component ID of the target"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 70
    iget v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "system id of the target"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 58
    iget v0, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetupSigning{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secretKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->secretKey:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetupSigning;->initialTimestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
