.class public final Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;
.super Ljava/lang/Object;
.source "GimbalDeviceAttitudeStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x89
    description = "Message reporting the status of a gimbal device. This message should be\n                broadcasted by a gimbal device component. The angles encoded in the quaternion are\n                relative to absolute North if the flag GIMBAL_DEVICE_FLAGS_YAW_LOCK is set (roll:\n                positive is rolling to the right, pitch: positive is pitching up, yaw is turn to the\n                right) or relative to the vehicle heading if the flag is not set. This message\n                should be broadcast at a low regular rate (e.g. 10Hz)."
    id = 0x11d
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final angularVelocityX:F

.field private final angularVelocityY:F

.field private final angularVelocityZ:F

.field private final failureFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;",
            ">;"
        }
    .end annotation
.end field

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

.field private final timeBootMs:J


# direct methods
.method private constructor <init>(IIJLio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;[FFFF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    .line 64
    iput p2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    .line 65
    iput-wide p3, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    .line 66
    iput-object p5, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 67
    iput-object p6, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    .line 68
    iput p7, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    .line 69
    iput p8, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    .line 70
    iput p9, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

    .line 71
    iput-object p10, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(IIJLio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 79
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;
    .locals 11

    .line 247
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    const/16 v0, 0x10

    .line 248
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v6

    .line 249
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 250
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 251
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 252
    const-class v0, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v10

    .line 253
    const-class v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 254
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 255
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 256
    new-instance p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/util/EnumValue;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x28

    .line 260
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 261
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 263
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 266
    const-class v1, Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 267
    const-class v1, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    const/4 v2, 0x2

    invoke-static {v1, v3, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 269
    iget p0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final angularVelocityX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X component of\n                angular velocity (NaN if unknown)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    return v0
.end method

.method public final angularVelocityY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y component of\n                angular velocity (NaN if unknown)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 172
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    return v0
.end method

.method public final angularVelocityZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z component of\n                angular velocity (NaN if unknown)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 185
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

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

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 205
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;

    .line 206
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 207
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 208
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 209
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 210
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 211
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 212
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 213
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 214
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

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

.method public final failureFlags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Failure flags (0 for no failure)"
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 198
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
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
        description = "Current gimbal flags\n                set."
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 130
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 223
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 225
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 226
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 228
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 229
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components, w, x, y, z (1 0 0 0 is the\n                null-rotation, the frame is depends on whether the flag GIMBAL_DEVICE_FLAGS_YAW_LOCK\n                is set)"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 146
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    return-object v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 103
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 116
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GimbalDeviceAttitudeStatus{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", angularVelocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angularVelocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", angularVelocityZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->angularVelocityZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", failureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
