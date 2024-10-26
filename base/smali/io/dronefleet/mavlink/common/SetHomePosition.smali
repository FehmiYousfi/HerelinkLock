.class public final Lio/dronefleet/mavlink/common/SetHomePosition;
.super Ljava/lang/Object;
.source "SetHomePosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x55
    description = "The position the system will return to and land on. The position is set\n                automatically by the system during the takeoff in case it was not explicitly set by\n                the operator before or after. The global and local positions encode the position in\n                the respective coordinate frames, while the q parameter encodes the orientation of\n                the surface. Under normal conditions it describes the heading and terrain slope,\n                which can be used by the aircraft to adjust the approach. The approach 3D vector\n                describes the point to which the system should fly in normal flight mode and then\n                perform a landing sequence along the vector."
    id = 0xf3
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final altitude:I

.field private final approachX:F

.field private final approachY:F

.field private final approachZ:F

.field private final latitude:I

.field private final longitude:I

.field private final q:[F

.field private final targetSystem:I

.field private final timeUsec:Ljava/math/BigInteger;

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method private constructor <init>(IIIIFFF[FFFFLjava/math/BigInteger;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    .line 69
    iput p2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    .line 70
    iput p3, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    .line 71
    iput p4, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    .line 72
    iput p5, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    .line 73
    iput p6, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    .line 74
    iput p7, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    .line 75
    iput-object p8, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    .line 76
    iput p9, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    .line 77
    iput p10, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    .line 78
    iput p11, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    .line 79
    iput-object p12, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(IIIIFFF[FFFFLjava/math/BigInteger;Lio/dronefleet/mavlink/common/SetHomePosition$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/common/SetHomePosition;-><init>(IIIIFFF[FFFFLjava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SetHomePosition$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 87
    new-instance v0, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SetHomePosition$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SetHomePosition;
    .locals 13

    .line 323
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 324
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 325
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 326
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 327
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 328
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    const/16 v0, 0x10

    .line 329
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v8

    .line 330
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 331
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 332
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 333
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 334
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v12

    .line 335
    new-instance p0, Lio/dronefleet/mavlink/common/SetHomePosition;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/SetHomePosition;-><init>(IIIIFFF[FFFFLjava/math/BigInteger;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SetHomePosition;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x3d

    .line 339
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 340
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 341
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 342
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 343
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 344
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 345
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 346
    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 347
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 348
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 349
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 351
    iget-object p0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final altitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    return v0
.end method

.method public final approachX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local X position of the end of the\n                approach vector. Multicopters should set this position based on their takeoff path.\n                Grass-landing fixed wing aircraft should set it the same way as multicopters.\n                Runway-landing fixed wing aircraft should set it to the opposite direction of the\n                takeoff, assuming the takeoff happened from the threshold / touchdown zone."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 211
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    return v0
.end method

.method public final approachY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Y position of the end of the\n                approach vector. Multicopters should set this position based on their takeoff path.\n                Grass-landing fixed wing aircraft should set it the same way as multicopters.\n                Runway-landing fixed wing aircraft should set it to the opposite direction of the\n                takeoff, assuming the takeoff happened from the threshold / touchdown zone."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 230
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    return v0
.end method

.method public final approachZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Z position of the end of the\n                approach vector. Multicopters should set this position based on their takeoff path.\n                Grass-landing fixed wing aircraft should set it the same way as multicopters.\n                Runway-landing fixed wing aircraft should set it to the opposite direction of the\n                takeoff, assuming the takeoff happened from the threshold / touchdown zone."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 272
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SetHomePosition;

    .line 273
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 274
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 275
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 276
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 277
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 278
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 279
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 280
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 281
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 282
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 283
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 284
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

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

    .line 291
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 292
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 293
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 294
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 295
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 296
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 297
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 298
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 299
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 300
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 301
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 302
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final latitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    return v0
.end method

.method public final longitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    return v0
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "World to surface normal and heading transformation of\n                the takeoff position. Used to indicate the heading and slope of the ground"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 192
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    return-object v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        extension = true
        position = 0xe
        unitSize = 0x8
    .end annotation

    .line 265
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetHomePosition{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", approachX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", approachY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", approachZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->approachZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local X position of this position in the local\n                coordinate frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->x:F

    return v0
.end method

.method public final y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Y position of this position in the local\n                coordinate frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->y:F

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local Z position of this position in the local\n                coordinate frame"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 177
    iget v0, p0, Lio/dronefleet/mavlink/common/SetHomePosition;->z:F

    return v0
.end method
