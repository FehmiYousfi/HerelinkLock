.class public final Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
.super Ljava/lang/Object;
.source "AttitudeQuaternion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AttitudeQuaternion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pitchspeed:F

.field private q1:F

.field private q2:F

.field private q3:F

.field private q4:F

.field private reprOffsetQ:[F

.field private rollspeed:F

.field private timeBootMs:J

.field private yawspeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/AttitudeQuaternion;
    .locals 13

    .line 411
    new-instance v12, Lio/dronefleet/mavlink/common/AttitudeQuaternion;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q1:F

    iget v4, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q2:F

    iget v5, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q3:F

    iget v6, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q4:F

    iget v7, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->rollspeed:F

    iget v8, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->pitchspeed:F

    iget v9, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->yawspeed:F

    iget-object v10, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->reprOffsetQ:[F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/AttitudeQuaternion;-><init>(JFFFFFFF[FLio/dronefleet/mavlink/common/AttitudeQuaternion$1;)V

    return-object v12
.end method

.method public final pitchspeed(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angular speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 366
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->pitchspeed:F

    return-object p0
.end method

.method public final q1(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 1, w (1 in null-rotation)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 301
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q1:F

    return-object p0
.end method

.method public final q2(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 2, x (0 in null-rotation)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 314
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q2:F

    return-object p0
.end method

.method public final q3(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 3, y (0 in null-rotation)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 327
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q3:F

    return-object p0
.end method

.method public final q4(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Quaternion component 4, z (0 in null-rotation)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 340
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->q4:F

    return-object p0
.end method

.method public final reprOffsetQ([F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Rotation offset by which the attitude\n                quaternion and angular speed vector should be rotated for user display (quaternion\n                with [w, x, y, z] order, zero-rotation is [1, 0, 0, 0], send [0, 0, 0, 0] if field\n                not supported). This field is intended for systems in which the reference attitude\n                may change during flight. For example, tailsitters VTOLs rotate their reference\n                attitude by 90 degrees between hover mode and fixed wing mode, thus repr_offset_q is\n                equal to [1, 0, 0, 0] in hover mode and equal to [0.7071, 0, 0.7071, 0] in fixed\n                wing mode."
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 406
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->reprOffsetQ:[F

    return-object p0
.end method

.method public final rollspeed(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angular speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 353
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->rollspeed:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 288
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final yawspeed(F)Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angular speed"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 379
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternion$Builder;->yawspeed:F

    return-object p0
.end method
