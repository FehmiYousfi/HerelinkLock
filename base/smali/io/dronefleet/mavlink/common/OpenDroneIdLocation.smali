.class public final Lio/dronefleet/mavlink/common/OpenDroneIdLocation;
.super Ljava/lang/Object;
.source "OpenDroneIdLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xfe
    description = "Data for filling the OpenDroneID Location message. The float data types are\n                32-bit IEEE 754. The Location message provides the location, altitude, direction and\n                speed of the aircraft."
    id = 0x3265
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final altitudeBarometric:F

.field private final altitudeGeodetic:F

.field private final barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;"
        }
    .end annotation
.end field

.field private final direction:I

.field private final height:F

.field private final heightReference:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHeightRef;",
            ">;"
        }
    .end annotation
.end field

.field private final horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHorAcc;",
            ">;"
        }
    .end annotation
.end field

.field private final idOrMac:[B

.field private final latitude:I

.field private final longitude:I

.field private final speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;",
            ">;"
        }
    .end annotation
.end field

.field private final speedHorizontal:I

.field private final speedVertical:I

.field private final status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final targetComponent:I

.field private final targetSystem:I

.field private final timestamp:F

.field private final timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidTimeAcc;",
            ">;"
        }
    .end annotation
.end field

.field private final verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;IIIIIFFLio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidStatus;",
            ">;IIIIIFF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHeightRef;",
            ">;F",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHorAcc;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;",
            ">;F",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidTimeAcc;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    move v1, p2

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p5

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    move v1, p6

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    move v1, p7

    .line 86
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    move v1, p8

    .line 87
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    move v1, p9

    .line 88
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    move v1, p10

    .line 89
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    move v1, p11

    .line 90
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p13

    .line 92
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p18

    .line 97
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    move-object/from16 v1, p19

    .line 98
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;IIIIIFFLio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/OpenDroneIdLocation$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p19}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;IIIIIFFLio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 106
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation;
    .locals 22

    move-object/from16 v0, p0

    .line 456
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 457
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 458
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 459
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 460
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 461
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v19

    .line 462
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 463
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 464
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 465
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 466
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/16 v1, 0x14

    .line 467
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 468
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidStatus;

    const/4 v15, 0x1

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 469
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v13

    .line 470
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v1

    move/from16 v21, v2

    move v2, v15

    move-object v15, v1

    .line 471
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v16

    .line 472
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v17

    .line 473
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v18

    .line 474
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidTimeAcc;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v20

    .line 475
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;

    move-object v1, v0

    move/from16 v2, v21

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;IIIIIFFLio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpenDroneIdLocation;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x3b

    .line 479
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 481
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 482
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 483
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 484
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 485
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 486
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 487
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 488
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 489
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 490
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 491
    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 492
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 493
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidHeightRef;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 494
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_2
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 495
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_3
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 496
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_4
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 497
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_5
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 498
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidTimeAcc;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_6
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final altitudeBarometric()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The altitude\n                calculated from the barometric pressue. Reference is against 29.92inHg or 1013.2mb.\n                If unknown: -1000 m."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    return v0
.end method

.method public final altitudeGeodetic()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The geodetic\n                altitude as defined by WGS84. If unknown: -1000 m."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    return v0
.end method

.method public final barometerAccuracy()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the barometric altitude."
        enumType = Lio/dronefleet/mavlink/common/MavOdidVerAcc;
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 332
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final direction()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Direction over\n                ground (not heading, but direction of movement) measured clockwise from true North:\n                0 - 35999 centi-degrees. If unknown: 36100 centi-degrees."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 384
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;

    .line 385
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 386
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 387
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 388
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 389
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 390
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 391
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 392
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 393
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 394
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 395
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 396
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 397
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 398
    :cond_e
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 399
    :cond_f
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 400
    :cond_10
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 401
    :cond_11
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 402
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 403
    :cond_13
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v1

    :cond_14
    return v0

    :cond_15
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 410
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 411
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 412
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 413
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 414
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 415
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 416
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 417
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 418
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 419
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 420
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 421
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 422
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 423
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 424
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 425
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 426
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 427
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 428
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final height()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The current height of the\n                unmanned aircraft above the take-off location or the ground as indicated by\n                height_reference. If unknown: -1000 m."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 290
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    return v0
.end method

.method public final heightReference()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHeightRef;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the\n                reference point for the height field."
        enumType = Lio/dronefleet/mavlink/common/MavOdidHeightRef;
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 275
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final horizontalAccuracy()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHorAcc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the horizontal position."
        enumType = Lio/dronefleet/mavlink/common/MavOdidHorAcc;
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 304
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final idOrMac()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 146
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    return-object v0
.end method

.method public final latitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current latitude of the\n                unmanned aircraft. If unknown: 0 (both Lat/Lon)."
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    return v0
.end method

.method public final longitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current longitude of\n                the unmanned aircraft. If unknown: 0 (both Lat/Lon)."
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 233
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    return v0
.end method

.method public final speedAccuracy()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the horizontal and vertical speed."
        enumType = Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 346
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final speedHorizontal()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground speed. Positive only.\n                If unknown: 25500 cm/s. If speed is larger than 25425 cm/s, use 25425 cm/s."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    return v0
.end method

.method public final speedVertical()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The vertical speed. Up is\n                positive. If unknown: 6300 cm/s. If speed is larger than 6200 cm/s, use 6200 cm/s.\n                If lower than -6200 cm/s, use -6200 cm/s."
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 205
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    return v0
.end method

.method public final status()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates whether the\n                unmanned aircraft is on the ground or in the air."
        enumType = Lio/dronefleet/mavlink/common/MavOdidStatus;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 160
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    return v0
.end method

.method public final timestamp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds after the full\n                hour with reference to UTC time. Typically the GPS outputs a time-of-week value in\n                milliseconds. First convert that to UTC and then convert for this field using\n                ((float) (time_week_ms % (60*60*1000))) / 1000. If unknown: 0xFFFF."
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 363
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    return v0
.end method

.method public final timestampAccuracy()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidTimeAcc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the timestamps."
        enumType = Lio/dronefleet/mavlink/common/MavOdidTimeAcc;
        position = 0x14
        unitSize = 0x1
    .end annotation

    .line 377
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenDroneIdLocation{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idOrMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->idOrMac:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speedHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedHorizontal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speedVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedVertical:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitudeBarometric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeBarometric:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", altitudeGeodetic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->altitudeGeodetic:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", heightReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verticalAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", barometerAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speedAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestamp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timestampAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verticalAccuracy()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the vertical position."
        enumType = Lio/dronefleet/mavlink/common/MavOdidVerAcc;
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 318
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
