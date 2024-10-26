.class public final Lio/dronefleet/mavlink/common/CameraInformation;
.super Ljava/lang/Object;
.source "CameraInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x5c
    description = "Information about a camera. Can be requested with a MAV_CMD_REQUEST_MESSAGE\n                command."
    id = 0x103
.end annotation


# instance fields
.field private final camDefinitionUri:Ljava/lang/String;

.field private final camDefinitionVersion:I

.field private final firmwareVersion:J

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraCapFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final focalLength:F

.field private final lensId:I

.field private final modelName:[B

.field private final resolutionH:I

.field private final resolutionV:I

.field private final sensorSizeH:F

.field private final sensorSizeV:F

.field private final timeBootMs:J

.field private final vendorName:[B


# direct methods
.method private constructor <init>(J[B[BJFFFIIILio/dronefleet/mavlink/util/EnumValue;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B[BJFFFIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraCapFlags;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    .line 57
    iput-object p3, p0, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    .line 58
    iput-object p4, p0, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    .line 59
    iput-wide p5, p0, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    .line 60
    iput p7, p0, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    .line 61
    iput p8, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    .line 62
    iput p9, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    .line 63
    iput p10, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    .line 64
    iput p11, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    .line 65
    iput p12, p0, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    .line 66
    iput-object p13, p0, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 67
    iput p14, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    .line 68
    iput-object p15, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(J[B[BJFFFIIILio/dronefleet/mavlink/util/EnumValue;ILjava/lang/String;Lio/dronefleet/mavlink/common/CameraInformation$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p15}, Lio/dronefleet/mavlink/common/CameraInformation;-><init>(J[B[BJFFFIIILio/dronefleet/mavlink/util/EnumValue;ILjava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 76
    new-instance v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CameraInformation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/CameraInformation;
    .locals 18

    move-object/from16 v0, p0

    .line 308
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 309
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 310
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 311
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 312
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 313
    const-class v3, Lio/dronefleet/mavlink/common/CameraCapFlags;

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v13

    .line 314
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 315
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 316
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    const/16 v3, 0x20

    .line 317
    invoke-static {v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 318
    invoke-static {v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v12

    .line 319
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v15

    const/16 v3, 0x8c

    .line 320
    invoke-static {v0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v16

    .line 321
    new-instance v17, Lio/dronefleet/mavlink/common/CameraInformation;

    move-object/from16 v0, v17

    move-object v3, v4

    move-object v4, v12

    move v12, v15

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lio/dronefleet/mavlink/common/CameraInformation;-><init>(J[B[BJFFFIIILio/dronefleet/mavlink/util/EnumValue;ILjava/lang/String;)V

    return-object v17
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/CameraInformation;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0xeb

    .line 325
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 326
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 328
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 331
    const-class v1, Lio/dronefleet/mavlink/common/CameraCapFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 334
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 335
    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 336
    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 337
    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 338
    iget-object p0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    const/16 v1, 0x8c

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final camDefinitionUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8c
        description = "Camera definition URI (if any,\n                otherwise only basic functions will be available). HTTP- (http://) and MAVLink FTP-\n                (mavlinkftp://) formatted URIs are allowed (and both must be supported by any GCS\n                that implements the Camera Protocol)."
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 247
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    return-object v0
.end method

.method public final camDefinitionVersion()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera definition version\n                (iteration)"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 229
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 254
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/CameraInformation;

    .line 255
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 256
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 257
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 258
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 259
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 260
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 261
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 262
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 263
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 264
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 265
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 266
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 267
    :cond_d
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public final firmwareVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version of the camera firmware, encoded\n                as: (Dev & 0xff) << 24 | (Patch & 0xff) << 16 | (Minor &\n                0xff) << 8 | (Major & 0xff)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 130
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    return-wide v0
.end method

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraCapFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of\n                camera capability flags."
        enumType = Lio/dronefleet/mavlink/common/CameraCapFlags;
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 216
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final focalLength()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Focal length"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 142
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 274
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 275
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 276
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 277
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 278
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 279
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 280
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 281
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 283
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 284
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 285
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 286
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lensId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Reserved for a lens ID"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    return v0
.end method

.method public final modelName()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the camera model"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 115
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    return-object v0
.end method

.method public final resolutionH()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal image resolution"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    return v0
.end method

.method public final resolutionV()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical image resolution"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 190
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    return v0
.end method

.method public final sensorSizeH()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image sensor size horizontal"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    return v0
.end method

.method public final sensorSizeV()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image sensor size vertical"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 166
    iget v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 89
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraInformation{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vendorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->modelName:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firmwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->firmwareVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", focalLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->focalLength:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sensorSizeH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeH:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sensorSizeV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->sensorSizeV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->resolutionV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lensId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->lensId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", camDefinitionVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", camDefinitionUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraInformation;->camDefinitionUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vendorName()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the camera vendor"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 102
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraInformation;->vendorName:[B

    return-object v0
.end method
