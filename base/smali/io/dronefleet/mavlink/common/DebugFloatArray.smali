.class public final Lio/dronefleet/mavlink/common/DebugFloatArray;
.super Ljava/lang/Object;
.source "DebugFloatArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xe8
    description = "Large debug/prototyping array. The message uses the maximum available\n                payload for data. The array_id and name fields are used to discriminate between\n                messages in code and in user interfaces (respectively). Do not use in production\n                code."
    id = 0x15e
.end annotation


# instance fields
.field private final arrayId:I

.field private final data:[F

.field private final name:Ljava/lang/String;

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;I[F)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    .line 38
    iput-object p2, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    .line 39
    iput p3, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    .line 40
    iput-object p4, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;I[FLio/dronefleet/mavlink/common/DebugFloatArray$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/DebugFloatArray;-><init>(Ljava/math/BigInteger;Ljava/lang/String;I[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 48
    new-instance v0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/DebugFloatArray;
    .locals 4

    .line 138
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 139
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v2, 0xa

    .line 140
    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe8

    .line 141
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object p0

    .line 142
    new-instance v3, Lio/dronefleet/mavlink/common/DebugFloatArray;

    invoke-direct {v3, v0, v2, v1, p0}, Lio/dronefleet/mavlink/common/DebugFloatArray;-><init>(Ljava/math/BigInteger;Ljava/lang/String;I[F)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/DebugFloatArray;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xfc

    .line 146
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    iget v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 150
    iget-object p0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

    const/16 v1, 0xe8

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final arrayId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique ID used to discriminate\n                between arrays"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 90
    iget v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    return v0
.end method

.method public final data()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3a
        description = "data"
        extension = true
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

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

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/DebugFloatArray;

    .line 112
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 113
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 114
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 115
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

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

    .line 122
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 123
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 125
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Name, for human-friendly display in a Ground Control\n                Station"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 77
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 63
    iget-object v0, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugFloatArray{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arrayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->arrayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray;->data:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
