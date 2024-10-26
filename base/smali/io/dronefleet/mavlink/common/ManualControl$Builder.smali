.class public final Lio/dronefleet/mavlink/common/ManualControl$Builder;
.super Ljava/lang/Object;
.source "ManualControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ManualControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private buttons:I

.field private r:I

.field private target:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ManualControl;
    .locals 9

    .line 330
    new-instance v8, Lio/dronefleet/mavlink/common/ManualControl;

    iget v1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->x:I

    iget v3, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->y:I

    iget v4, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->z:I

    iget v5, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->r:I

    iget v6, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->buttons:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/ManualControl;-><init>(IIIIIILio/dronefleet/mavlink/common/ManualControl$1;)V

    return-object v8
.end method

.method public final buttons(I)Lio/dronefleet/mavlink/common/ManualControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield corresponding to the joystick buttons\'\n                current state, 1 for pressed, 0 for released. The lowest bit corresponds to Button\n                1."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 325
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->buttons:I

    return-object p0
.end method

.method public final r(I)Lio/dronefleet/mavlink/common/ManualControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "R-axis, normalized to the range [-1000,1000]. A value of\n                INT16_MAX indicates that this axis is invalid. Generally corresponds to a twisting\n                of the joystick, with counter-clockwise being 1000 and clockwise being -1000, and\n                the yaw of a vehicle."
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 309
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->r:I

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/common/ManualControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system to be controlled."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 233
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->target:I

    return-object p0
.end method

.method public final x(I)Lio/dronefleet/mavlink/common/ManualControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X-axis, normalized to the range [-1000,1000]. A value of\n                INT16_MAX indicates that this axis is invalid. Generally corresponds to\n                forward(1000)-backward(-1000) movement on a joystick and the pitch of a vehicle."
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 251
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->x:I

    return-object p0
.end method

.method public final y(I)Lio/dronefleet/mavlink/common/ManualControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y-axis, normalized to the range [-1000,1000]. A value of\n                INT16_MAX indicates that this axis is invalid. Generally corresponds to\n                left(-1000)-right(1000) movement on a joystick and the roll of a vehicle."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 269
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->y:I

    return-object p0
.end method

.method public final z(I)Lio/dronefleet/mavlink/common/ManualControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z-axis, normalized to the range [-1000,1000]. A value of\n                INT16_MAX indicates that this axis is invalid. Generally corresponds to a separate\n                slider movement with maximum being 1000 and minimum being -1000 on a joystick and\n                the thrust of a vehicle. Positive values are positive thrust, negative values are\n                negative thrust."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualControl$Builder;->z:I

    return-object p0
.end method
