.class public final Lio/dronefleet/mavlink/common/UavcanNodeInfo;
.super Ljava/lang/Object;
.source "UavcanNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x5f
    description = "General information describing a particular UAVCAN node. Please refer to\n                the definition of the UAVCAN service \"uavcan.protocol.GetNodeInfo\" for the\n                background information. This message should be emitted by the system whenever a new\n                node appears online, or an existing node reboots. Additionally, it can be emitted\n                upon request from the other end of the MAVLink channel (see\n                MAV_CMD_UAVCAN_GET_NODE_INFO). It is also not prohibited to emit this message\n                unconditionally at a low frequency. The UAVCAN specification is available at\n                http://uavcan.org."
    id = 0x137
.end annotation


# instance fields
.field private final hwUniqueId:[B

.field private final hwVersionMajor:I

.field private final hwVersionMinor:I

.field private final name:Ljava/lang/String;

.field private final swVcsCommit:J

.field private final swVersionMajor:I

.field private final swVersionMinor:I

.field private final timeUsec:Ljava/math/BigInteger;

.field private final uptimeSec:J


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;JLjava/lang/String;II[BIIJ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    .line 58
    iput-wide p2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    .line 59
    iput-object p4, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    .line 60
    iput p5, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    .line 61
    iput p6, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    .line 62
    iput-object p7, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    .line 63
    iput p8, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    .line 64
    iput p9, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    .line 65
    iput-wide p10, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;JLjava/lang/String;II[BIIJLio/dronefleet/mavlink/common/UavcanNodeInfo$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p11}, Lio/dronefleet/mavlink/common/UavcanNodeInfo;-><init>(Ljava/math/BigInteger;JLjava/lang/String;II[BIIJ)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 73
    new-instance v0, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/UavcanNodeInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/UavcanNodeInfo;
    .locals 12

    .line 238
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 239
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 240
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    const/16 v0, 0x50

    .line 241
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 243
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/16 v0, 0x10

    .line 244
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v7

    .line 245
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 246
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 247
    new-instance p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/UavcanNodeInfo;-><init>(Ljava/math/BigInteger;JLjava/lang/String;II[BIIJ)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/UavcanNodeInfo;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x74

    .line 251
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 257
    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 258
    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    iget p0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 196
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;

    .line 197
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 198
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 199
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 200
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 201
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 202
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 203
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 204
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 205
    :cond_9
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 212
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 213
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 214
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 217
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 220
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final hwUniqueId()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Hardware unique 128-bit ID."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 151
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    return-object v0
.end method

.method public final hwVersionMajor()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hardware major version number."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    return v0
.end method

.method public final hwVersionMinor()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hardware minor version number."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x50
        description = "Node name string. For example, \"sapog.px4.io\"."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 114
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final swVcsCommit()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version control system (VCS) revision\n                identifier (e.g. git short commit hash). Zero if unknown."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 189
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    return-wide v0
.end method

.method public final swVersionMajor()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Software major version number."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    return v0
.end method

.method public final swVersionMinor()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Software minor version number."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 88
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavcanNodeInfo{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hwVersionMajor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hwVersionMinor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwVersionMinor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hwUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->hwUniqueId:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", swVersionMajor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swVersionMinor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVersionMinor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swVcsCommit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->swVcsCommit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uptimeSec()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the start-up of the\n                node."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 101
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeInfo;->uptimeSec:J

    return-wide v0
.end method
