.class public final Lio/dronefleet/mavlink/common/AisVessel;
.super Ljava/lang/Object;
.source "AisVessel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AisVessel$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf3
    description = "The location and information of an AIS vessel"
    id = 0x12d
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final callsign:Ljava/lang/String;

.field private final cog:I

.field private final dimensionBow:I

.field private final dimensionPort:I

.field private final dimensionStarboard:I

.field private final dimensionStern:I

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final heading:I

.field private final lat:I

.field private final lon:I

.field private final mmsi:J

.field private final name:Ljava/lang/String;

.field private final navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisNavStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final tslc:I

.field private final turnRate:I

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisType;",
            ">;"
        }
    .end annotation
.end field

.field private final velocity:I


# direct methods
.method private constructor <init>(JIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Ljava/lang/String;ILio/dronefleet/mavlink/util/EnumValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIIIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisNavStatus;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisType;",
            ">;IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisFlags;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 70
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    move v1, p3

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    move v1, p4

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    move v1, p5

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    move v1, p6

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    move v1, p7

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    move v1, p8

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    move-object v1, p9

    .line 77
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    move-object v1, p10

    .line 78
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p11

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    move v1, p12

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    move/from16 v1, p13

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    move/from16 v1, p14

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    move-object/from16 v1, p15

    .line 83
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 84
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    move/from16 v1, p17

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    move-object/from16 v1, p18

    .line 86
    iput-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(JIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Ljava/lang/String;ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/AisVessel$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p18}, Lio/dronefleet/mavlink/common/AisVessel;-><init>(JIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Ljava/lang/String;ILio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 94
    new-instance v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AisVessel$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AisVessel;
    .locals 20

    move-object/from16 v0, p0

    .line 385
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 386
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 387
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 388
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 389
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 390
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 391
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 392
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 393
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v18

    .line 394
    const-class v1, Lio/dronefleet/mavlink/common/AisFlags;

    const/4 v9, 0x2

    invoke-static {v1, v0, v9}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v19

    .line 395
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 396
    const-class v1, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v11, 0x1

    invoke-static {v1, v0, v11}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v10

    .line 397
    const-class v1, Lio/dronefleet/mavlink/common/AisType;

    invoke-static {v1, v0, v11}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v11

    .line 398
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 399
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v15

    const/4 v1, 0x7

    .line 400
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v16

    const/16 v1, 0x14

    .line 401
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v17

    .line 402
    new-instance v0, Lio/dronefleet/mavlink/common/AisVessel;

    move-object v1, v0

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/AisVessel;-><init>(JIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Ljava/lang/String;ILio/dronefleet/mavlink/util/EnumValue;)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AisVessel;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x3a

    .line 406
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 407
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 408
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 409
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 410
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 411
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 412
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 413
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 414
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 415
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 416
    const-class v1, Lio/dronefleet/mavlink/common/AisFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 417
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 418
    const-class v1, Lio/dronefleet/mavlink/common/AisNavStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 419
    const-class v1, Lio/dronefleet/mavlink/common/AisType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 420
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 421
    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 422
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    iget-object p0, p0, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final callsign()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x7
        description = "The vessel callsign"
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 273
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    return-object v0
.end method

.method public final cog()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 144
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    return v0
.end method

.method public final dimensionBow()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon location to\n                bow"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    return v0
.end method

.method public final dimensionPort()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon location to\n                port side"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    return v0
.end method

.method public final dimensionStarboard()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon\n                location to starboard side"
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 260
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    return v0
.end method

.method public final dimensionStern()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon location\n                to stern"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 234
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 319
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AisVessel;

    .line 320
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 321
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 322
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 323
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 324
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 325
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 326
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 327
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 328
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 329
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 330
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 331
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 332
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 333
    :cond_e
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 334
    :cond_f
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 335
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 336
    :cond_11
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0

    :cond_13
    :goto_0
    return v1
.end method

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask to\n                indicate various statuses including valid data fields"
        enumType = Lio/dronefleet/mavlink/common/AisFlags;
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 312
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 343
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 344
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 345
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 346
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 347
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 348
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 349
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 350
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 351
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 352
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 353
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 354
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 355
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 356
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 357
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 358
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final heading()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True heading"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 156
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    return v0
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 119
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    return v0
.end method

.method public final mmsi()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mobile Marine Service Identifier, 9 decimal digits"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 106
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    return-wide v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "The vessel name"
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 286
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final navigationalStatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisNavStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Navigational\n                status"
        enumType = Lio/dronefleet/mavlink/common/AisNavStatus;
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 195
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AisVessel{mmsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->mmsi:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->cog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->heading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", turnRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navigationalStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dimensionBow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionBow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dimensionStern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dimensionPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dimensionStarboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->dimensionStarboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callsign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->callsign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tslc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AisVessel;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tslc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since last communication in seconds"
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 298
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->tslc:I

    return v0
.end method

.method public final turnRate()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Turn rate"
        position = 0x8
        signed = true
        unitSize = 0x1
    .end annotation

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->turnRate:I

    return v0
.end method

.method public final type()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of vessels"
        enumType = Lio/dronefleet/mavlink/common/AisType;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 208
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final velocity()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed over ground"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/common/AisVessel;->velocity:I

    return v0
.end method
