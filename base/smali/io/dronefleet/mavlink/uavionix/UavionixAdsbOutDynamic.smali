.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;
.super Ljava/lang/Object;
.source "UavionixAdsbOutDynamic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xba
    description = "Dynamic data used to generate ADS-B out transponder data (send at 5Hz)"
    id = 0x2712
.end annotation


# instance fields
.field private final accuracyhor:J

.field private final accuracyvel:I

.field private final accuracyvert:I

.field private final baroaltmsl:I

.field private final emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsalt:I

.field private final gpsfix:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;",
            ">;"
        }
    .end annotation
.end field

.field private final gpslat:I

.field private final gpslon:I

.field private final numsats:I

.field private final squawk:I

.field private final state:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;",
            ">;"
        }
    .end annotation
.end field

.field private final utctime:J

.field private final velew:I

.field private final velns:I

.field private final velvert:I


# direct methods
.method private constructor <init>(JIIILio/dronefleet/mavlink/util/EnumValue;IIJIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;",
            ">;IIJIIIII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 62
    iput-wide v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    move v1, p3

    .line 63
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    move v1, p4

    .line 64
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    move v1, p5

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    move-object v1, p6

    .line 66
    iput-object v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p7

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    move v1, p8

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    move-wide v1, p9

    .line 69
    iput-wide v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    move v1, p11

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    move v1, p12

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    move/from16 v1, p13

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    move/from16 v1, p14

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    move/from16 v1, p15

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    move-object/from16 v1, p16

    .line 75
    iput-object v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p17

    .line 76
    iput-object v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p18

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    return-void
.end method

.method synthetic constructor <init>(JIIILio/dronefleet/mavlink/util/EnumValue;IIJIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p18}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;-><init>(JIIILio/dronefleet/mavlink/util/EnumValue;IIJIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 85
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;
    .locals 22

    move-object/from16 v0, p0

    .line 372
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 373
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 374
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 375
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 376
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 377
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 378
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 379
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 380
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 381
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 382
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 383
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;

    const/4 v7, 0x2

    invoke-static {v1, v0, v7}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v18

    .line 384
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v19

    .line 385
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    const/4 v8, 0x1

    invoke-static {v1, v0, v8}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v7

    .line 386
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    move-wide/from16 v20, v2

    move v2, v8

    move v8, v1

    .line 387
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v17

    .line 388
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;

    move-object v1, v0

    move-wide/from16 v2, v20

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;-><init>(JIIILio/dronefleet/mavlink/util/EnumValue;IIJIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x29

    .line 392
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 393
    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 394
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 396
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 397
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 399
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 400
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 401
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 403
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 404
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 405
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 406
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 407
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    iget-object p0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final accuracyhor()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal accuracy in mm (m *\n                1E-3). If unknown set to UINT32_MAX"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 196
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    return-wide v0
.end method

.method public final accuracyvel()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Velocity accuracy in mm/s (m *\n                1E-3). If unknown set to UINT16_MAX"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    return v0
.end method

.method public final accuracyvert()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical accuracy in cm. If\n                unknown set to UINT16_MAX"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    return v0
.end method

.method public final baroaltmsl()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Barometric pressure altitude (MSL)\n                relative to a standard atmosphere of 1013.2 mBar and NOT bar corrected altitude (m *\n                1E-3). (up +ve). If unknown set to INT32_MAX"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    return v0
.end method

.method public final emergencystatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Emergency status"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 277
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 309
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;

    .line 310
    iget-wide v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 311
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 312
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 313
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 314
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 315
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 316
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 317
    :cond_8
    iget-wide v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 318
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 319
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 320
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 321
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 322
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 323
    :cond_e
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 324
    :cond_f
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 325
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    return v0

    :cond_12
    :goto_0
    return v1
.end method

.method public final gpsalt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (WGS84). UP +ve. If unknown set\n                to INT32_MAX"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    return v0
.end method

.method public final gpsfix()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0-1: no\n                fix, 2: 2D fix, 3: 3D fix, 4: DGPS, 5: RTK"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 154
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final gpslat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude WGS84 (deg * 1E7). If unknown\n                set to INT32_MAX"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    return v0
.end method

.method public final gpslon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude WGS84 (deg * 1E7). If\n                unknown set to INT32_MAX"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 332
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 336
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 337
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 338
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    iget-wide v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 340
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 341
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 342
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 343
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 344
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 345
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 346
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 347
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final numsats()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If unknown set to\n                UINT8_MAX"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    return v0
.end method

.method public final squawk()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mode A code (typically 1200 [0x04B0] for VFR)"
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 302
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    return v0
.end method

.method public final state()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder dynamic input state flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 290
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavionixAdsbOutDynamic{utctime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gpslat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpslon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpslon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsalt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsalt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsfix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numsats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->numsats:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baroaltmsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->baroaltmsl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accuracyhor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyhor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accuracyvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvert:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accuracyvel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->accuracyvel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", velvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", velns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", velew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergencystatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->state:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", squawk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->squawk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final utctime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UTC time in seconds since GPS epoch (Jan\n                6, 1980). If unknown set to UINT32_MAX"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 98
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->utctime:J

    return-wide v0
.end method

.method public final velew()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "East-West velocity over ground in cm/s\n                East +ve. If unknown set to INT16_MAX"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 264
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velew:I

    return v0
.end method

.method public final velns()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "North-South velocity over ground in cm/s\n                North +ve. If unknown set to INT16_MAX"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velns:I

    return v0
.end method

.method public final velvert()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS vertical speed in cm/s. If unknown\n                set to INT16_MAX"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;->velvert:I

    return v0
.end method
