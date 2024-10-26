.class public final Lio/dronefleet/mavlink/matrixpilot/Airspeeds;
.super Ljava/lang/Object;
.source "Airspeeds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x9a
    description = "The airspeed measured by sensors and IMU"
    id = 0xb6
.end annotation


# instance fields
.field private final airspeedHotWire:I

.field private final airspeedImu:I

.field private final airspeedPitot:I

.field private final airspeedUltrasonic:I

.field private final aoa:I

.field private final aoy:I

.field private final timeBootMs:J


# direct methods
.method private constructor <init>(JIIIIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    .line 39
    iput p3, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    .line 40
    iput p4, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    .line 41
    iput p5, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    .line 42
    iput p6, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    .line 43
    iput p7, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    .line 44
    iput p8, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    return-void
.end method

.method synthetic constructor <init>(JIIIIIILio/dronefleet/mavlink/matrixpilot/Airspeeds$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;-><init>(JIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/Airspeeds$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/Airspeeds;
    .locals 9

    .line 186
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 187
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 188
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 189
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 190
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 191
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 192
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 193
    new-instance p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;-><init>(JIIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/Airspeeds;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x10

    .line 197
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 201
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final airspeedHotWire()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hot wire anenometer measured airspeed,\n                cm/s"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    return v0
.end method

.method public final airspeedImu()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed estimate from IMU, cm/s"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    return v0
.end method

.method public final airspeedPitot()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitot measured forward airpseed, cm/s"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 90
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    return v0
.end method

.method public final airspeedUltrasonic()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ultrasonic measured airspeed, cm/s"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 117
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    return v0
.end method

.method public final aoa()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angle of attack sensor, degrees * 10"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    return v0
.end method

.method public final aoy()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle sensor, degrees * 10"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 150
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;

    .line 151
    iget-wide v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 152
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 153
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 154
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 155
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 156
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 157
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 164
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 165
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 166
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (milliseconds since system boot)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 64
    iget-wide v0, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airspeeds{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", airspeedImu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedImu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeedPitot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedPitot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeedHotWire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedHotWire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airspeedUltrasonic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->airspeedUltrasonic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aoy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/Airspeeds;->aoy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
