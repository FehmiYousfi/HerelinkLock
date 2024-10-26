.class public final Lio/dronefleet/mavlink/common/VideoStreamInformation;
.super Ljava/lang/Object;
.source "VideoStreamInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x6d
    description = "Information about video stream. It may be requested using\n                MAV_CMD_REQUEST_MESSAGE, where param2 indicates the video stream id: 0 for all\n                streams, 1 for first, 2 for second, etc."
    id = 0x10d
.end annotation


# instance fields
.field private final bitrate:J

.field private final count:I

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final framerate:F

.field private final hfov:I

.field private final name:Ljava/lang/String;

.field private final resolutionH:I

.field private final resolutionV:I

.field private final rotation:I

.field private final streamId:I

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamType;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FIIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;",
            ">;FIIJII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    .line 56
    iput p2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    .line 57
    iput-object p3, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    .line 58
    iput-object p4, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 59
    iput p5, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    .line 60
    iput p6, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    .line 61
    iput p7, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    .line 62
    iput-wide p8, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    .line 63
    iput p10, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    .line 64
    iput p11, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    .line 65
    iput-object p12, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    .line 66
    iput-object p13, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FIIJIILjava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/common/VideoStreamInformation$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/common/VideoStreamInformation;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FIIJIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/VideoStreamInformation;
    .locals 14

    .line 284
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 285
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 286
    const-class v0, Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 287
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 288
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 289
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 290
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 291
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 292
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 293
    const-class v0, Lio/dronefleet/mavlink/common/VideoStreamType;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    const/16 v0, 0x20

    .line 294
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0xa0

    .line 295
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v13

    .line 296
    new-instance p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/VideoStreamInformation;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FIIJIILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/VideoStreamInformation;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0xd5

    .line 300
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 301
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 302
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 303
    const-class v1, Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 304
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 305
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 306
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 308
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 309
    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    const-class v1, Lio/dronefleet/mavlink/common/VideoStreamType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 311
    iget-object v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    iget-object p0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    const/16 v1, 0xa0

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final bitrate()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bit rate."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 174
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    return-wide v0
.end method

.method public final count()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of streams available."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 233
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;

    .line 234
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 235
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 236
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 237
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 238
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 239
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 240
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 241
    :cond_8
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 242
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 243
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 244
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 245
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    :goto_0
    return v1
.end method

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of stream\n                status flags."
        enumType = Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 126
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final framerate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame rate."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 254
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 255
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 256
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 257
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 258
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 259
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 260
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 262
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 263
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final hfov()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal Field of view."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 198
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Stream name."
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 211
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final resolutionH()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal resolution."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 150
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    return v0
.end method

.method public final resolutionV()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical resolution."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 162
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    return v0
.end method

.method public final rotation()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video image rotation clockwise."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 186
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    return v0
.end method

.method public final streamId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video Stream ID (1 for first, 2\n                for second, etc.)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 87
    iget v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStreamInformation{streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", framerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->framerate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->resolutionV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->bitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hfov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->hfov:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of stream."
        enumType = Lio/dronefleet/mavlink/common/VideoStreamType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 112
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final uri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa0
        description = "Video stream URI (TCP or RTSP URI ground station\n                should connect to) or port number (UDP port ground station should listen to)."
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 226
    iget-object v0, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation;->uri:Ljava/lang/String;

    return-object v0
.end method
