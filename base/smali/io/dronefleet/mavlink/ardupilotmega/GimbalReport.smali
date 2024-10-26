.class public final Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;
.super Ljava/lang/Object;
.source "GimbalReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x86
    description = "3 axis gimbal measurements."
    id = 0xc8
.end annotation


# instance fields
.field private final deltaAngleX:F

.field private final deltaAngleY:F

.field private final deltaAngleZ:F

.field private final deltaTime:F

.field private final deltaVelocityX:F

.field private final deltaVelocityY:F

.field private final deltaVelocityZ:F

.field private final jointAz:F

.field private final jointEl:F

.field private final jointRoll:F

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IIFFFFFFFFFF)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    .line 50
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    .line 51
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    .line 52
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    .line 53
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    .line 54
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    .line 55
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    .line 56
    iput p8, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    .line 57
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

    .line 58
    iput p10, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    .line 59
    iput p11, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    .line 60
    iput p12, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

    return-void
.end method

.method synthetic constructor <init>(IIFFFFFFFFFFLio/dronefleet/mavlink/ardupilotmega/GimbalReport$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;-><init>(IIFFFFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;
    .locals 13

    .line 270
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 271
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 272
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 273
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 274
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 275
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 276
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 277
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 278
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 279
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 280
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 281
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 282
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;-><init>(IIFFFFFFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x2a

    .line 286
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 287
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 288
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 290
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 291
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 292
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final deltaAngleX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta angle X."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 116
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    return v0
.end method

.method public final deltaAngleY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta angle Y."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    return v0
.end method

.method public final deltaAngleZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta angle X."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    return v0
.end method

.method public final deltaTime()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since last update."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    return v0
.end method

.method public final deltaVelocityX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta velocity X."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    return v0
.end method

.method public final deltaVelocityY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta velocity Y."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    return v0
.end method

.method public final deltaVelocityZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta velocity Z."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

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

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 219
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;

    .line 220
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 221
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 222
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 223
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 224
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 225
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 226
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 227
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 228
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 229
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 230
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 231
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

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

    .line 238
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 242
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 243
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 244
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 245
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 246
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 247
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final jointAz()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Joint AZ."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 212
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

    return v0
.end method

.method public final jointEl()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Joint EL."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 200
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    return v0
.end method

.method public final jointRoll()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Joint ROLL."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GimbalReport{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deltaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaAngleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaAngleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaAngleZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaAngleZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaVelocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaVelocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaVelocityZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->deltaVelocityZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jointRoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointRoll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jointEl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointEl:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", jointAz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;->jointAz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
