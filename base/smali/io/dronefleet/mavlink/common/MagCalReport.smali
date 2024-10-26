.class public final Lio/dronefleet/mavlink/common/MagCalReport;
.super Ljava/lang/Object;
.source "MagCalReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x24
    description = "Reports results of completed compass calibration. Sent until MAG_CAL_ACK\n                received."
    id = 0xc0
.end annotation


# instance fields
.field private final autosaved:I

.field private final calMask:I

.field private final calStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final compassId:I

.field private final diagX:F

.field private final diagY:F

.field private final diagZ:F

.field private final fitness:F

.field private final newOrientation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private final offdiagX:F

.field private final offdiagY:F

.field private final offdiagZ:F

.field private final ofsX:F

.field private final ofsY:F

.field private final ofsZ:F

.field private final oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private final orientationConfidence:F

.field private final scaleFactor:F


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFFFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;IFFFFFFFFFFF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;F)V"
        }
    .end annotation

    move-object v0, p0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    move v1, p2

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    move-object v1, p3

    .line 69
    iput-object v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p4

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    move v1, p5

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    move v1, p6

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    move v1, p7

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    move v1, p8

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    move v1, p9

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    move v1, p10

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    move v1, p11

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    move v1, p12

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    move v1, p13

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    move/from16 v1, p14

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    move/from16 v1, p15

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    move-object/from16 v1, p16

    .line 82
    iput-object v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p17

    .line 83
    iput-object v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p18

    .line 84
    iput v1, v0, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFFFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/common/MagCalReport$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p18}, Lio/dronefleet/mavlink/common/MagCalReport;-><init>(IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFFFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 92
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/MagCalReport;
    .locals 21

    move-object/from16 v0, p0

    .line 396
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 397
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 398
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 399
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 400
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 401
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 402
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 403
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 404
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 405
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 406
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 407
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 408
    const-class v1, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v5, 0x1

    invoke-static {v1, v0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 409
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    move/from16 v20, v2

    move v2, v5

    move v5, v1

    .line 410
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 411
    const-class v1, Lio/dronefleet/mavlink/common/MavSensorOrientation;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v17

    .line 412
    const-class v1, Lio/dronefleet/mavlink/common/MavSensorOrientation;

    invoke-static {v1, v0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v18

    .line 413
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v19

    .line 414
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalReport;

    move-object v1, v0

    move/from16 v2, v20

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/MagCalReport;-><init>(IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFFFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;F)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/MagCalReport;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x36

    .line 418
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 419
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 420
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 425
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 429
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    const-class v1, Lio/dronefleet/mavlink/common/MagCalStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 432
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 433
    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 434
    const-class v1, Lio/dronefleet/mavlink/common/MavSensorOrientation;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 435
    const-class v1, Lio/dronefleet/mavlink/common/MavSensorOrientation;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    iget p0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final autosaved()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0=requires a MAV_CMD_DO_ACCEPT_MAG_CAL, 1=saved\n                to parameters."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    return v0
.end method

.method public final calMask()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask of compasses being\n                calibrated."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 117
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    return v0
.end method

.method public final calStatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Calibration Status."
        enumType = Lio/dronefleet/mavlink/common/MagCalStatus;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 130
    iget-object v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final compassId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Compass being calibrated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    return v0
.end method

.method public final diagX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X diagonal (matrix 11)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 203
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    return v0
.end method

.method public final diagY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y diagonal (matrix 22)."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    return v0
.end method

.method public final diagZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z diagonal (matrix 33)."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 327
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/MagCalReport;

    .line 328
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 329
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 330
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 331
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 332
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 333
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 334
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 335
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 336
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 337
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 338
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 339
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 340
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 341
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 342
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 343
    :cond_10
    iget-object v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 344
    :cond_11
    iget-object v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 345
    :cond_12
    iget v2, p0, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v1

    :cond_13
    return v0

    :cond_14
    :goto_0
    return v1
.end method

.method public final fitness()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RMS milligauss residuals."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 352
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 353
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 354
    iget-object v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 355
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 356
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 357
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 358
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 359
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 360
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 361
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 362
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 363
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 364
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 365
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 366
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 367
    iget-object v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 368
    iget-object v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 369
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final newOrientation()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "orientation\n                after calibration."
        enumType = Lio/dronefleet/mavlink/common/MavSensorOrientation;
        extension = true
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 307
    iget-object v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final offdiagX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X off-diagonal (matrix 12 and 21)."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    return v0
.end method

.method public final offdiagY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y off-diagonal (matrix 13 and 31)."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 251
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    return v0
.end method

.method public final offdiagZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z off-diagonal (matrix 32 and 23)."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 263
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    return v0
.end method

.method public final ofsX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X offset."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    return v0
.end method

.method public final ofsY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y offset."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    return v0
.end method

.method public final ofsZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z offset."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 191
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    return v0
.end method

.method public final oldOrientation()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "orientation\n                before calibration."
        enumType = Lio/dronefleet/mavlink/common/MavSensorOrientation;
        extension = true
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 292
    iget-object v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final orientationConfidence()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Confidence in orientation (higher is\n                better)."
        extension = true
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 277
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    return v0
.end method

.method public final scaleFactor()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "field radius correction factor"
        extension = true
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 320
    iget v0, p0, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagCalReport{compassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->compassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autosaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->autosaved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fitness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->fitness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofsX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofsY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofsZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->ofsZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diagX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diagY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diagZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->diagZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offdiagX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offdiagY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offdiagZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->offdiagZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientationConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->orientationConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", oldOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/MagCalReport;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
