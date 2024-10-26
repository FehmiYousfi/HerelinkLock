.class public final Lio/dronefleet/mavlink/slugs/CpuLoad;
.super Ljava/lang/Object;
.source "CpuLoad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x4b
    description = "Sensor and DSC control loads."
    id = 0xaa
.end annotation


# instance fields
.field private final batvolt:I

.field private final ctrlload:I

.field private final sensload:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    .line 30
    iput p2, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    .line 31
    iput p3, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    return-void
.end method

.method synthetic constructor <init>(IIILio/dronefleet/mavlink/slugs/CpuLoad$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/slugs/CpuLoad;-><init>(III)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/CpuLoad;
    .locals 3

    .line 106
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 107
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 109
    new-instance v2, Lio/dronefleet/mavlink/slugs/CpuLoad;

    invoke-direct {v2, v1, p0, v0}, Lio/dronefleet/mavlink/slugs/CpuLoad;-><init>(III)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/CpuLoad;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    .line 113
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    iget v1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    iget v1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    iget p0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final batvolt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery Voltage"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    return v0
.end method

.method public final ctrlload()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control DSC Load"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 63
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/CpuLoad;

    .line 83
    iget v2, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 84
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 85
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sensload()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor DSC Load"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 51
    iget v0, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpuLoad{sensload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->sensload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ctrlload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->ctrlload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batvolt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad;->batvolt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
