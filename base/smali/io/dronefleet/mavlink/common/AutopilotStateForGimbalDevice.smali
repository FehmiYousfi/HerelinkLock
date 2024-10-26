.class public final Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;
.super Ljava/lang/Object;
.source "AutopilotStateForGimbalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xd2
    description = "Low level message containing autopilot state relevant for a gimbal device.\n                This message is to be sent from the gimbal manager to the gimbal device component.\n                The data of this message server for the gimbal\'s estimator corrections in particular\n                horizon compensation, as well as the autopilot\'s control intention e.g. feed forward\n                angular control in z-axis."
    id = 0x11e
.end annotation


# instance fields
.field private final estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final feedForwardAngularVelocityZ:F

.field private final landedState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation
.end field

.field private final q:[F

.field private final qEstimatedDelayUs:J

.field private final targetComponent:I

.field private final targetSystem:I

.field private final timeBootUs:Ljava/math/BigInteger;

.field private final vEstimatedDelayUs:J

.field private final vx:F

.field private final vy:F

.field private final vz:F


# direct methods
.method private constructor <init>(IILjava/math/BigInteger;[FJFFFJFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/math/BigInteger;",
            "[FJFFFJF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    .line 63
    iput p2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    .line 64
    iput-object p3, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    .line 65
    iput-object p4, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    .line 66
    iput-wide p5, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    .line 67
    iput p7, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    .line 68
    iput p8, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    .line 69
    iput p9, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    .line 70
    iput-wide p10, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    .line 71
    iput p12, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    .line 72
    iput-object p13, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    .line 73
    iput-object p14, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(IILjava/math/BigInteger;[FJFFFJFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p14}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;-><init>(IILjava/math/BigInteger;[FJFFFJFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 81
    new-instance v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;
    .locals 15

    .line 294
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v3

    const/16 v0, 0x10

    .line 295
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloatArray(Ljava/nio/ByteBuffer;I)[F

    move-result-object v4

    .line 296
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 297
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 298
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 299
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 300
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 301
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 302
    const-class v0, Lio/dronefleet/mavlink/common/EstimatorStatusFlags;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v13

    .line 303
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 304
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 305
    const-class v0, Lio/dronefleet/mavlink/common/MavLandedState;

    const/4 v14, 0x1

    invoke-static {v0, p0, v14}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v14

    .line 306
    new-instance p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;-><init>(IILjava/math/BigInteger;[FJFFFJFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x35

    .line 310
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloatArray([FI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 315
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 318
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 319
    const-class v1, Lio/dronefleet/mavlink/common/EstimatorStatusFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 321
    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 322
    const-class v1, Lio/dronefleet/mavlink/common/MavLandedState;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    const/4 p0, 0x1

    invoke-static {v1, v3, p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

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

    if-eqz p1, :cond_e

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 243
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;

    .line 244
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 245
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 246
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 247
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 248
    :cond_5
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 249
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 250
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 251
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 252
    :cond_9
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 253
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 254
    :cond_b
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 255
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

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

.method public final estimatorStatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap indicating which estimator outputs are valid."
        enumType = Lio/dronefleet/mavlink/common/EstimatorStatusFlags;
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 222
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final feedForwardAngularVelocityZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Feed forward Z component of angular velocity, positive is yawing to the right, NaN\n                to be ignored. This is to indicate if the autopilot is actively yawing."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 209
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 262
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 263
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 264
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 265
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 266
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 267
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 269
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 270
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 271
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 272
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 273
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final landedState()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The landed state. Is set to\n                MAV_LANDED_STATE_UNDEFINED if landed state is unknown."
        enumType = Lio/dronefleet/mavlink/common/MavLandedState;
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 236
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final q()[F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components of autopilot attitude: w, x, y, z\n                (1 0 0 0 is the null-rotation, Hamilton convention)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 133
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    return-object v0
.end method

.method public final qEstimatedDelayUs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated delay of the\n                attitude data."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 146
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    return-wide v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 105
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    return v0
.end method

.method public final timeBootUs()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x3
        unitSize = 0x8
    .end annotation

    .line 118
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutopilotStateForGimbalDevice{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeBootUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->timeBootUs:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->q:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qEstimatedDelayUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->qEstimatedDelayUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", vEstimatedDelayUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", feedForwardAngularVelocityZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->feedForwardAngularVelocityZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", estimatorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", landedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vEstimatedDelayUs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated delay of the\n                speed data."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 195
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vEstimatedDelayUs:J

    return-wide v0
.end method

.method public final vx()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Speed in NED (North, East, Down)."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vx:F

    return v0
.end method

.method public final vy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Speed in NED (North, East, Down)."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 170
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vy:F

    return v0
.end method

.method public final vz()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Speed in NED (North, East, Down)."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 182
    iget v0, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;->vz:F

    return v0
.end method
