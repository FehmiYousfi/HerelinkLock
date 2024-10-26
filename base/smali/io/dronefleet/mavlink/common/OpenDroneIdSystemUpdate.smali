.class public final Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;
.super Ljava/lang/Object;
.source "OpenDroneIdSystemUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x7
    description = "Update the data in the OPEN_DRONE_ID_SYSTEM message with new location\n                information. This can be sent to update the location information for the operator\n                when no other information in the SYSTEM message has changed. This message allows for\n                efficient operation on radio links which have limited uplink bandwidth while meeting\n                requirements for update frequency of the operator location."
    id = 0x3277
.end annotation


# instance fields
.field private final operatorAltitudeGeo:F

.field private final operatorLatitude:I

.field private final operatorLongitude:I

.field private final targetComponent:I

.field private final targetSystem:I

.field private final timestamp:J


# direct methods
.method private constructor <init>(IIIIFJ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    .line 45
    iput p2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

    .line 46
    iput p3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    .line 47
    iput p4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    .line 48
    iput p5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    .line 49
    iput-wide p6, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(IIIIFJLio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$1;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;-><init>(IIIIFJ)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 57
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;
    .locals 8

    .line 175
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 176
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 177
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 178
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 179
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 180
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 181
    new-instance p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;-><init>(IIIIFJ)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x12

    .line 185
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 191
    iget p0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

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

    if-eqz p1, :cond_8

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;

    .line 143
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 144
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 145
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 146
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 147
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 148
    :cond_6
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .locals 4

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final operatorAltitudeGeo()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Geodetic\n                altitude of the operator relative to WGS84. If unknown: -1000 m."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 122
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    return v0
.end method

.method public final operatorLatitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of the\n                operator. If unknown: 0 (both Lat/Lon)."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    return v0
.end method

.method public final operatorLongitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of\n                the operator. If unknown: 0 (both Lat/Lon)."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 109
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 81
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 69
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    return v0
.end method

.method public final timestamp()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "32 bit Unix Timestamp in seconds since\n                00:00:00 01/01/2019."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 135
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenDroneIdSystemUpdate{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operatorLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operatorLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operatorAltitudeGeo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->operatorAltitudeGeo:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystemUpdate;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
