.class public final Lio/dronefleet/mavlink/asluav/SensPowerBoard;
.super Ljava/lang/Object;
.source "SensPowerBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xde
    description = "Monitoring of power board status"
    id = 0xd4
.end annotation


# instance fields
.field private final pwrBrdAnalogAmp:F

.field private final pwrBrdAuxAmp:F

.field private final pwrBrdDigitalAmp:F

.field private final pwrBrdDigitalVolt:F

.field private final pwrBrdExtAmp:F

.field private final pwrBrdLedStatus:I

.field private final pwrBrdMotLAmp:F

.field private final pwrBrdMotRAmp:F

.field private final pwrBrdServoVolt:F

.field private final pwrBrdStatus:I

.field private final pwrBrdSystemVolt:F

.field private final timestamp:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;IIFFFFFFFFF)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    .line 52
    iput p2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    .line 53
    iput p3, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

    .line 54
    iput p4, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    .line 55
    iput p5, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    .line 56
    iput p6, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    .line 57
    iput p7, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    .line 58
    iput p8, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    .line 59
    iput p9, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    .line 60
    iput p10, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    .line 61
    iput p11, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    .line 62
    iput p12, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;IIFFFFFFFFFLio/dronefleet/mavlink/asluav/SensPowerBoard$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/asluav/SensPowerBoard;-><init>(Ljava/math/BigInteger;IIFFFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/SensPowerBoard$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/SensPowerBoard;
    .locals 13

    .line 277
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 278
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 279
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 280
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 281
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 282
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 283
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 284
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 285
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 286
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 287
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 288
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 289
    new-instance p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/asluav/SensPowerBoard;-><init>(Ljava/math/BigInteger;IIFFFFFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/SensPowerBoard;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x2e

    .line 293
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 299
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 300
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 301
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 302
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 303
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 304
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 305
    iget p0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

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

    if-eqz p1, :cond_e

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 226
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;

    .line 227
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 228
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 229
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 230
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 231
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 232
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 233
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 234
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 235
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 236
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 237
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 238
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

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
    .locals 2

    .line 245
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 246
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 251
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 254
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 255
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 256
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pwrBrdAnalogAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board analog current\n                sensor"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    return v0
.end method

.method public final pwrBrdAuxAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board aux current sensor"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

    return v0
.end method

.method public final pwrBrdDigitalAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board digital current\n                sensor"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 194
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    return v0
.end method

.method public final pwrBrdDigitalVolt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board digital voltage"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 142
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    return v0
.end method

.method public final pwrBrdExtAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board extension current\n                sensor"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 207
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    return v0
.end method

.method public final pwrBrdLedStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board leds status"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

    return v0
.end method

.method public final pwrBrdMotLAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board left motor current\n                sensor"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    return v0
.end method

.method public final pwrBrdMotRAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board right motor current\n                sensor"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    return v0
.end method

.method public final pwrBrdServoVolt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board servo voltage"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    return v0
.end method

.method public final pwrBrdStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board status register"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    return v0
.end method

.method public final pwrBrdSystemVolt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board system voltage"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 82
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensPowerBoard{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdLedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdLedStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdSystemVolt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdSystemVolt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdServoVolt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdServoVolt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdDigitalVolt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalVolt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdMotLAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotLAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdMotRAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdMotRAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdAnalogAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAnalogAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdDigitalAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdDigitalAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdExtAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdExtAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pwrBrdAuxAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPowerBoard;->pwrBrdAuxAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
