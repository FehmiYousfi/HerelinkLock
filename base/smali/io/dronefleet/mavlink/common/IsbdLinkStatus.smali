.class public final Lio/dronefleet/mavlink/common/IsbdLinkStatus;
.super Ljava/lang/Object;
.source "IsbdLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xe1
    description = "Status of the Iridium SBD link."
    id = 0x14f
.end annotation


# instance fields
.field private final failedSessions:I

.field private final lastHeartbeat:Ljava/math/BigInteger;

.field private final ringPending:I

.field private final rxSessionPending:I

.field private final signalQuality:I

.field private final successfulSessions:I

.field private final timestamp:Ljava/math/BigInteger;

.field private final txSessionPending:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IIIIII)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    .line 43
    iput-object p2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    .line 44
    iput p3, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    .line 45
    iput p4, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    .line 46
    iput p5, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    .line 47
    iput p6, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    .line 48
    iput p7, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    .line 49
    iput p8, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IIIIIILio/dronefleet/mavlink/common/IsbdLinkStatus$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/common/IsbdLinkStatus;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 57
    new-instance v0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/IsbdLinkStatus;
    .locals 9

    .line 210
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 211
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    .line 212
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 213
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 214
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 215
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 216
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 217
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 218
    new-instance p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/IsbdLinkStatus;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/IsbdLinkStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x18

    .line 222
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    iget-object v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 226
    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 227
    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 228
    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 229
    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    iget p0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

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

    if-eqz p1, :cond_a

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 171
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;

    .line 172
    iget-object v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 173
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 174
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 175
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 176
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 177
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 178
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 179
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public final failedSessions()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of failed SBD sessions."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 186
    iget-object v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 187
    iget-object v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 190
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 191
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 193
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lastHeartbeat()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp of the last successful\n                sbd session. The receiving end can infer timestamp format (since 1.1.1970 or since\n                system boot) by checking for the magnitude of the number."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 87
    iget-object v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final ringPending()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: Ring call pending, 0: No call pending."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    return v0
.end method

.method public final rxSessionPending()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: Receiving session pending, 0: No\n                receiving session pending."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    return v0
.end method

.method public final signalQuality()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Signal quality equal to the number of bars\n                displayed on the ISU signal strength indicator. Range is 0 to 5, where 0 indicates\n                no signal and 5 indicates maximum signal strength."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    return v0
.end method

.method public final successfulSessions()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of successful SBD sessions."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 72
    iget-object v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsbdLinkStatus{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastHeartbeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->lastHeartbeat:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedSessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->failedSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", successfulSessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->successfulSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signalQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->signalQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ringPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->ringPending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txSessionPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rxSessionPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->rxSessionPending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final txSessionPending()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: Transmission session pending, 0: No\n                transmission session pending."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus;->txSessionPending:I

    return v0
.end method
