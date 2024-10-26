.class public final Lio/dronefleet/mavlink/common/TerrainData;
.super Ljava/lang/Object;
.source "TerrainData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/TerrainData$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xe5
    description = "Terrain data sent from GCS. The lat/lon and grid_spacing must be the same\n                as a lat/lon from a TERRAIN_REQUEST. See terrain protocol docs:\n                https://mavlink.io/en/services/terrain.html"
    id = 0x86
.end annotation


# instance fields
.field private final data:[I

.field private final gridSpacing:I

.field private final gridbit:I

.field private final lat:I

.field private final lon:I


# direct methods
.method private constructor <init>(IIII[I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    .line 38
    iput p2, p0, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    .line 39
    iput p3, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    .line 40
    iput p4, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    .line 41
    iput-object p5, p0, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    return-void
.end method

.method synthetic constructor <init>(IIII[ILio/dronefleet/mavlink/common/TerrainData$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/TerrainData;-><init>(IIII[I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/TerrainData$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/common/TerrainData$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/TerrainData$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/TerrainData;
    .locals 6

    .line 150
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 151
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 152
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/16 v0, 0x20

    .line 153
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v5

    .line 154
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 155
    new-instance p0, Lio/dronefleet/mavlink/common/TerrainData;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/TerrainData;-><init>(IIII[I)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/TerrainData;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2b

    .line 159
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 163
    iget-object v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 164
    iget p0, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final data()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Terrain data MSL"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 113
    iget-object v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/TerrainData;

    .line 121
    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 122
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 123
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 124
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 125
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    iget-object p1, p1, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final gridSpacing()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Grid spacing"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 87
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    return v0
.end method

.method public final gridbit()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "bit within the terrain request mask"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 133
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 134
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of SW corner of first grid"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 62
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of SW corner of first grid"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerrainData{lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gridSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gridbit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->gridbit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/TerrainData;->data:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
