.class public final Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
.super Ljava/lang/Object;
.source "GimbalDeviceSetAttitude.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private angularVelocityX:F

.field private angularVelocityY:F

.field private angularVelocityZ:F

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;"
        }
    .end annotation
.end field

.field private q:[F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final angularVelocityX(F)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X component of\n                angular velocity, positive is rolling to the right, NaN to be ignored."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 331
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->angularVelocityX:F

    return-object p0
.end method

.method public final angularVelocityY(F)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y component of\n                angular velocity, positive is pitching up, NaN to be ignored."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 345
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->angularVelocityY:F

    return-object p0
.end method

.method public final angularVelocityZ(F)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z component of\n                angular velocity, positive is yawing to the right, NaN to be ignored."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 359
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->angularVelocityZ:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;
    .locals 10

    .line 364
    new-instance v9, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->q:[F

    iget v5, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->angularVelocityX:F

    iget v6, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->angularVelocityY:F

    iget v7, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->angularVelocityZ:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$1;)V

    return-object v9
.end method

.method public final flags(Lio/dronefleet/mavlink/common/GimbalDeviceFlags;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0

    .line 285
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Low level gimbal flags."
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 277
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;"
        }
    .end annotation

    .line 299
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0

    .line 292
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components, w, x, y, z (1 0 0\n                0 is the null-rotation, the frame is depends on whether the flag\n                GIMBAL_DEVICE_FLAGS_YAW_LOCK is set, set all fields to NaN if only angular velocity\n                should be used)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 317
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->q:[F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 263
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 250
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceSetAttitude$Builder;->targetSystem:I

    return-object p0
.end method
