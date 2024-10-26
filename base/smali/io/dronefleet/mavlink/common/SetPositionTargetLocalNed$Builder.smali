.class public final Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
.super Ljava/lang/Object;
.source "SetPositionTargetLocalNed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private afx:F

.field private afy:F

.field private afz:F

.field private coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I

.field private timeBootMs:J

.field private typeMask:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;"
        }
    .end annotation
.end field

.field private vx:F

.field private vy:F

.field private vz:F

.field private x:F

.field private y:F

.field private yaw:F

.field private yawRate:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afx(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 639
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->afx:F

    return-object p0
.end method

.method public final afy(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 653
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->afy:F

    return-object p0
.end method

.method public final afz(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 667
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->afz:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;
    .locals 22

    move-object/from16 v0, p0

    .line 698
    new-instance v20, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->timeBootMs:J

    iget v4, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->targetSystem:I

    iget v5, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->targetComponent:I

    iget-object v6, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v7, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget v8, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->x:F

    iget v9, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->y:F

    iget v10, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->z:F

    iget v11, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->vx:F

    iget v12, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->vy:F

    iget v13, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->vz:F

    iget v14, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->afx:F

    iget v15, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->afy:F

    move-object/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->afz:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->yaw:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->yawRate:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFLio/dronefleet/mavlink/common/SetPositionTargetLocalNed$1;)V

    return-object v20
.end method

.method public final coordinateFrame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0

    .line 495
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Valid options are:\n                MAV_FRAME_LOCAL_NED = 1, MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8,\n                MAV_FRAME_BODY_OFFSET_NED = 9"
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 486
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final coordinateFrame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;"
        }
    .end annotation

    .line 511
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs coordinateFrame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0

    .line 503
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 469
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 456
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 443
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final typeMask(Lio/dronefleet/mavlink/common/PositionTargetTypemask;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0

    .line 533
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/PositionTargetTypemask;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 525
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final typeMask(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;"
        }
    .end annotation

    .line 547
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs typeMask([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0

    .line 540
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X velocity in NED frame"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 599
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y velocity in NED frame"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 612
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z velocity in NED frame"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 625
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->vz:F

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position in NED frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 559
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position in NED frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 572
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->y:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw setpoint"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 680
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->yaw:F

    return-object p0
.end method

.method public final yawRate(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw rate setpoint"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 693
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->yawRate:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position in NED frame (note, altitude is\n                negative in NED)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 586
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetLocalNed$Builder;->z:F

    return-object p0
.end method
