.class public final Lio/dronefleet/mavlink/ardupilotmega/Data64;
.super Ljava/lang/Object;
.source "Data64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/Data64$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb5
    description = "Data packet, size 64."
    id = 0xab
.end annotation


# instance fields
.field private final data:[B

.field private final len:I

.field private final type:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    .line 30
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    .line 31
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLio/dronefleet/mavlink/ardupilotmega/Data64$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/ardupilotmega/Data64;-><init>(II[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/Data64$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Data64$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/Data64$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/Data64;
    .locals 3

    .line 107
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v2, 0x40

    .line 109
    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 110
    new-instance v2, Lio/dronefleet/mavlink/ardupilotmega/Data64;

    invoke-direct {v2, v0, v1, p0}, Lio/dronefleet/mavlink/ardupilotmega/Data64;-><init>(II[B)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/Data64;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x42

    .line 114
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

    const/16 v1, 0x40

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final data()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x40
        description = "Raw data."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 76
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/Data64;

    .line 84
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 85
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 86
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

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

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 95
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final len()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data length."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 63
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data64{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data type."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 51
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Data64;->type:I

    return v0
.end method
