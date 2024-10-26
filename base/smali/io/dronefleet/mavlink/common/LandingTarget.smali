.class public final Lio/dronefleet/mavlink/common/LandingTarget;
.super Ljava/lang/Object;
.source "LandingTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc8
    description = "The location of a landing target. See:\n                https://mavlink.io/en/services/landing_target.html"
    id = 0x95
.end annotation


# instance fields
.field private final angleX:F

.field private final angleY:F

.field private final distance:F

.field private final frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final positionValid:I

.field private final q:[F

.field private final sizeX:F

.field private final sizeY:F

.field private final targetNum:I

.field private final timeUsec:Ljava/math/BigInteger;

.field private final type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/LandingTargetType;",
            ">;"
        }
    .end annotation
.end field

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;FFFFFFFF[FLio/dronefleet/mavlink/util/EnumValue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;FFFFFFFF[F",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/LandingTargetType;",
            ">;I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    .line 60
    iput p2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    .line 61
    iput-object p3, p0, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    .line 62
    iput p4, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    .line 63
    iput p5, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    .line 64
    iput p6, p0, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    .line 65
    iput p7, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    .line 66
    iput p8, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    .line 67
    iput p9, p0, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    .line 68
    iput p10, p0, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    .line 69
    iput p11, p0, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    .line 70
    iput-object p12, p0, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    .line 71
    iput-object p13, p0, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    .line 72
    iput p14, p0, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;FFFFFFFF[FLio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/common/LandingTarget$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p14}, Lio/dronefleet/mavlink/common/LandingTarget;-><init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;FFFFFFFF[FLio/dronefleet/mavlink/util/EnumValue;I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/LandingTarget;
    .locals 17

    move-object/from16 v0, p0

    .line 332
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 333
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 334
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 335
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 336
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 337
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 338
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 339
    const-class v3, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v9, 0x1

    invoke-static {v3, v0, v9}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 340
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 341
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 342
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    const/16 v13, 0x10

    .line 343
    invoke-static {v0, v13}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v13

    .line 344
    const-class v14, Lio/dronefleet/mavlink/common/LandingTargetType;

    invoke-static {v14, v0, v9}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v14

    .line 345
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 346
    new-instance v16, Lio/dronefleet/mavlink/common/LandingTarget;

    move-object/from16 v0, v16

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    invoke-direct/range {v0 .. v14}, Lio/dronefleet/mavlink/common/LandingTarget;-><init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;FFFFFFFF[FLio/dronefleet/mavlink/util/EnumValue;I)V

    return-object v16
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/LandingTarget;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x3c

    .line 350
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 352
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 353
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 354
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 356
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 357
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 358
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 359
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 360
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 361
    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 362
    iget-object v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 363
    const-class v1, Lio/dronefleet/mavlink/common/LandingTargetType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 364
    iget p0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final angleX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X-axis angular offset of the target from\n                the center of the image"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    return v0
.end method

.method public final angleY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y-axis angular offset of the target from\n                the center of the image"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    return v0
.end method

.method public final distance()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to the target from the vehicle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 275
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/LandingTarget;

    .line 276
    iget-object v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 277
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 278
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 279
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 280
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 281
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 282
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 283
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 284
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 285
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 286
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 287
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 288
    :cond_d
    iget-object v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 289
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v1

    :cond_f
    return v0

    :cond_10
    :goto_0
    return v1
.end method

.method public final frame()Lio/dronefleet/mavlink/util/EnumValue;
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
        description = "Coordinate frame used for following\n                fields."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 122
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 296
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 297
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 298
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 299
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 300
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 301
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 302
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 303
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 304
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 305
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 306
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 307
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 308
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 309
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final positionValid()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Boolean indicating whether the position\n                fields (x, y, z, q, type) contain valid target position information (valid: 1,\n                invalid: 0). Default is 0 (invalid)."
        extension = true
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    return v0
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion of landing target orientation (w, x, y, z\n                order, zero-rotation is 1, 0, 0, 0)"
        extension = true
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 238
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    return-object v0
.end method

.method public final sizeX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Size of target along x-axis"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 172
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    return v0
.end method

.method public final sizeY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Size of target along y-axis"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    return v0
.end method

.method public final targetNum()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID of the target if multiple targets are\n                present"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 108
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 95
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LandingTarget{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->targetNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", angleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->angleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sizeX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sizeY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->sizeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positionValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LandingTarget;->positionValid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
            "Lio/dronefleet/mavlink/common/LandingTargetType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of landing target"
        enumType = Lio/dronefleet/mavlink/common/LandingTargetType;
        extension = true
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 252
    iget-object v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position of the landing target in MAV_FRAME"
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 197
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->x:F

    return v0
.end method

.method public final y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position of the landing target in MAV_FRAME"
        extension = true
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 210
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->y:F

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position of the landing target in MAV_FRAME"
        extension = true
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/common/LandingTarget;->z:F

    return v0
.end method
