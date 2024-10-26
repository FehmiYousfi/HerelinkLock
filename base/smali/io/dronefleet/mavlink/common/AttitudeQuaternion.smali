.class public final Lio/dronefleet/mavlink/common/AttitudeQuaternion;
.super Ljava/lang/Object;
.source "AttitudeQuaternion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf6
    description = "The attitude in the aeronautical frame (right-handed, Z-down, X-front,\n                Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero\n                rotation would be expressed as (1 0 0 0)."
    id = 0x1f
.end annotation


# instance fields
.field private final pitchspeed:F

.field private final q1:F

.field private final q2:F

.field private final q3:F

.field private final q4:F

.field private final reprOffsetQ:[F

.field private final rollspeed:F

.field private final timeBootMs:J

.field private final yawspeed:F


# direct methods
.method private constructor <init>(JFFFFFFF[F)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    .line 46
    iput p3, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    .line 47
    iput p4, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    .line 48
    iput p5, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    .line 49
    iput p6, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    .line 50
    iput p7, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    .line 51
    iput p8, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    .line 52
    iput p9, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    .line 53
    iput-object p10, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    return-void
.end method

.method synthetic constructor <init>(JFFFFFFF[FLio/dronefleet/mavlink/common/AttitudeQuaternion$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/common/AttitudeQuaternion;-><init>(JFFFFFFF[F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 61
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AttitudeQuaternion;
    .locals 11

    .line 233
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 234
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 235
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 236
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 237
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 238
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 239
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 240
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    const/16 v0, 0x10

    .line 241
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v10

    .line 242
    new-instance p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/AttitudeQuaternion;-><init>(JFFFFFFF[F)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AttitudeQuaternion;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x30

    .line 246
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 248
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 249
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 250
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 251
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 252
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object p0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

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
    check-cast p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;

    .line 192
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 193
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 194
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 195
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 196
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 197
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 198
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 199
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 200
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    iget-object p1, p1, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 207
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 208
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 210
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 211
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 212
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 213
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 215
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pitchspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angular speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 146
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    return v0
.end method

.method public final q1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 1, w (1 in null-rotation)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 86
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    return v0
.end method

.method public final q2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 2, x (0 in null-rotation)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    return v0
.end method

.method public final q3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 3, y (0 in null-rotation)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 110
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    return v0
.end method

.method public final q4()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 4, z (0 in null-rotation)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 122
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    return v0
.end method

.method public final reprOffsetQ()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Rotation offset by which the attitude\n                quaternion and angular speed vector should be rotated for user display (quaternion\n                with [w, x, y, z] order, zero-rotation is [1, 0, 0, 0], send [0, 0, 0, 0] if field\n                not supported). This field is intended for systems in which the reference attitude\n                may change during flight. For example, tailsitters VTOLs rotate their reference\n                attitude by 90 degrees between hover mode and fixed wing mode, thus repr_offset_q is\n                equal to [1, 0, 0, 0] in hover mode and equal to [0.7071, 0, 0.7071, 0] in fixed\n                wing mode."
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 184
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    return-object v0
.end method

.method public final rollspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angular speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 134
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 74
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttitudeQuaternion{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", q1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", q2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", q3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", q4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->q4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rollspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->rollspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitchspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->pitchspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yawspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reprOffsetQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->reprOffsetQ:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final yawspeed()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angular speed"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion;->yawspeed:F

    return v0
.end method
