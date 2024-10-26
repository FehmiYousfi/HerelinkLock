.class public final Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;
.super Ljava/lang/Object;
.source "SlugsCameraOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x2d
    description = "Orders generated to the SLUGS camera mount."
    id = 0xb8
.end annotation


# instance fields
.field private final movehome:I

.field private final pan:I

.field private final target:I

.field private final tilt:I

.field private final zoom:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    .line 34
    iput p2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    .line 35
    iput p3, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    .line 36
    iput p4, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    .line 37
    iput p5, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILio/dronefleet/mavlink/slugs/SlugsCameraOrder$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;-><init>(IIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;
    .locals 6

    .line 150
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 151
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 152
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 153
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 154
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 155
    new-instance p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;-><init>(IIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x5

    .line 159
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    iget p0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

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
    check-cast p1, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;

    .line 121
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 122
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 123
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 124
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 125
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

.method public hashCode()I
    .locals 2

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 133
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 134
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final movehome()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Orders the camera mount to move home. The other\n                fields are ignored when this field is set. 1: move home, 0 ignored"
        position = 0x5
        signed = true
        unitSize = 0x1
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

    return v0
.end method

.method public final pan()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order the mount to pan: -1 left, 0 No pan motion, +1\n                right"
        position = 0x2
        signed = true
        unitSize = 0x1
    .end annotation

    .line 71
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    return v0
.end method

.method public final target()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system reporting the action"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 57
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    return v0
.end method

.method public final tilt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order the mount to tilt: -1 down, 0 No tilt motion, +1\n                up"
        position = 0x3
        signed = true
        unitSize = 0x1
    .end annotation

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlugsCameraOrder{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->pan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->tilt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", movehome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->movehome:I

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
        description = "Order the zoom values 0 to 10"
        position = 0x4
        signed = true
        unitSize = 0x1
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;->zoom:I

    return v0
.end method
