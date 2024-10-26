.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;
.super Ljava/lang/Object;
.source "SerialUdbExtraF4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xbf
    description = "Backwards compatible version of SERIAL_UDB_EXTRA F4: format"
    id = 0xac
.end annotation


# instance fields
.field private final sueAileronNavigation:I

.field private final sueAltitudeholdStabilized:I

.field private final sueAltitudeholdWaypoint:I

.field private final suePitchStabilization:I

.field private final sueRacingMode:I

.field private final sueRollStabilizationAilerons:I

.field private final sueRollStabilizationRudder:I

.field private final sueRudderNavigation:I

.field private final sueYawStabilizationAileron:I

.field private final sueYawStabilizationRudder:I


# direct methods
.method private constructor <init>(IIIIIIIIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    .line 47
    iput p2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    .line 48
    iput p3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    .line 49
    iput p4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    .line 50
    iput p5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    .line 51
    iput p6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    .line 52
    iput p7, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    .line 53
    iput p8, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    .line 54
    iput p9, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    .line 55
    iput p10, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;-><init>(IIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;
    .locals 11

    .line 245
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 246
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 247
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 248
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 249
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 250
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 251
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 252
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 253
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 254
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 255
    new-instance p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;-><init>(IIIIIIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    .line 259
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 261
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 262
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 263
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 266
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 267
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 268
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 269
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

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
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;

    .line 201
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 202
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 203
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 204
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 205
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 206
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 207
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 208
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 209
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 210
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public hashCode()I
    .locals 2

    .line 217
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 220
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 225
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 226
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueAileronNavigation()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Navigation with\n                Ailerons Enabled"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    return v0
.end method

.method public final sueAltitudeholdStabilized()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of\n                Alitude Hold when in Stabilized Mode"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    return v0
.end method

.method public final sueAltitudeholdWaypoint()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of Alitude\n                Hold when in Waypoint Mode"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    return v0
.end method

.method public final suePitchStabilization()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Pitch\n                Stabilization Enabled"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 102
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    return v0
.end method

.method public final sueRacingMode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Firmware racing mode\n                enabled"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 193
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

    return v0
.end method

.method public final sueRollStabilizationAilerons()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Roll\n                Stabilization with Ailerons Enabled"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 76
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    return v0
.end method

.method public final sueRollStabilizationRudder()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Roll\n                Stabilization with Rudder Enabled"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 89
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    return v0
.end method

.method public final sueRudderNavigation()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Navigation with\n                Rudder Enabled"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 154
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    return v0
.end method

.method public final sueYawStabilizationAileron()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Yaw\n                Stabilization using Ailerons Enabled"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    return v0
.end method

.method public final sueYawStabilizationRudder()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Yaw\n                Stabilization using Rudder Enabled"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF4{sueRollStabilizationAilerons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationAilerons:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRollStabilizationRudder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRollStabilizationRudder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suePitchStabilization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->suePitchStabilization:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueYawStabilizationRudder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationRudder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueYawStabilizationAileron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueYawStabilizationAileron:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAileronNavigation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAileronNavigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRudderNavigation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRudderNavigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAltitudeholdStabilized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdStabilized:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueAltitudeholdWaypoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueAltitudeholdWaypoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sueRacingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF4;->sueRacingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
