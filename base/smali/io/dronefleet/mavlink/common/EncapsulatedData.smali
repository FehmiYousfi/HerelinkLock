.class public final Lio/dronefleet/mavlink/common/EncapsulatedData;
.super Ljava/lang/Object;
.source "EncapsulatedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xdf
    description = "Data packet for images sent using the Image Transmission Protocol:\n                https://mavlink.io/en/services/image_transmission.html."
    id = 0x83
.end annotation


# instance fields
.field private final data:[B

.field private final seqnr:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    .line 30
    iput-object p2, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    return-void
.end method

.method synthetic constructor <init>(I[BLio/dronefleet/mavlink/common/EncapsulatedData$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/common/EncapsulatedData;-><init>(I[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/EncapsulatedData$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/EncapsulatedData;
    .locals 2

    .line 92
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0xfd

    .line 93
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 94
    new-instance v1, Lio/dronefleet/mavlink/common/EncapsulatedData;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/common/EncapsulatedData;-><init>(I[B)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/EncapsulatedData;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xff

    .line 98
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    iget v1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object p0, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    const/16 v1, 0xfd

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final data()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xfd
        description = "image data bytes"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 64
    iget-object v0, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/EncapsulatedData;

    .line 72
    iget v2, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 73
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 81
    iget-object v0, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final seqnr()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "sequence number (starting with 0 on every\n                transmission)"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 51
    iget v0, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncapsulatedData{seqnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->seqnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/EncapsulatedData;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
