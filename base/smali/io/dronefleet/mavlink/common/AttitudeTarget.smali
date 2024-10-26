.class public final Lio/dronefleet/mavlink/common/AttitudeTarget;
.super Ljava/lang/Object;
.source "AttitudeTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x16
    description = "Reports the current commanded attitude of the vehicle as specified by the\n                autopilot. This should match the commands sent in a SET_ATTITUDE_TARGET message if\n                the vehicle is being controlled this way."
    id = 0x53
.end annotation


# instance fields
.field private final bodyPitchRate:F

.field private final bodyRollRate:F

.field private final bodyYawRate:F

.field private final q:[F

.field private final thrust:F

.field private final timeBootMs:J

.field private final typeMask:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLio/dronefleet/mavlink/util/EnumValue;[FFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;[FFFFF)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    .line 46
    iput-object p3, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    .line 47
    iput-object p4, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    .line 48
    iput p5, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    .line 49
    iput p6, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    .line 50
    iput p7, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    .line 51
    iput p8, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    return-void
.end method

.method synthetic constructor <init>(JLio/dronefleet/mavlink/util/EnumValue;[FFFFFLio/dronefleet/mavlink/common/AttitudeTarget$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/common/AttitudeTarget;-><init>(JLio/dronefleet/mavlink/util/EnumValue;[FFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 59
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AttitudeTarget;
    .locals 9

    .line 192
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const/16 v0, 0x10

    .line 193
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v4

    .line 194
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 195
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 196
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 197
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 198
    const-class v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 199
    new-instance p0, Lio/dronefleet/mavlink/common/AttitudeTarget;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/AttitudeTarget;-><init>(JLio/dronefleet/mavlink/util/EnumValue;[FFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AttitudeTarget;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x25

    .line 203
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 209
    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 210
    const-class v1, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final bodyPitchRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body pitch rate"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    return v0
.end method

.method public final bodyRollRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body roll rate"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    return v0
.end method

.method public final bodyYawRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body yaw rate"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 156
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AttitudeTarget;

    .line 157
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 158
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 159
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 160
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 161
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 162
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 163
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 170
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Attitude quaternion (w, x, y, z order, zero-rotation is\n                1, 0, 0, 0)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 100
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    return-object v0
.end method

.method public final thrust()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collective thrust, normalized to 0 .. 1 (-1 .. 1 for\n                vehicles capable of reverse trust)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 149
    iget v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 72
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttitudeTarget{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", typeMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyRollRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyRollRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bodyPitchRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyPitchRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bodyYawRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->bodyYawRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thrust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->thrust:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeMask()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 86
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
