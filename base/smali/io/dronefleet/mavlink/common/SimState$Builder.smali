.class public final Lio/dronefleet/mavlink/common/SimState$Builder;
.super Ljava/lang/Object;
.source "SimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:F

.field private lat:F

.field private lon:F

.field private pitch:F

.field private q1:F

.field private q2:F

.field private q3:F

.field private q4:F

.field private roll:F

.field private stdDevHorz:F

.field private stdDevVert:F

.field private vd:F

.field private ve:F

.field private vn:F

.field private xacc:F

.field private xgyro:F

.field private yacc:F

.field private yaw:F

.field private ygyro:F

.field private zacc:F

.field private zgyro:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 747
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->alt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SimState;
    .locals 26

    move-object/from16 v0, p0

    .line 820
    new-instance v24, Lio/dronefleet/mavlink/common/SimState;

    move-object/from16 v1, v24

    iget v2, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->q1:F

    iget v3, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->q2:F

    iget v4, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->q3:F

    iget v5, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->q4:F

    iget v6, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->roll:F

    iget v7, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->pitch:F

    iget v8, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->yaw:F

    iget v9, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->xacc:F

    iget v10, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->yacc:F

    iget v11, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->zacc:F

    iget v12, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->xgyro:F

    iget v13, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->ygyro:F

    iget v14, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->zgyro:F

    iget v15, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->lat:F

    move-object/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->lon:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->alt:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->stdDevHorz:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->stdDevVert:F

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->vn:F

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->ve:F

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SimState$Builder;->vd:F

    move/from16 v22, v1

    const/16 v23, 0x0

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lio/dronefleet/mavlink/common/SimState;-><init>(FFFFFFFFFFFFFFFFFFFFFLio/dronefleet/mavlink/common/SimState$1;)V

    return-object v24
.end method

.method public final lat(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 721
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->lat:F

    return-object p0
.end method

.method public final lon(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 734
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->lon:F

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Attitude pitch expressed as Euler angles, not\n                recommended except for human-readable outputs"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 616
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->pitch:F

    return-object p0
.end method

.method public final q1(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True attitude quaternion component 1, w (1 in\n                null-rotation)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 546
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->q1:F

    return-object p0
.end method

.method public final q2(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True attitude quaternion component 2, x (0 in\n                null-rotation)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 560
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->q2:F

    return-object p0
.end method

.method public final q3(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True attitude quaternion component 3, y (0 in\n                null-rotation)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 574
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->q3:F

    return-object p0
.end method

.method public final q4(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True attitude quaternion component 4, z (0 in\n                null-rotation)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 588
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->q4:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Attitude roll expressed as Euler angles, not recommended\n                except for human-readable outputs"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 602
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->roll:F

    return-object p0
.end method

.method public final stdDevHorz(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position standard deviation"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 760
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->stdDevHorz:F

    return-object p0
.end method

.method public final stdDevVert(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical position standard deviation"
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 773
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->stdDevVert:F

    return-object p0
.end method

.method public final vd(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True velocity in down direction in earth-fixed\n                NED frame"
        position = 0x15
        unitSize = 0x4
    .end annotation

    .line 815
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->vd:F

    return-object p0
.end method

.method public final ve(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True velocity in east direction in earth-fixed\n                NED frame"
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 801
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->ve:F

    return-object p0
.end method

.method public final vn(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True velocity in north direction in\n                earth-fixed NED frame"
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 787
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->vn:F

    return-object p0
.end method

.method public final xacc(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 643
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->xacc:F

    return-object p0
.end method

.method public final xgyro(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around X axis"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 682
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->xgyro:F

    return-object p0
.end method

.method public final yacc(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 656
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->yacc:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Attitude yaw expressed as Euler angles, not recommended\n                except for human-readable outputs"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 630
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->yaw:F

    return-object p0
.end method

.method public final ygyro(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Y axis"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 695
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->ygyro:F

    return-object p0
.end method

.method public final zacc(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 669
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->zacc:F

    return-object p0
.end method

.method public final zgyro(F)Lio/dronefleet/mavlink/common/SimState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Z axis"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 708
    iput p1, p0, Lio/dronefleet/mavlink/common/SimState$Builder;->zgyro:F

    return-object p0
.end method
