.class public final Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;
.super Ljava/lang/Object;
.source "SetActuatorControlTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetActuatorControlTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private controls:[F

.field private groupMlx:I

.field private targetComponent:I

.field private targetSystem:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/SetActuatorControlTarget;
    .locals 8

    .line 267
    new-instance v7, Lio/dronefleet/mavlink/common/SetActuatorControlTarget;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->groupMlx:I

    iget v3, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->targetSystem:I

    iget v4, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->targetComponent:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->controls:[F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/SetActuatorControlTarget;-><init>(Ljava/math/BigInteger;III[FLio/dronefleet/mavlink/common/SetActuatorControlTarget$1;)V

    return-object v7
.end method

.method public final controls([F)Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Actuator controls. Normed to -1..+1 where 0 is\n                neutral position. Throttle for single rotation direction motors is 0..1, negative\n                range for reverse direction. Standard mapping for attitude controls (group 0):\n                (index 0-7): roll, pitch, yaw, throttle, flaps, spoilers, airbrakes, landing gear.\n                Load a pass-through mixer to repurpose them as generic outputs."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 262
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->controls:[F

    return-object p0
.end method

.method public final groupMlx(I)Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Actuator group. The \"_mlx\" indicates this is a\n                multi-instance message and a MAVLink parser should use this field to difference\n                between instances."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->groupMlx:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 199
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetActuatorControlTarget$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
