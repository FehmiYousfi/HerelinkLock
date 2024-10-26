.class public final Lio/dronefleet/mavlink/common/OpticalFlow;
.super Ljava/lang/Object;
.source "OpticalFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xaf
    description = "Optical flow from a flow sensor (e.g. optical mouse sensor)"
    id = 0x64
.end annotation


# instance fields
.field private final flowCompMX:F

.field private final flowCompMY:F

.field private final flowRateX:F

.field private final flowRateY:F

.field private final flowX:I

.field private final flowY:I

.field private final groundDistance:F

.field private final quality:I

.field private final sensorId:I

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;IIIFFIFFF)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    .line 46
    iput p2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    .line 47
    iput p3, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    .line 48
    iput p4, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    .line 49
    iput p5, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    .line 50
    iput p6, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    .line 51
    iput p7, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    .line 52
    iput p8, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    .line 53
    iput p9, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    .line 54
    iput p10, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;IIIFFIFFFLio/dronefleet/mavlink/common/OpticalFlow$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/common/OpticalFlow;-><init>(Ljava/math/BigInteger;IIIFFIFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpticalFlow;
    .locals 11

    .line 245
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 246
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 247
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 248
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 249
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 250
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 251
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 252
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 253
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 254
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 255
    new-instance p0, Lio/dronefleet/mavlink/common/OpticalFlow;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/OpticalFlow;-><init>(Ljava/math/BigInteger;IIIFFIFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpticalFlow;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x22

    .line 259
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 263
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 266
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 267
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 268
    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 269
    iget p0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

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

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 200
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpticalFlow;

    .line 201
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 202
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 203
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 204
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 205
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 206
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 207
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 208
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 209
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 210
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

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

.method public final flowCompMX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in x-sensor direction,\n                angular-speed compensated"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    return v0
.end method

.method public final flowCompMY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in y-sensor direction,\n                angular-speed compensated"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    return v0
.end method

.method public final flowRateX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow rate about X axis"
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    return v0
.end method

.method public final flowRateY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow rate about Y axis"
        extension = true
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 193
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

    return v0
.end method

.method public final flowX()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in x-sensor direction"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 102
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    return v0
.end method

.method public final flowY()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in y-sensor direction"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    return v0
.end method

.method public final groundDistance()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground distance. Positive value:\n                distance known. Negative value: Unknown distance"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 217
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 220
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 225
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 226
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final quality()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Optical flow quality / confidence. 0: bad, 255:\n                maximum quality"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    return v0
.end method

.method public final sensorId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 89
    iget v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 77
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpticalFlow{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flowX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flowY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flowCompMX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", flowCompMY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowCompMY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groundDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->groundDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", flowRateX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", flowRateY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow;->flowRateY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
