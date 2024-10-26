.class public final Lio/dronefleet/mavlink/asluav/SensMppt;
.super Ljava/lang/Object;
.source "SensMppt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xe7
    description = "Maximum Power Point Tracker (MPPT) sensor data for solar module power\n                performance tracking"
    id = 0xca
.end annotation


# instance fields
.field private final mppt1Amp:F

.field private final mppt1Pwm:I

.field private final mppt1Status:I

.field private final mppt1Volt:F

.field private final mppt2Amp:F

.field private final mppt2Pwm:I

.field private final mppt2Status:I

.field private final mppt2Volt:F

.field private final mppt3Amp:F

.field private final mppt3Pwm:I

.field private final mppt3Status:I

.field private final mppt3Volt:F

.field private final mpptTimestamp:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FFIIFFIIFFII)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    .line 54
    iput p2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    .line 55
    iput p3, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    .line 56
    iput p4, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    .line 57
    iput p5, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    .line 58
    iput p6, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    .line 59
    iput p7, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    .line 60
    iput p8, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    .line 61
    iput p9, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    .line 62
    iput p10, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    .line 63
    iput p11, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    .line 64
    iput p12, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    .line 65
    iput p13, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFIIFFIIFFIILio/dronefleet/mavlink/asluav/SensMppt$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/asluav/SensMppt;-><init>(Ljava/math/BigInteger;FFIIFFIIFFII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/SensMppt$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 73
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/SensMppt$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/SensMppt;
    .locals 14

    .line 290
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 291
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 292
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 293
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 294
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 295
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 296
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 297
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 298
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 299
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 300
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 301
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 302
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 303
    new-instance p0, Lio/dronefleet/mavlink/asluav/SensMppt;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/asluav/SensMppt;-><init>(Ljava/math/BigInteger;FFIIFFIIFFII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/SensMppt;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x29

    .line 307
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 309
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 311
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 315
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 318
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 319
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 320
    iget p0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

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

    if-eqz p1, :cond_f

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 236
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/SensMppt;

    .line 237
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 238
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 239
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 240
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 241
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 242
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 243
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 244
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 245
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 246
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 247
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 248
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 249
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 256
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 257
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 258
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 259
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 260
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 262
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 263
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 264
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 265
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 266
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 267
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final mppt1Amp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 current"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 109
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    return v0
.end method

.method public final mppt1Pwm()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 pwm"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 121
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    return v0
.end method

.method public final mppt1Status()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 status"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 133
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    return v0
.end method

.method public final mppt1Volt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT1 voltage"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 97
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    return v0
.end method

.method public final mppt2Amp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 current"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    return v0
.end method

.method public final mppt2Pwm()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 pwm"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    return v0
.end method

.method public final mppt2Status()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 status"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    return v0
.end method

.method public final mppt2Volt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT2 voltage"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 145
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    return v0
.end method

.method public final mppt3Amp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 current"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 205
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    return v0
.end method

.method public final mppt3Pwm()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 pwm"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 217
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    return v0
.end method

.method public final mppt3Status()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 status"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 229
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    return v0
.end method

.method public final mppt3Volt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT3 voltage"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 193
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    return v0
.end method

.method public final mpptTimestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MPPT last timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 85
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensMppt{mpptTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mpptTimestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mppt1Volt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Volt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mppt1Amp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Amp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mppt1Pwm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Pwm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mppt1Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt1Status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mppt2Volt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Volt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mppt2Amp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Amp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mppt2Pwm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Pwm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mppt2Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt2Status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mppt3Volt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Volt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mppt3Amp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Amp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mppt3Pwm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Pwm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mppt3Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensMppt;->mppt3Status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
