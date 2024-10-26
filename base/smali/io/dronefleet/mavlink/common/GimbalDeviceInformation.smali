.class public final Lio/dronefleet/mavlink/common/GimbalDeviceInformation;
.super Ljava/lang/Object;
.source "GimbalDeviceInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x4a
    description = "Information about a low level gimbal. This message should be requested by\n                the gimbal manager or a ground station using MAV_CMD_REQUEST_MESSAGE. The maximum\n                angles and rates are the limits by hardware. However, the limits by software used\n                are likely different/smaller and dependent on mode/settings/etc.."
    id = 0x11b
.end annotation


# instance fields
.field private final capFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final customCapFlags:I

.field private final customName:Ljava/lang/String;

.field private final firmwareVersion:J

.field private final hardwareVersion:J

.field private final modelName:Ljava/lang/String;

.field private final pitchMax:F

.field private final pitchMin:F

.field private final rollMax:F

.field private final rollMin:F

.field private final timeBootMs:J

.field private final uid:Ljava/math/BigInteger;

.field private final vendorName:Ljava/lang/String;

.field private final yawMax:F

.field private final yawMin:F


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IFFFFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/math/BigInteger;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;",
            ">;IFFFFFF)V"
        }
    .end annotation

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 66
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    move-object v1, p3

    .line 67
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    move-object v1, p4

    .line 68
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    move-object v1, p5

    .line 69
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    move-wide v1, p6

    .line 70
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    move-wide v1, p8

    .line 71
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    move-object v1, p10

    .line 72
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    move-object v1, p11

    .line 73
    iput-object v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p12

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    move/from16 v1, p13

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    move/from16 v1, p14

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    move/from16 v1, p15

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    move/from16 v1, p16

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    move/from16 v1, p17

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    move/from16 v1, p18

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IFFFFFFLio/dronefleet/mavlink/common/GimbalDeviceInformation$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p18}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 88
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation;
    .locals 20

    move-object/from16 v0, p0

    .line 354
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v11

    .line 355
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 356
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    .line 357
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 358
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 359
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 360
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 361
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 362
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 363
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v19

    .line 364
    const-class v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v4, 0x2

    invoke-static {v1, v0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v12

    .line 365
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    const/16 v1, 0x20

    .line 366
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v6

    .line 369
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;

    move-object v1, v0

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IFFFFFF)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GimbalDeviceInformation;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x90

    .line 373
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 375
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 376
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 377
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 378
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 379
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 380
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 381
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 382
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 383
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 384
    const-class v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 386
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    iget-object p0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final capFlags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of gimbal capability flags."
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 196
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final customCapFlags()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap for use for\n                gimbal-specific capability flags."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    return v0
.end method

.method public final customName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Custom name of the gimbal given to it by the\n                user."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 141
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 294
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;

    .line 295
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 296
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 297
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 298
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 299
    :cond_5
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 300
    :cond_6
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 301
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 302
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 303
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 304
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 305
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 306
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 307
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 308
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 309
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_0
    return v1
.end method

.method public final firmwareVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version of the gimbal firmware, encoded\n                as: (Dev & 0xff) << 24 | (Patch & 0xff) << 16 | (Minor &\n                0xff) << 8 | (Major & 0xff)."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 156
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    return-wide v0
.end method

.method public final hardwareVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version of the gimbal hardware, encoded\n                as: (Dev & 0xff) << 24 | (Patch & 0xff) << 16 | (Minor &\n                0xff) << 8 | (Major & 0xff)."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 171
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 316
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 317
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 318
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 319
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 320
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 321
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 322
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 323
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 324
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 325
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 326
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 327
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 328
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final modelName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the gimbal model."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 127
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public final pitchMax()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum hardware pitch angle (positive:\n                up, negative: down)"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    return v0
.end method

.method public final pitchMin()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum hardware pitch angle (positive:\n                up, negative: down)"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    return v0
.end method

.method public final rollMax()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum hardware roll angle (positive:\n                rolling to the right, negative: rolling to the left)"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 235
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    return v0
.end method

.method public final rollMin()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum hardware roll angle (positive:\n                rolling to the right, negative: rolling to the left)"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 101
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GimbalDeviceInformation{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vendorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firmwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->firmwareVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hardwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->hardwareVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customCapFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->customCapFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rollMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rollMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->rollMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitchMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitchMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->pitchMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uid()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UID of gimbal hardware (0 if unknown)."
        position = 0x7
        unitSize = 0x8
    .end annotation

    .line 183
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->uid:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final vendorName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the gimbal vendor."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 114
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public final yawMax()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum hardware yaw angle (positive: to\n                the right, negative: to the left)"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 287
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMax:F

    return v0
.end method

.method public final yawMin()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum hardware yaw angle (positive: to\n                the right, negative: to the left)"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 274
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;->yawMin:F

    return v0
.end method
