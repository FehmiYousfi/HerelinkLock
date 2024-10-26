.class public final Lio/dronefleet/mavlink/common/OpticalFlowRad;
.super Ljava/lang/Object;
.source "OpticalFlowRad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpticalFlowRad$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x8a
    description = "Optical flow from an angular rate flow sensor (e.g. PX4FLOW or mouse\n                sensor)"
    id = 0x6a
.end annotation


# instance fields
.field private final distance:F

.field private final integratedX:F

.field private final integratedXgyro:F

.field private final integratedY:F

.field private final integratedYgyro:F

.field private final integratedZgyro:F

.field private final integrationTimeUs:J

.field private final quality:I

.field private final sensorId:I

.field private final temperature:I

.field private final timeDeltaDistanceUs:J

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;IJFFFFFIIJF)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    .line 53
    iput p2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    .line 54
    iput-wide p3, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    .line 55
    iput p5, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    .line 56
    iput p6, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    .line 57
    iput p7, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    .line 58
    iput p8, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    .line 59
    iput p9, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    .line 60
    iput p10, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    .line 61
    iput p11, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    .line 62
    iput-wide p12, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    .line 63
    iput p14, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;IJFFFFFIIJFLio/dronefleet/mavlink/common/OpticalFlowRad$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p14}, Lio/dronefleet/mavlink/common/OpticalFlowRad;-><init>(Ljava/math/BigInteger;IJFFFFFIIJF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpticalFlowRad$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 71
    new-instance v0, Lio/dronefleet/mavlink/common/OpticalFlowRad$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpticalFlowRad$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpticalFlowRad;
    .locals 15

    .line 290
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 291
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 292
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 293
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 294
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 295
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 296
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 297
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    .line 298
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 299
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 300
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 301
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 302
    new-instance p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lio/dronefleet/mavlink/common/OpticalFlowRad;-><init>(Ljava/math/BigInteger;IJFFFFFIIJF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpticalFlowRad;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2c

    .line 306
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 308
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 309
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 311
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 315
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 318
    iget p0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final distance()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to the center of the flow field.\n                Positive value (including zero): distance known. Negative value: Unknown distance."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 232
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 239
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;

    .line 240
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 241
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 242
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 243
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 244
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 245
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 246
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 247
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 248
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 249
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 250
    :cond_b
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 251
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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

.method public hashCode()I
    .locals 4

    .line 258
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 259
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 260
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 262
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 263
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 264
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 265
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 266
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 267
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 268
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 269
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final integratedX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow around X axis (Sensor RH\n                rotation about the X axis induces a positive flow. Sensor linear motion along the\n                positive Y axis induces a negative flow.)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    return v0
.end method

.method public final integratedXgyro()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RH rotation around X axis"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    return v0
.end method

.method public final integratedY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow around Y axis (Sensor RH\n                rotation about the Y axis induces a positive flow. Sensor linear motion along the\n                positive X axis induces a positive flow.)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    return v0
.end method

.method public final integratedYgyro()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RH rotation around Y axis"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    return v0
.end method

.method public final integratedZgyro()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RH rotation around Z axis"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    return v0
.end method

.method public final integrationTimeUs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Integration time. Divide\n                integrated_x and integrated_y by the integration time to obtain average flow. The\n                integration time also indicates the."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 113
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    return-wide v0
.end method

.method public final quality()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Optical flow quality / confidence. 0: no valid\n                flow, 255: maximum quality"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 205
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    return v0
.end method

.method public final sensorId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    return v0
.end method

.method public final temperature()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    return v0
.end method

.method public final timeDeltaDistanceUs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the distance\n                was sampled."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 218
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    return-wide v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 86
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpticalFlowRad{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", integrationTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integrationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", integratedX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", integratedY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", integratedXgyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedXgyro:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", integratedYgyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedYgyro:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", integratedZgyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->integratedZgyro:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeDeltaDistanceUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->timeDeltaDistanceUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlowRad;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
