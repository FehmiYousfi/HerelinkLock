.class public final Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;
.super Ljava/lang/Object;
.source "IcarousKinematicBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xef
    description = "Kinematic multi bands (track) output from Daidalus"
    id = 0xa411
.end annotation


# instance fields
.field private final max1:F

.field private final max2:F

.field private final max3:F

.field private final max4:F

.field private final max5:F

.field private final min1:F

.field private final min2:F

.field private final min3:F

.field private final min4:F

.field private final min5:F

.field private final numbands:I

.field private final type1:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private final type2:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private final type3:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private final type4:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private final type5:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;FF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;FF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;FF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;FF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;FF)V"
        }
    .end annotation

    move-object v0, p0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 62
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    move-object v1, p2

    .line 63
    iput-object v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p3

    .line 64
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    move v1, p4

    .line 65
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    move-object v1, p5

    .line 66
    iput-object v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p6

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    move v1, p7

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    move-object v1, p8

    .line 69
    iput-object v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p9

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    move v1, p10

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    move-object v1, p11

    .line 72
    iput-object v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p12

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    move v1, p13

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    move-object/from16 v1, p14

    .line 75
    iput-object v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p15

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    move/from16 v1, p16

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

    return-void
.end method

.method synthetic constructor <init>(ILio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/icarous/IcarousKinematicBands$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p16}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;-><init>(ILio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 85
    new-instance v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;
    .locals 18

    move-object/from16 v0, p0

    .line 358
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 359
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 360
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 361
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 362
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 363
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 364
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 365
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 366
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v16

    .line 367
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 368
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 369
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    const/4 v15, 0x1

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 370
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 371
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v9

    .line 372
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v12

    .line 373
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    invoke-static {v1, v0, v15}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v15

    .line 374
    new-instance v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;

    move-object v1, v0

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;-><init>(ILio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FF)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x2e

    .line 378
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 379
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 380
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 381
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 382
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 383
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 384
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 386
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 389
    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 390
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 391
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 392
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 393
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 394
    const-class v1, Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;

    iget-object p0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_4
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 295
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;

    .line 296
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 297
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 298
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 299
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 300
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 301
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 302
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 303
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 304
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 305
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 306
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 307
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 308
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 309
    :cond_e
    iget-object v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 310
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 311
    :cond_10
    iget v2, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

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

    .line 318
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 319
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 320
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 321
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 322
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 323
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 324
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 325
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 326
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 327
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 328
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final max1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    return v0
.end method

.method public final max2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    return v0
.end method

.method public final max3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 212
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    return v0
.end method

.method public final max4()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    return v0
.end method

.method public final max5()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 288
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

    return v0
.end method

.method public final min1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    return v0
.end method

.method public final min2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 162
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    return v0
.end method

.method public final min3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 200
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    return v0
.end method

.method public final min4()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    return v0
.end method

.method public final min5()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    return v0
.end method

.method public final numbands()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of track bands"
        position = 0x1
        signed = true
        unitSize = 0x1
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IcarousKinematicBands{numbands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->numbands:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->min5:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->max5:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type1()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 112
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final type2()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 150
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final type3()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 188
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final type4()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 226
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final type5()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 264
    iget-object v0, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
