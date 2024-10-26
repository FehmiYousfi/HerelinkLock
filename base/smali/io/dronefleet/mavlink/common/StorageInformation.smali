.class public final Lio/dronefleet/mavlink/common/StorageInformation;
.super Ljava/lang/Object;
.source "StorageInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb3
    description = "Information about a storage medium. This message is sent in response to a\n                request with MAV_CMD_REQUEST_MESSAGE and whenever the status of the storage changes\n                (STORAGE_STATUS). Use MAV_CMD_REQUEST_MESSAGE.param2 to indicate the index/id of\n                requested storage: 0 for all, 1 for first, 2 for second, etc."
    id = 0x105
.end annotation


# instance fields
.field private final availableCapacity:F

.field private final name:Ljava/lang/String;

.field private final readSpeed:F

.field private final status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/StorageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final storageCount:I

.field private final storageId:I

.field private final timeBootMs:J

.field private final totalCapacity:F

.field private final type:I

.field private final usedCapacity:F

.field private final writeSpeed:F


# direct methods
.method private constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;FFFFFILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/StorageStatus;",
            ">;FFFFFI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    .line 57
    iput p3, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    .line 58
    iput p4, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    .line 59
    iput-object p5, p0, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    .line 60
    iput p6, p0, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    .line 61
    iput p7, p0, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    .line 62
    iput p8, p0, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    .line 63
    iput p9, p0, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    .line 64
    iput p10, p0, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    .line 65
    iput p11, p0, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    .line 66
    iput-object p12, p0, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;FFFFFILjava/lang/String;Lio/dronefleet/mavlink/common/StorageInformation$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/common/StorageInformation;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;FFFFFILjava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/StorageInformation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/StorageInformation;
    .locals 13

    .line 276
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 277
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 278
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 279
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 280
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 281
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 282
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 283
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 284
    const-class v0, Lio/dronefleet/mavlink/common/StorageStatus;

    const/4 v5, 0x1

    invoke-static {v0, p0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 285
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v11

    const/16 v0, 0x20

    .line 286
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v12

    .line 287
    new-instance p0, Lio/dronefleet/mavlink/common/StorageInformation;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/StorageInformation;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;FFFFFILjava/lang/String;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/StorageInformation;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x3c

    .line 291
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 292
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 300
    const-class v1, Lio/dronefleet/mavlink/common/StorageStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 301
    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 302
    iget-object p0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final availableCapacity()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Available storage capacity. If\n                storage is not ready (STORAGE_STATUS_READY) value will be ignored."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 165
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 228
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/StorageInformation;

    .line 229
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 230
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 231
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 232
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 233
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 234
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 235
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 236
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 237
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 238
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 239
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 246
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget-object v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 251
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 254
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 255
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 256
    iget-object v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Textual storage name to be used in UI (microSD 1,\n                Internal Memory, etc.) This is a NULL terminated string. If it is exactly 32\n                characters long, add a terminating NULL. If this string is empty, the generic type\n                is shown to the user."
        extension = true
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 221
    iget-object v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final readSpeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Read speed."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 177
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    return v0
.end method

.method public final status()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/StorageStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status of storage"
        enumType = Lio/dronefleet/mavlink/common/StorageStatus;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 125
    iget-object v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final storageCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of storage devices"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    return v0
.end method

.method public final storageId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Storage ID (1 for first, 2 for\n                second, etc.)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 100
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 87
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageInformation{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", storageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->storageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", usedCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", availableCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->availableCapacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", readSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->readSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", writeSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/StorageInformation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalCapacity()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total capacity. If storage is not\n                ready (STORAGE_STATUS_READY) value will be ignored."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->totalCapacity:F

    return v0
.end method

.method public final type()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of storage"
        extension = true
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->type:I

    return v0
.end method

.method public final usedCapacity()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Used capacity. If storage is not\n                ready (STORAGE_STATUS_READY) value will be ignored."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->usedCapacity:F

    return v0
.end method

.method public final writeSpeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Write speed."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/common/StorageInformation;->writeSpeed:F

    return v0
.end method
