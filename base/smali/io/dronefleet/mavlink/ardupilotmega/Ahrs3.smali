.class public final Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;
.super Ljava/lang/Object;
.source "Ahrs3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xe5
    description = "Status of third AHRS filter if available. This is for ANU research group\n                (Ali and Sean)."
    id = 0xb6
.end annotation


# instance fields
.field private final altitude:F

.field private final lat:I

.field private final lng:I

.field private final pitch:F

.field private final roll:F

.field private final v1:F

.field private final v2:F

.field private final v3:F

.field private final v4:F

.field private final yaw:F


# direct methods
.method private constructor <init>(FFFFIIFFFF)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    .line 46
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    .line 47
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    .line 48
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    .line 49
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    .line 50
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    .line 51
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    .line 52
    iput p8, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    .line 53
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    .line 54
    iput p10, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

    return-void
.end method

.method synthetic constructor <init>(FFFFIIFFFFLio/dronefleet/mavlink/ardupilotmega/Ahrs3$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;-><init>(FFFFIIFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;
    .locals 11

    .line 236
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 237
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 238
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 239
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 240
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 241
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 242
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 243
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 244
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 245
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 246
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;-><init>(FFFFIIFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x28

    .line 250
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 251
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 252
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 257
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 258
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 260
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final altitude()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 110
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 191
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;

    .line 192
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 193
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 194
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 195
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 196
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 197
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 198
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 199
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 200
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 201
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

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

.method public hashCode()I
    .locals 2

    .line 208
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 210
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 211
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 212
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 213
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 215
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 217
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    return v0
.end method

.method public final lng()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    return v0
.end method

.method public final pitch()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 86
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    return v0
.end method

.method public final roll()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 74
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ahrs3{roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->altitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->lng:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", v1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", v4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable1."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v1:F

    return v0
.end method

.method public final v2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable2."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v2:F

    return v0
.end method

.method public final v3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable3."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 172
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v3:F

    return v0
.end method

.method public final v4()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable4."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->v4:F

    return v0
.end method

.method public final yaw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;->yaw:F

    return v0
.end method
