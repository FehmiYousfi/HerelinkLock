.class public final Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;
.super Ljava/lang/Object;
.source "AqEscTelemetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x73
    description = "Sends ESC32 telemetry data for up to 4 motors. Multiple messages may be\n                sent in sequence when system has > 4 motors. Data is described as follows:\n                // unsigned int state : 3;\n                // unsigned int vin : 12; // x 100\n                // unsigned int amps : 14; // x 100\n                // unsigned int rpm : 15;\n                // unsigned int duty : 8; // x (255/100)\n                // - Data Version 2 -\n                // unsigned int errors : 9; // Bad detects error count\n                // - Data Version 3 -\n                // unsigned int temp : 9; // (Deg C + 32) * 4\n                // unsigned int errCode : 3;"
    id = 0x98
.end annotation


# instance fields
.field private final data0:[J

.field private final data1:[J

.field private final dataVersion:[B

.field private final escid:[B

.field private final numInSeq:I

.field private final numMotors:I

.field private final seq:I

.field private final statusAge:[I

.field private final timeBootMs:J


# direct methods
.method private constructor <init>(JIII[B[I[B[J[J)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    .line 58
    iput p3, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    .line 59
    iput p4, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    .line 60
    iput p5, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    .line 61
    iput-object p6, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    .line 62
    iput-object p7, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    .line 63
    iput-object p8, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    .line 64
    iput-object p9, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    .line 65
    iput-object p10, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

    return-void
.end method

.method synthetic constructor <init>(JIII[B[I[B[J[JLio/dronefleet/mavlink/autoquad/AqEscTelemetry$1;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;-><init>(JIII[B[I[B[J[J)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 73
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;
    .locals 11

    .line 243
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const/16 v0, 0x10

    .line 244
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32Array(Ljava/nio/ByteBuffer;I)[J

    move-result-object v9

    .line 245
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32Array(Ljava/nio/ByteBuffer;I)[J

    move-result-object v10

    const/16 v0, 0x8

    .line 246
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v7

    .line 247
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 248
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 249
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/4 v0, 0x4

    .line 250
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v6

    .line 251
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v8

    .line 252
    new-instance p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;-><init>(JIII[B[I[B[J[J)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x37

    .line 256
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 257
    iget-wide v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 258
    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32Array([JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32Array([JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 260
    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 262
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 263
    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    iget-object p0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final data0()[J
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Data bits 1-32 for each ESC."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 181
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    return-object v0
.end method

.method public final data1()[J
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Data bits 33-64 for each ESC."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 194
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

    return-object v0
.end method

.method public final dataVersion()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Version of data structure (determines\n                contents)."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 168
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 201
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;

    .line 202
    iget-wide v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 203
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 204
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 205
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 206
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 207
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 208
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 209
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    iget-object v3, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 210
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

    iget-object p1, p1, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

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

.method public final escid()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "ESC/Motor ID"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 139
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 217
    iget-wide v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 220
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 221
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 222
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 223
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 225
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final numInSeq()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of active ESCs in this sequence (1\n                through this many array members will be populated with data)"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    return v0
.end method

.method public final numMotors()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of active ESCs/motors on the\n                system."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    return v0
.end method

.method public final seq()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence number of message (first set of 4 motors is\n                #1, next 4 is #2, etc)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    return v0
.end method

.method public final statusAge()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Age of each ESC telemetry reading in ms\n                compared to boot time. A value of 0xFFFF means timeout/no data."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 154
    iget-object v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    return-object v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp of the component clock since boot\n                time in ms."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 86
    iget-wide v0, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AqEscTelemetry{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numMotors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numMotors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numInSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->numInSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", escid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->escid:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->statusAge:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->dataVersion:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data0:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;->data1:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
