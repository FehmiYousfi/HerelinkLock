.class public final Lio/dronefleet/mavlink/common/EstimatorStatus;
.super Ljava/lang/Object;
.source "EstimatorStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xa3
    description = "Estimator status message including flags, innovation test ratios and\n                estimated accuracies. The flags message is an integer bitmask containing information\n                on which EKF outputs are valid. See the ESTIMATOR_STATUS_FLAGS enum definition for\n                further information. The innovation test ratios show the magnitude of the sensor\n                innovation divided by the innovation check threshold. Under normal operation the\n                innovation test ratios should be below 0.5 with occasional values up to 1.0. Values\n                greater than 1.0 should be rare under normal operation and indicate that a\n                measurement has been rejected by the filter. The user should be notified if an\n                innovation test ratio greater than 1.0 is recorded. Notifications for values in the\n                range between 0.5 and 1.0 should be optional and controllable by the user."
    id = 0xe6
.end annotation


# instance fields
.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final haglRatio:F

.field private final magRatio:F

.field private final posHorizAccuracy:F

.field private final posHorizRatio:F

.field private final posVertAccuracy:F

.field private final posVertRatio:F

.field private final tasRatio:F

.field private final timeUsec:Ljava/math/BigInteger;

.field private final velRatio:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;FFFFFFFF)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    .line 67
    iput-object p2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 68
    iput p3, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    .line 69
    iput p4, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    .line 70
    iput p5, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    .line 71
    iput p6, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    .line 72
    iput p7, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    .line 73
    iput p8, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    .line 74
    iput p9, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    .line 75
    iput p10, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFLio/dronefleet/mavlink/common/EstimatorStatus$1;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/common/EstimatorStatus;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 83
    new-instance v0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/EstimatorStatus;
    .locals 11

    .line 261
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 262
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 263
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 264
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 265
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 266
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 267
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 268
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 269
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 270
    const-class v0, Lio/dronefleet/mavlink/common/EstimatorStatusFlags;

    const/4 v2, 0x2

    invoke-static {v0, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    .line 271
    new-instance p0, Lio/dronefleet/mavlink/common/EstimatorStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/EstimatorStatus;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/EstimatorStatus;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2a

    .line 275
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 277
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 278
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 280
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 281
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 283
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 284
    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 285
    const-class v1, Lio/dronefleet/mavlink/common/EstimatorStatusFlags;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

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

    if-eqz p1, :cond_c

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 216
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/EstimatorStatus;

    .line 217
    iget-object v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 218
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 219
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 220
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 221
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 222
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 223
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 224
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 225
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 226
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap indicating which EKF outputs are valid."
        enumType = Lio/dronefleet/mavlink/common/EstimatorStatusFlags;
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 111
    iget-object v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final haglRatio()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Height above terrain innovation test ratio"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 171
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 233
    iget-object v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 234
    iget-object v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 235
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 237
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 242
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final magRatio()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer innovation test ratio"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    return v0
.end method

.method public final posHorizAccuracy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position 1-STD\n                accuracy relative to the EKF local origin"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 196
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    return v0
.end method

.method public final posHorizRatio()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position innovation test ratio"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    return v0
.end method

.method public final posVertAccuracy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical position 1-STD accuracy\n                relative to the EKF local origin"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    return v0
.end method

.method public final posVertRatio()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical position innovation test ratio"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    return v0
.end method

.method public final tasRatio()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True airspeed innovation test ratio"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 98
    iget-object v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EstimatorStatus{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posHorizRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posVertRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", magRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->magRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", haglRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->haglRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tasRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->tasRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posHorizAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posHorizAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posVertAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->posVertAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final velRatio()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Velocity innovation test ratio"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/common/EstimatorStatus;->velRatio:F

    return v0
.end method
