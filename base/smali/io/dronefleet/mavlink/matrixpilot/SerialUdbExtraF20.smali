.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;
.super Ljava/lang/Object;
.source "SerialUdbExtraF20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x90
    description = "Backwards compatible version of SERIAL_UDB_EXTRA F20 format"
    id = 0xba
.end annotation


# instance fields
.field private final sueNumberOfInputs:I

.field private final sueTrimValueInput1:I

.field private final sueTrimValueInput10:I

.field private final sueTrimValueInput11:I

.field private final sueTrimValueInput12:I

.field private final sueTrimValueInput2:I

.field private final sueTrimValueInput3:I

.field private final sueTrimValueInput4:I

.field private final sueTrimValueInput5:I

.field private final sueTrimValueInput6:I

.field private final sueTrimValueInput7:I

.field private final sueTrimValueInput8:I

.field private final sueTrimValueInput9:I


# direct methods
.method private constructor <init>(IIIIIIIIIIIII)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

    .line 54
    iput p2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    .line 55
    iput p3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    .line 56
    iput p4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    .line 57
    iput p5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    .line 58
    iput p6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    .line 59
    iput p7, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    .line 60
    iput p8, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    .line 61
    iput p9, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    .line 62
    iput p10, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    .line 63
    iput p11, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    .line 64
    iput p12, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    .line 65
    iput p13, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;-><init>(IIIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 73
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;
    .locals 14

    .line 305
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 306
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 307
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 308
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 309
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 310
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 311
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 312
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 313
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 314
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 315
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 316
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 317
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 318
    new-instance p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;-><init>(IIIIIIIIIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 322
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 323
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 324
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 325
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 326
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 328
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 331
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 334
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 335
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

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

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 251
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;

    .line 252
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 253
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 254
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 255
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 256
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 257
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 258
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 259
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 260
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 261
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 262
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 263
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 264
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

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

    .line 271
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 272
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 273
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 274
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 275
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 277
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 278
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 279
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 280
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 281
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 282
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 283
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueNumberOfInputs()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Number of Input Channels"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

    return v0
.end method

.method public final sueTrimValueInput1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 1"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    return v0
.end method

.method public final sueTrimValueInput10()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input\n                10"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    return v0
.end method

.method public final sueTrimValueInput11()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input\n                11"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 230
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    return v0
.end method

.method public final sueTrimValueInput12()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input\n                12"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 244
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

    return v0
.end method

.method public final sueTrimValueInput2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 2"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    return v0
.end method

.method public final sueTrimValueInput3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 3"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    return v0
.end method

.method public final sueTrimValueInput4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 4"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 137
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    return v0
.end method

.method public final sueTrimValueInput5()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 5"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 150
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    return v0
.end method

.method public final sueTrimValueInput6()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 6"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    return v0
.end method

.method public final sueTrimValueInput7()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 7"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    return v0
.end method

.method public final sueTrimValueInput8()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 8"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 189
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    return v0
.end method

.method public final sueTrimValueInput9()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE UDB PWM Trim Value on Input 9"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF20{sueNumberOfInputs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueNumberOfInputs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput9:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput10:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput11:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueTrimValueInput12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF20;->sueTrimValueInput12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
