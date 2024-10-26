.class public final Lio/dronefleet/mavlink/slugs/PtzStatus;
.super Ljava/lang/Object;
.source "PtzStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xbb
    description = "Transmits the actual Pan, Tilt and Zoom values of the camera unit"
    id = 0xc0
.end annotation


# instance fields
.field private final pan:I

.field private final tilt:I

.field private final zoom:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

    .line 30
    iput p2, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    .line 31
    iput p3, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

    return-void
.end method

.method synthetic constructor <init>(IIILio/dronefleet/mavlink/slugs/PtzStatus$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/slugs/PtzStatus;-><init>(III)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/PtzStatus;
    .locals 3

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 109
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 110
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 111
    new-instance v2, Lio/dronefleet/mavlink/slugs/PtzStatus;

    invoke-direct {v2, p0, v0, v1}, Lio/dronefleet/mavlink/slugs/PtzStatus;-><init>(III)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/PtzStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x5

    .line 115
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    iget v1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    iget v1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget p0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

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
    check-cast p1, Lio/dronefleet/mavlink/slugs/PtzStatus;

    .line 85
    iget v2, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 86
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 87
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

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

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget v0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pan()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Pan value in 10ths of degree"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 64
    iget v0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    return v0
.end method

.method public final tilt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Tilt value in 10ths of degree"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PtzStatus{zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->pan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->tilt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zoom()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The actual Zoom Value"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 51
    iget v0, p0, Lio/dronefleet/mavlink/slugs/PtzStatus;->zoom:I

    return v0
.end method
