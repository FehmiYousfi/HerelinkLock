.class public final Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;
.super Ljava/lang/Object;
.source "GimbalDeviceSetAttitude.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x63
    description = "Low level message to control a gimbal device\'s attitude. This message is to\n                be sent from the gimbal manager to the gimbal device component. Angles and rates can\n                be set to NaN according to use case."
    id = 0x11c
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final angularVelocityX:F

.field private final angularVelocityY:F

.field private final angularVelocityZ:F

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final q:[F

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;[FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;[FFFF)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    .line 54
    iput p2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    .line 55
    iput-object p3, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 56
    iput-object p4, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    .line 57
    iput p5, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    .line 58
    iput p6, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    .line 59
    iput p7, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[FFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 67
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;
    .locals 9

    const/16 v0, 0x10

    .line 204
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v5

    .line 205
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 206
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 207
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 208
    const-class v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 209
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 210
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 211
    new-instance p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[FFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x20

    .line 215
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 220
    const-class v1, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    iget p0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final angularVelocityX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X component of\n                angular velocity, positive is rolling to the right, NaN to be ignored."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    return v0
.end method

.method public final angularVelocityY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y component of\n                angular velocity, positive is pitching up, NaN to be ignored."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    return v0
.end method

.method public final angularVelocityZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z component of\n                angular velocity, positive is yawing to the right, NaN to be ignored."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 168
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;

    .line 169
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 170
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 171
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 172
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 173
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 174
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 175
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

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

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Low level gimbal flags."
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 182
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 184
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 185
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 186
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 187
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

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
        description = "Quaternion components, w, x, y, z (1 0 0\n                0 is the null-rotation, the frame is depends on whether the flag\n                GIMBAL_DEVICE_FLAGS_YAW_LOCK is set, set all fields to NaN if only angular velocity\n                should be used)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 122
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 79
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GimbalDeviceSetAttitude{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", angularVelocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angularVelocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angularVelocityZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;->angularVelocityZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
