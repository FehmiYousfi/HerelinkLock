.class public final Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;
.super Ljava/lang/Object;
.source "SlugsMobileLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x65
    description = "Transmits the last known position of the mobile GS to the UAV. Very\n                relevant when Track Mobile is enabled"
    id = 0xba
.end annotation


# instance fields
.field private final latitude:F

.field private final longitude:F

.field private final target:I


# direct methods
.method private constructor <init>(IFF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

    .line 32
    iput p2, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    .line 33
    iput p3, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    return-void
.end method

.method synthetic constructor <init>(IFFLio/dronefleet/mavlink/slugs/SlugsMobileLocation$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;-><init>(IFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 41
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;
    .locals 3

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 109
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 110
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 111
    new-instance v2, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;

    invoke-direct {v2, p0, v0, v1}, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;-><init>(IFF)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x9

    .line 115
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget p0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

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

    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;

    .line 85
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 86
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 87
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final latitude()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mobile Latitude"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 65
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    return v0
.end method

.method public final longitude()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mobile Longitude"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    return v0
.end method

.method public final target()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system reporting the action"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 53
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlugsMobileLocation{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->latitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;->longitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
