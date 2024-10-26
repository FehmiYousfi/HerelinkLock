.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;
.super Ljava/lang/Object;
.source "SerialUdbExtraF22.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x5b
    description = "Backwards compatible version of SERIAL_UDB_EXTRA F22 format"
    id = 0xbc
.end annotation


# instance fields
.field private final sueAccelXAtCalibration:I

.field private final sueAccelYAtCalibration:I

.field private final sueAccelZAtCalibration:I

.field private final sueGyroXAtCalibration:I

.field private final sueGyroYAtCalibration:I

.field private final sueGyroZAtCalibration:I


# direct methods
.method private constructor <init>(IIIIII)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    .line 38
    iput p2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    .line 39
    iput p3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    .line 40
    iput p4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    .line 41
    iput p5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    .line 42
    iput p6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;-><init>(IIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;
    .locals 7

    .line 171
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 172
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 173
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 174
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 175
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 176
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 177
    new-instance p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;-><init>(IIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xc

    .line 181
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

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

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;

    .line 139
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 140
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 141
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 142
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 143
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 144
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

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

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 153
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueAccelXAtCalibration()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X accelerometer at\n                calibration time"
        position = 0x1
        signed = true
        unitSize = 0x2
    .end annotation

    .line 64
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    return v0
.end method

.method public final sueAccelYAtCalibration()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y accelerometer at\n                calibration time"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 78
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    return v0
.end method

.method public final sueAccelZAtCalibration()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z accelerometer at\n                calibration time"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    return v0
.end method

.method public final sueGyroXAtCalibration()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE X gyro at calibration time"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 105
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    return v0
.end method

.method public final sueGyroYAtCalibration()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Y gyro at calibration time"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    return v0
.end method

.method public final sueGyroZAtCalibration()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Z gyro at calibration time"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 131
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF22{sueAccelXAtCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelXAtCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAccelYAtCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelYAtCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAccelZAtCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueAccelZAtCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueGyroXAtCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroXAtCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueGyroYAtCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroYAtCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueGyroZAtCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF22;->sueGyroZAtCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
