.class public final Lio/dronefleet/mavlink/asluav/SensBatmon;
.super Ljava/lang/Object;
.source "SensBatmon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x9b
    description = "Battery pack monitoring data for Li-Ion batteries"
    id = 0xd1
.end annotation


# instance fields
.field private final batmonTimestamp:Ljava/math/BigInteger;

.field private final batterystatus:I

.field private final cellvoltage1:I

.field private final cellvoltage2:I

.field private final cellvoltage3:I

.field private final cellvoltage4:I

.field private final cellvoltage5:I

.field private final cellvoltage6:I

.field private final current:I

.field private final operationstatus:J

.field private final safetystatus:J

.field private final serialnumber:I

.field private final soc:I

.field private final temperature:F

.field private final voltage:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FIIIIIJJIIIIII)V
    .locals 3

    move-object v0, p0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 57
    iput-object v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    move v1, p2

    .line 58
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    move v1, p3

    .line 59
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    move v1, p4

    .line 60
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    move v1, p5

    .line 61
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    move v1, p6

    .line 62
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    move v1, p7

    .line 63
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    move-wide v1, p8

    .line 64
    iput-wide v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    move-wide v1, p10

    .line 65
    iput-wide v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    move v1, p12

    .line 66
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    move/from16 v1, p13

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    move/from16 v1, p14

    .line 68
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    move/from16 v1, p15

    .line 69
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    move/from16 v1, p16

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    move/from16 v1, p17

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FIIIIIJJIIIIIILio/dronefleet/mavlink/asluav/SensBatmon$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p17}, Lio/dronefleet/mavlink/asluav/SensBatmon;-><init>(Ljava/math/BigInteger;FIIIIIJJIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 79
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/SensBatmon$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/SensBatmon;
    .locals 19

    .line 329
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 330
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 331
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 332
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 333
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 334
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 335
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 336
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 337
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 338
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 339
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 340
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 341
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 342
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v17

    .line 343
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 344
    new-instance v18, Lio/dronefleet/mavlink/asluav/SensBatmon;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lio/dronefleet/mavlink/asluav/SensBatmon;-><init>(Ljava/math/BigInteger;FIIIIIJJIIIIII)V

    return-object v18
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/SensBatmon;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x29

    .line 348
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 351
    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 352
    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 353
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 354
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 356
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 357
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 358
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 359
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 360
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 361
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 362
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 363
    iget p0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final batmonTimestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system start"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 91
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final batterystatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor status report bits in Hex"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    return v0
.end method

.method public final cellvoltage1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 1 voltage"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    return v0
.end method

.method public final cellvoltage2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 2 voltage"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    return v0
.end method

.method public final cellvoltage3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 3 voltage"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 226
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    return v0
.end method

.method public final cellvoltage4()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 4 voltage"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    return v0
.end method

.method public final cellvoltage5()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 5 voltage"
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    return v0
.end method

.method public final cellvoltage6()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack cell 6 voltage"
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 262
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    return v0
.end method

.method public final current()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack current"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 269
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/SensBatmon;

    .line 270
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 271
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 272
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 273
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 274
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 275
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 276
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 277
    :cond_8
    iget-wide v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 278
    :cond_9
    iget-wide v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 279
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 280
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 281
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 282
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 283
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 284
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 291
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 292
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 293
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 294
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 295
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 296
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 297
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 298
    iget-wide v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 299
    iget-wide v2, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 300
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 301
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 302
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 303
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 304
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 305
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final operationstatus()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor operation status report\n                bits in Hex"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 190
    iget-wide v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    return-wide v0
.end method

.method public final safetystatus()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor safetystatus report bits in\n                Hex"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 177
    iget-wide v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    return-wide v0
.end method

.method public final serialnumber()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery monitor serial number in Hex"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    return v0
.end method

.method public final soc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack state-of-charge"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    return v0
.end method

.method public final temperature()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack temperature"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 103
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensBatmon{batmonTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batmonTimestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->temperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->current:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->soc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batterystatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->batterystatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serialnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->serialnumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", safetystatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->safetystatus:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", operationstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->operationstatus:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cellvoltage1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellvoltage2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellvoltage3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellvoltage4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellvoltage5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellvoltage6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->cellvoltage6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final voltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery pack voltage"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensBatmon;->voltage:I

    return v0
.end method
