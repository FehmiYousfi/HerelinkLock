.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;
.super Ljava/lang/Object;
.source "SerialUdbExtraF21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x86
    description = "Backwards compatible version of SERIAL_UDB_EXTRA F21 format"
    id = 0xbb
.end annotation


# instance fields
.field private final sueAccelXOffset:I

.field private final sueAccelYOffset:I

.field private final sueAccelZOffset:I

.field private final sueGyroXOffset:I

.field private final sueGyroYOffset:I

.field private final sueGyroZOffset:I


# direct methods
.method private constructor <init>(IIIIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    .line 37
    iput p2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    .line 38
    iput p3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    .line 39
    iput p4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    .line 40
    iput p5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    .line 41
    iput p6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;-><init>(IIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;
    .locals 7

    .line 167
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 168
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 169
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 170
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 171
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 172
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 173
    new-instance p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;-><init>(IIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xc

    .line 177
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 180
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

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
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;

    .line 135
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 136
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 137
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 138
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 139
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 140
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

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

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 149
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 150
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueAccelXOffset()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X accelerometer offset"
        position = 0x1
        signed = true
        unitSize = 0x2
    .end annotation

    .line 62
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    return v0
.end method

.method public final sueAccelYOffset()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y accelerometer offset"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    return v0
.end method

.method public final sueAccelZOffset()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z accelerometer offset"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 88
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    return v0
.end method

.method public final sueGyroXOffset()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X gyro offset"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 101
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    return v0
.end method

.method public final sueGyroYOffset()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y gyro offset"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 114
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    return v0
.end method

.method public final sueGyroZOffset()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z gyro offset"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 127
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF21{sueAccelXOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAccelYOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAccelZOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueAccelZOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueGyroXOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueGyroYOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueGyroZOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF21;->sueGyroZOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
