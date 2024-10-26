.class public final Lio/dronefleet/mavlink/slugs/GpsDateTime;
.super Ljava/lang/Object;
.source "GpsDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x84
    description = "Pilot console PWM messges."
    id = 0xb3
.end annotation


# instance fields
.field private final clockstat:I

.field private final day:I

.field private final gppgl:I

.field private final hour:I

.field private final min:I

.field private final month:I

.field private final percentused:I

.field private final sec:I

.field private final sigusedmask:I

.field private final usesat:I

.field private final vissat:I

.field private final year:I


# direct methods
.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    .line 49
    iput p2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    .line 50
    iput p3, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

    .line 51
    iput p4, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    .line 52
    iput p5, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    .line 53
    iput p6, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    .line 54
    iput p7, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    .line 55
    iput p8, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    .line 56
    iput p9, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    .line 57
    iput p10, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    .line 58
    iput p11, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    .line 59
    iput p12, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIIIILio/dronefleet/mavlink/slugs/GpsDateTime$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/slugs/GpsDateTime;-><init>(IIIIIIIIIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 67
    new-instance v0, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/GpsDateTime$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/GpsDateTime;
    .locals 13

    .line 271
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 272
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 273
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 274
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 275
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 276
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 277
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 278
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 279
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 280
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 281
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 282
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 283
    new-instance p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/slugs/GpsDateTime;-><init>(IIIIIIIIIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/GpsDateTime;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xc

    .line 287
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 289
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 290
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 291
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 292
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 293
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 294
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 295
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 296
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 297
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    iget p0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final clockstat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Clock Status. See table 47 page 211 OEMStar\n                Manual"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    return v0
.end method

.method public final day()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Day reported by Gps"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 103
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

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

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 220
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;

    .line 221
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 222
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 223
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 224
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 225
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 226
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 227
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 228
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 229
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 230
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 231
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 232
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public final gppgl()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS+GLONASS satellites in Solution"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 242
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 243
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 244
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 245
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 246
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final hour()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Hour reported by Gps"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    return v0
.end method

.method public final min()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Min reported by Gps"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 127
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    return v0
.end method

.method public final month()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Month reported by Gps"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    return v0
.end method

.method public final percentused()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Percent used GPS"
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 213
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    return v0
.end method

.method public final sec()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sec reported by Gps"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 139
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    return v0
.end method

.method public final sigusedmask()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS and GLONASS usage mask (bit 0 GPS_used?\n                bit_4 GLONASS_used?)"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 201
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsDateTime{year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clockstat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->clockstat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vissat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usesat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gppgl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->gppgl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sigusedmask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->sigusedmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->percentused:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usesat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Used satellites in Solution"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->usesat:I

    return v0
.end method

.method public final vissat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Visible satellites reported by Gps"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->vissat:I

    return v0
.end method

.method public final year()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Year reported by Gps"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 79
    iget v0, p0, Lio/dronefleet/mavlink/slugs/GpsDateTime;->year:I

    return v0
.end method
