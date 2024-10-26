.class public final Lio/dronefleet/mavlink/common/ResourceRequest;
.super Ljava/lang/Object;
.source "ResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x48
    description = "The autopilot is requesting a resource (file, binary, other type of data)"
    id = 0x8e
.end annotation


# instance fields
.field private final requestId:I

.field private final storage:[B

.field private final transferType:I

.field private final uri:[B

.field private final uriType:I


# direct methods
.method private constructor <init>(II[BI[B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    .line 35
    iput p2, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    .line 36
    iput-object p3, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    .line 37
    iput p4, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    .line 38
    iput-object p5, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

    return-void
.end method

.method synthetic constructor <init>(II[BI[BLio/dronefleet/mavlink/common/ResourceRequest$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/ResourceRequest;-><init>(II[BI[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ResourceRequest$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ResourceRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ResourceRequest;
    .locals 6

    .line 153
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 154
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v0, 0x78

    .line 155
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    .line 156
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 157
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v5

    .line 158
    new-instance p0, Lio/dronefleet/mavlink/common/ResourceRequest;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ResourceRequest;-><init>(II[BI[B)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ResourceRequest;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xf3

    .line 162
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    const/16 v2, 0x78

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    iget-object p0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

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

    if-eqz p1, :cond_7

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ResourceRequest;

    .line 124
    iget v2, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 125
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 126
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 127
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 128
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

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

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 137
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 139
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final requestId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID. This ID should be re-used when\n                sending back URI contents"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 59
    iget v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    return v0
.end method

.method public final storage()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x78
        description = "The storage path the autopilot wants the URI\n                to be stored in. Will only be valid if the transfer_type has a storage associated\n                (e.g. MAVLink FTP)."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 116
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceRequest{requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uriType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transferType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->storage:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transferType()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The way the autopilot wants to receive the\n                URI. 0 = MAVLink FTP. 1 = binary stream."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 100
    iget v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->transferType:I

    return v0
.end method

.method public final uri()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x78
        description = "The requested unique resource identifier (URI). It\n                is not necessarily a straight domain name (depends on the URI type enum)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 87
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uri:[B

    return-object v0
.end method

.method public final uriType()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The type of requested URI. 0 = a file via URL. 1 =\n                a UAVCAN binary"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 72
    iget v0, p0, Lio/dronefleet/mavlink/common/ResourceRequest;->uriType:I

    return v0
.end method
