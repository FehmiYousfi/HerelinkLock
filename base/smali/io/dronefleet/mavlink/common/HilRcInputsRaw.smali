.class public final Lio/dronefleet/mavlink/common/HilRcInputsRaw;
.super Ljava/lang/Object;
.source "HilRcInputsRaw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x36
    description = "Sent from simulation to autopilot. The RAW values of the RC channels\n                received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000\n                microseconds: 100%. Individual receivers/transmitters might violate this\n                specification."
    id = 0x5c
.end annotation


# instance fields
.field private final chan10Raw:I

.field private final chan11Raw:I

.field private final chan12Raw:I

.field private final chan1Raw:I

.field private final chan2Raw:I

.field private final chan3Raw:I

.field private final chan4Raw:I

.field private final chan5Raw:I

.field private final chan6Raw:I

.field private final chan7Raw:I

.field private final chan8Raw:I

.field private final chan9Raw:I

.field private final rssi:I

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;IIIIIIIIIIIII)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    .line 60
    iput p2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    .line 61
    iput p3, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    .line 62
    iput p4, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    .line 63
    iput p5, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    .line 64
    iput p6, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    .line 65
    iput p7, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    .line 66
    iput p8, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    .line 67
    iput p9, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    .line 68
    iput p10, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

    .line 69
    iput p11, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    .line 70
    iput p12, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    .line 71
    iput p13, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    .line 72
    iput p14, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;IIIIIIIIIIIIILio/dronefleet/mavlink/common/HilRcInputsRaw$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p14}, Lio/dronefleet/mavlink/common/HilRcInputsRaw;-><init>(Ljava/math/BigInteger;IIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/HilRcInputsRaw;
    .locals 15

    .line 317
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 318
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 319
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 320
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 321
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 322
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 323
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 324
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 325
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 326
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 327
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 328
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 329
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 330
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 331
    new-instance p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lio/dronefleet/mavlink/common/HilRcInputsRaw;-><init>(Ljava/math/BigInteger;IIIIIIIIIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/HilRcInputsRaw;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x21

    .line 335
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 337
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 338
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 339
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 341
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 342
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 343
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 344
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 345
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 346
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 347
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 348
    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 349
    iget p0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final chan10Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 10 value"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    return v0
.end method

.method public final chan11Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 11 value"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    return v0
.end method

.method public final chan12Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 12 value"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    return v0
.end method

.method public final chan1Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 107
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    return v0
.end method

.method public final chan2Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 119
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    return v0
.end method

.method public final chan3Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 131
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    return v0
.end method

.method public final chan4Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    return v0
.end method

.method public final chan5Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    return v0
.end method

.method public final chan6Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    return v0
.end method

.method public final chan7Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    return v0
.end method

.method public final chan8Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 191
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    return v0
.end method

.method public final chan9Raw()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 9 value"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 203
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

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

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 260
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;

    .line 261
    iget-object v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 262
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 263
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 264
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 265
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 266
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 267
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 268
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 269
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 270
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 271
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 272
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 273
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 274
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

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

.method public hashCode()I
    .locals 2

    .line 281
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 283
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 284
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 285
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 286
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 287
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 288
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 289
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 290
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 291
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 292
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 293
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 294
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final rssi()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive signal strength indicator in device-dependent\n                units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

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
    iget-object v0, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HilRcInputsRaw{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chan1Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan1Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan2Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan2Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan3Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan3Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan4Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan4Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan5Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan5Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan6Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan6Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan7Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan7Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan8Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan8Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan9Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan9Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan10Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan10Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan11Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan11Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan12Raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->chan12Raw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
