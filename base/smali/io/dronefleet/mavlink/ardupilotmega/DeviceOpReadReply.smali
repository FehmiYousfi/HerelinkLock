.class public final Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;
.super Ljava/lang/Object;
.source "DeviceOpReadReply.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf
    description = "Read registers reply."
    id = 0x2af9
.end annotation


# instance fields
.field private final bank:I

.field private final count:I

.field private final data:[B

.field private final regstart:I

.field private final requestId:J

.field private final result:I


# direct methods
.method private constructor <init>(JIII[BI)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    .line 37
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->result:I

    .line 38
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    .line 39
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    .line 40
    iput-object p6, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    .line 41
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    return-void
.end method

.method synthetic constructor <init>(JIII[BILio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;-><init>(JIII[BI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;
    .locals 8

    .line 163
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 164
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 165
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 166
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/16 v0, 0x80

    .line 167
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v6

    .line 168
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 169
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;-><init>(JIII[BI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x88

    .line 173
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 175
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->result:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 177
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final bank()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bank number."
        extension = true
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    return v0
.end method

.method public final count()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of bytes read."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 97
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    return v0
.end method

.method public final data()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Reply data."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 110
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;

    .line 131
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 132
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->result:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->result:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 133
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 134
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 135
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 136
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    .line 143
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final regstart()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Starting register."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    return v0
.end method

.method public final requestId()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 61
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    return-wide v0
.end method

.method public final result()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0 for success, anything else is failure code."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 73
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOpReadReply{requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", regstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->regstart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;->bank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
