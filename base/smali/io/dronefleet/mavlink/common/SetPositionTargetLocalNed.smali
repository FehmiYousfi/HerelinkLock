.class public final Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;
.super Ljava/lang/Object;
.source "SetPositionTargetLocalNed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x8f
    description = "Sets a desired vehicle position in a local north-east-down coordinate\n                frame. Used by an external controller to command the vehicle (manual controller or\n                other system)."
    id = 0x54
.end annotation


# instance fields
.field private final afx:F

.field private final afy:F

.field private final afz:F

.field private final coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final targetComponent:I

.field private final targetSystem:I

.field private final timeBootMs:J

.field private final typeMask:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;"
        }
    .end annotation
.end field

.field private final vx:F

.field private final vy:F

.field private final vz:F

.field private final x:F

.field private final y:F

.field private final yaw:F

.field private final yawRate:F

.field private final z:F


# direct methods
.method private constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;FFFFFFFFFFF)V"
        }
    .end annotation

    move-object v0, p0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 64
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    move v1, p3

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    move v1, p4

    .line 66
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    move-object v1, p5

    .line 67
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    move-object v1, p6

    .line 68
    iput-object v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p7

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    move v1, p8

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    move v1, p9

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    move v1, p10

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    move v1, p11

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    move v1, p12

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    move/from16 v1, p13

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    move/from16 v1, p14

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    move/from16 v1, p15

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    move/from16 v1, p16

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    move/from16 v1, p17

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    return-void
.end method

.method synthetic constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFLio/dronefleet/mavlink/common/SetPositionTargetLocalNed$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p17}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 87
    new-instance v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;
    .locals 19

    move-object/from16 v0, p0

    .line 360
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 361
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 362
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 363
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 364
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 365
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 366
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 367
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 368
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 369
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 370
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 371
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v18

    .line 372
    const-class v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    const/4 v4, 0x2

    invoke-static {v1, v0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v7

    .line 373
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 374
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 375
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v6, 0x1

    invoke-static {v1, v0, v6}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 376
    new-instance v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;

    move-object v1, v0

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFF)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x35

    .line 380
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 381
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 382
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 383
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 384
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 386
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 389
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 390
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 391
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    const-class v1, Lio/dronefleet/mavlink/common/PositionTargetTypemask;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 394
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 395
    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 396
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    const/4 p0, 0x1

    invoke-static {v1, v3, p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final afx()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    return v0
.end method

.method public final afy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    return v0
.end method

.method public final afz()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 266
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    return v0
.end method

.method public final coordinateFrame()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Valid options are:\n                MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8,\n                MAV_FRAME_BODY_OFFSET_NED = 9"
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 140
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 297
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;

    .line 298
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 299
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 300
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 301
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 302
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 303
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 304
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 305
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 306
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 307
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 308
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 309
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 310
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 311
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 312
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 313
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

.method public hashCode()I
    .locals 2

    .line 320
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 321
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 322
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 323
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 324
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 325
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 326
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 327
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 328
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 100
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetPositionTargetLocalNed{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coordinateFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", afx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", afy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", afz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->afz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeMask()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/PositionTargetTypemask;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 154
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final vx()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X velocity in NED frame"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 203
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vx:F

    return v0
.end method

.method public final vy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y velocity in NED frame"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vy:F

    return v0
.end method

.method public final vz()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z velocity in NED frame"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->vz:F

    return v0
.end method

.method public final x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position in NED frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 166
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->x:F

    return v0
.end method

.method public final y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position in NED frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->y:F

    return v0
.end method

.method public final yaw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw setpoint"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 278
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yaw:F

    return v0
.end method

.method public final yawRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw rate setpoint"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 290
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->yawRate:F

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position in NED frame (note, altitude is\n                negative in NED)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 191
    iget v0, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;->z:F

    return v0
.end method
