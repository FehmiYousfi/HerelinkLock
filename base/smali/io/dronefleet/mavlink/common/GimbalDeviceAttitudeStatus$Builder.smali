.class public final Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
.super Ljava/lang/Object;
.source "GimbalDeviceAttitudeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private angularVelocityX:F

.field private angularVelocityY:F

.field private angularVelocityZ:F

.field private failureFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;",
            ">;"
        }
    .end annotation
.end field

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

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final angularVelocityX(F)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X component of\n                angular velocity (NaN if unknown)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 395
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->angularVelocityX:F

    return-object p0
.end method

.method public final angularVelocityY(F)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y component of\n                angular velocity (NaN if unknown)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 409
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->angularVelocityY:F

    return-object p0
.end method

.method public final angularVelocityZ(F)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z component of\n                angular velocity (NaN if unknown)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 423
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->angularVelocityZ:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;
    .locals 13

    .line 463
    new-instance v12, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;

    iget v1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->targetComponent:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->timeBootMs:J

    iget-object v5, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->q:[F

    iget v7, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->angularVelocityX:F

    iget v8, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->angularVelocityY:F

    iget v9, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->angularVelocityZ:F

    iget-object v10, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;[FFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$1;)V

    return-object v12
.end method

.method public final failureFlags(Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0

    .line 445
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Failure flags (0 for no failure)"
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceErrorFlags;
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 437
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final failureFlags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;"
        }
    .end annotation

    .line 459
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs failureFlags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0

    .line 452
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/common/GimbalDeviceFlags;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0

    .line 351
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current gimbal flags\n                set."
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 343
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;"
        }
    .end annotation

    .line 365
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0

    .line 358
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components, w, x, y, z (1 0 0 0 is the\n                null-rotation, the frame is depends on whether the flag GIMBAL_DEVICE_FLAGS_YAW_LOCK\n                is set)"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 381
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->q:[F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 314
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 301
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 328
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceAttitudeStatus$Builder;->timeBootMs:J

    return-object p0
.end method
