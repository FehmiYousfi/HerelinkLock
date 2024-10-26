.class public final Lio/dronefleet/mavlink/common/SetAttitudeTarget;
.super Ljava/lang/Object;
.source "SetAttitudeTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x31
    description = "Sets a desired vehicle attitude. Used by an external controller to command\n                the vehicle (manual controller or other system)."
    id = 0x52
.end annotation


# instance fields
.field private final bodyPitchRate:F

.field private final bodyRollRate:F

.field private final bodyYawRate:F

.field private final q:[F

.field private final targetComponent:I

.field private final targetSystem:I

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
.method private constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;[FFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;[FFFFF)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    .line 49
    iput p3, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    .line 50
    iput p4, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    .line 51
    iput-object p5, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    .line 52
    iput-object p6, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    .line 53
    iput p7, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    .line 54
    iput p8, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    .line 55
    iput p9, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    .line 56
    iput p10, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

    return-void
.end method

.method synthetic constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;[FFFFFLio/dronefleet/mavlink/common/SetAttitudeTarget$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/common/SetAttitudeTarget;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;[FFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SetAttitudeTarget;
    .locals 11

    .line 227
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const/16 v0, 0x10

    .line 228
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v6

    .line 229
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 230
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 231
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 232
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 233
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 234
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 235
    const-class v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v5, 0x1

    invoke-static {v0, p0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 236
    new-instance p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/SetAttitudeTarget;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;[FFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SetAttitudeTarget;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x27

    .line 240
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 241
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 242
    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 243
    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 244
    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 245
    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 246
    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 247
    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 248
    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 249
    const-class v1, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

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
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 153
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    return v0
.end method

.method public final bodyRollRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body roll rate"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    return v0
.end method

.method public final bodyYawRate()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body yaw rate"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 165
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 185
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;

    .line 186
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 187
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 188
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 189
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 190
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 191
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 192
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 193
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 194
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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

    .line 201
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 203
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 204
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 206
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 207
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 208
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

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
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 129
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 101
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 89
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    return v0
.end method

.method public final thrust()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collective thrust, normalized to 0 .. 1 (-1 .. 1 for\n                vehicles capable of reverse trust)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 77
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAttitudeTarget{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyRollRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyRollRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bodyPitchRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyPitchRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bodyYawRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->bodyYawRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thrust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->thrust:F

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
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 115
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
