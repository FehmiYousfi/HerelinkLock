.class public final Lio/dronefleet/mavlink/common/AutopilotVersion;
.super Ljava/lang/Object;
.source "AutopilotVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb2
    description = "Version and capability of autopilot software. This should be emitted in\n                response to a request with MAV_CMD_REQUEST_MESSAGE."
    id = 0x94
.end annotation


# instance fields
.field private final boardVersion:J

.field private final capabilities:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavProtocolCapability;",
            ">;"
        }
    .end annotation
.end field

.field private final flightCustomVersion:[B

.field private final flightSwVersion:J

.field private final middlewareCustomVersion:[B

.field private final middlewareSwVersion:J

.field private final osCustomVersion:[B

.field private final osSwVersion:J

.field private final productId:I

.field private final uid:Ljava/math/BigInteger;

.field private final uid2:[B

.field private final vendorId:I


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJ[B[B[BIILjava/math/BigInteger;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavProtocolCapability;",
            ">;JJJJ[B[B[BII",
            "Ljava/math/BigInteger;",
            "[B)V"
        }
    .end annotation

    move-object v0, p0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 56
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    move-wide v1, p2

    .line 57
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    move-wide v1, p4

    .line 58
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    move-wide v1, p6

    .line 59
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    move-wide v1, p8

    .line 60
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    move-object v1, p10

    .line 61
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    move-object v1, p11

    .line 62
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    move-object v1, p12

    .line 63
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    move/from16 v1, p13

    .line 64
    iput v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    move/from16 v1, p14

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    move-object/from16 v1, p15

    .line 66
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    move-object/from16 v1, p16

    .line 67
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJ[B[B[BIILjava/math/BigInteger;[BLio/dronefleet/mavlink/common/AutopilotVersion$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p16}, Lio/dronefleet/mavlink/common/AutopilotVersion;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJ[B[B[BIILjava/math/BigInteger;[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AutopilotVersion;
    .locals 20

    move-object/from16 v0, p0

    .line 301
    const-class v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 302
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v18

    .line 303
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 304
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    .line 305
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 306
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    .line 307
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 308
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 309
    invoke-static {v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v13

    .line 310
    invoke-static {v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v14

    .line 311
    invoke-static {v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v15

    const/16 v1, 0x12

    .line 312
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v19

    .line 313
    new-instance v0, Lio/dronefleet/mavlink/common/AutopilotVersion;

    move-object v3, v0

    invoke-direct/range {v3 .. v19}, Lio/dronefleet/mavlink/common/AutopilotVersion;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJ[B[B[BIILjava/math/BigInteger;[B)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AutopilotVersion;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x4e

    .line 317
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 318
    const-class v1, Lio/dronefleet/mavlink/common/MavProtocolCapability;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 319
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 321
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 323
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 324
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 325
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 326
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    invoke-static {v1, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    invoke-static {v1, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 328
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    invoke-static {v1, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    iget-object p0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final boardVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "HW / board version (last 8 bits should be\n                silicon ID, if any). The first 16 bits of this field specify\n                https://github.com/PX4/PX4-Bootloader/blob/master/board_types.txt"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 139
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    return-wide v0
.end method

.method public final capabilities()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavProtocolCapability;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of capabilities"
        enumType = Lio/dronefleet/mavlink/common/MavProtocolCapability;
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 88
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 250
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AutopilotVersion;

    .line 251
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 252
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 253
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 254
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 255
    :cond_5
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 256
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 257
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 258
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 259
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 260
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 261
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 262
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

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

.method public final flightCustomVersion()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Custom version field, commonly the\n                first 8 bytes of the git hash. This is not an unique identifier, but should allow to\n                identify the commit using the main version number even for very large code bases."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 156
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    return-object v0
.end method

.method public final flightSwVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Firmware version number"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 100
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 269
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 270
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 271
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 272
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 273
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 274
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 275
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 276
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 277
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 278
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 279
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 280
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final middlewareCustomVersion()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Custom version field, commonly\n                the first 8 bytes of the git hash. This is not an unique identifier, but should\n                allow to identify the commit using the main version number even for very large code\n                bases."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 174
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    return-object v0
.end method

.method public final middlewareSwVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Middleware version number"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 112
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    return-wide v0
.end method

.method public final osCustomVersion()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Custom version field, commonly the\n                first 8 bytes of the git hash. This is not an unique identifier, but should allow to\n                identify the commit using the main version number even for very large code bases."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 191
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    return-object v0
.end method

.method public final osSwVersion()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Operating system version number"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 124
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    return-wide v0
.end method

.method public final productId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the product"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutopilotVersion{capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flightSwVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightSwVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", middlewareSwVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareSwVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", osSwVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osSwVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", boardVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->boardVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flightCustomVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->flightCustomVersion:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", middlewareCustomVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->middlewareCustomVersion:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", osCustomVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->osCustomVersion:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uid()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UID if provided by hardware (see uid2)"
        position = 0xb
        unitSize = 0x8
    .end annotation

    .line 227
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final uid2()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x12
        description = "UID if provided by hardware (supersedes the uid\n                field. If this is non-zero, use this field, otherwise use uid)"
        extension = true
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 243
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->uid2:[B

    return-object v0
.end method

.method public final vendorId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the board vendor"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 203
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotVersion;->vendorId:I

    return v0
.end method
