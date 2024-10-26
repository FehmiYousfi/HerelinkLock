.class public final Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
.super Ljava/lang/Object;
.source "AutopilotStateForGimbalDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private feedForwardAngularVelocityZ:F

.field private landedState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation
.end field

.field private q:[F

.field private qEstimatedDelayUs:J

.field private targetComponent:I

.field private targetSystem:I

.field private timeBootUs:Ljava/math/BigInteger;

.field private vEstimatedDelayUs:J

.field private vx:F

.field private vy:F

.field private vz:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;
    .locals 18

    move-object/from16 v0, p0

    .line 561
    new-instance v17, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;

    iget v2, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->targetSystem:I

    iget v3, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->targetComponent:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->timeBootUs:Ljava/math/BigInteger;

    iget-object v5, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->q:[F

    iget-wide v6, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->qEstimatedDelayUs:J

    iget v8, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vx:F

    iget v9, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vy:F

    iget v10, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vz:F

    iget-wide v11, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vEstimatedDelayUs:J

    iget v13, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->feedForwardAngularVelocityZ:F

    iget-object v14, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v15, v0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice;-><init>(IILjava/math/BigInteger;[FJFFFJFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$1;)V

    return-object v17
.end method

.method public final estimatorStatus(Lio/dronefleet/mavlink/common/EstimatorStatusFlags;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0

    .line 507
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->estimatorStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final estimatorStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap indicating which estimator outputs are valid."
        enumType = Lio/dronefleet/mavlink/common/EstimatorStatusFlags;
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 499
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->estimatorStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final estimatorStatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;"
        }
    .end annotation

    .line 521
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->estimatorStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs estimatorStatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0

    .line 514
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->estimatorStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final feedForwardAngularVelocityZ(F)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Feed forward Z component of angular velocity, positive is yawing to the right, NaN\n                to be ignored. This is to indicate if the autopilot is actively yawing."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->feedForwardAngularVelocityZ:F

    return-object p0
.end method

.method public final landedState(Lio/dronefleet/mavlink/common/MavLandedState;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0

    .line 543
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The landed state. Is set to\n                MAV_LANDED_STATE_UNDEFINED if landed state is unknown."
        enumType = Lio/dronefleet/mavlink/common/MavLandedState;
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 535
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final landedState(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;"
        }
    .end annotation

    .line 557
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs landedState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0

    .line 550
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components of autopilot attitude: w, x, y, z\n                (1 0 0 0 is the null-rotation, Hamilton convention)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 403
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->q:[F

    return-object p0
.end method

.method public final qEstimatedDelayUs(J)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated delay of the\n                attitude data."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 417
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->qEstimatedDelayUs:J

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 373
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 360
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeBootUs(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x3
        unitSize = 0x8
    .end annotation

    .line 387
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->timeBootUs:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vEstimatedDelayUs(J)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated delay of the\n                speed data."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 470
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vEstimatedDelayUs:J

    return-object p0
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Speed in NED (North, East, Down)."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 430
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Speed in NED (North, East, Down)."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 443
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Speed in NED (North, East, Down)."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 456
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotStateForGimbalDevice$Builder;->vz:F

    return-object p0
.end method
