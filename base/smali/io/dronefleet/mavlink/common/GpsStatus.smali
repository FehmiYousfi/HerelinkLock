.class public final Lio/dronefleet/mavlink/common/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x17
    description = "The positioning status, as reported by GPS. This message is intended to\n                display status information about each satellite visible to the receiver. See message\n                GLOBAL_POSITION for the global position estimate. This message can contain\n                information for up to 20 satellites."
    id = 0x19
.end annotation


# instance fields
.field private final satelliteAzimuth:[B

.field private final satelliteElevation:[B

.field private final satellitePrn:[B

.field private final satelliteSnr:[B

.field private final satelliteUsed:[B

.field private final satellitesVisible:I


# direct methods
.method private constructor <init>(I[B[B[B[B[B)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    .line 42
    iput-object p2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    .line 43
    iput-object p3, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    .line 44
    iput-object p4, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    .line 45
    iput-object p5, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    .line 46
    iput-object p6, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

    return-void
.end method

.method synthetic constructor <init>(I[B[B[B[B[BLio/dronefleet/mavlink/common/GpsStatus$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/common/GpsStatus;-><init>(I[B[B[B[B[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GpsStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GpsStatus;
    .locals 7

    .line 175
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v0, 0x14

    .line 176
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 177
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    .line 178
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 179
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v5

    .line 180
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v6

    .line 181
    new-instance p0, Lio/dronefleet/mavlink/common/GpsStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/GpsStatus;-><init>(I[B[B[B[B[B)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GpsStatus;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x65

    .line 185
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    iget-object p0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

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
    check-cast p1, Lio/dronefleet/mavlink/common/GpsStatus;

    .line 143
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 144
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 145
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 146
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 147
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 148
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

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

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final satelliteAzimuth()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Direction of satellite,\n                0: 0 deg, 255: 360 deg."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 121
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    return-object v0
.end method

.method public final satelliteElevation()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Elevation (0: right on\n                top of receiver, 90: on the horizon) of satellite"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 107
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    return-object v0
.end method

.method public final satellitePrn()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Global satellite ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 79
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    return-object v0
.end method

.method public final satelliteSnr()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Signal to noise ratio of\n                satellite"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 135
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

    return-object v0
.end method

.method public final satelliteUsed()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "0: Satellite not used, 1: used for\n                localization"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 93
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    return-object v0
.end method

.method public final satellitesVisible()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 66
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsStatus{satellitesVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitesVisible:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satellitePrn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satellitePrn:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteUsed:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteElevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteElevation:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteAzimuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteAzimuth:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsStatus;->satelliteSnr:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
