.class public final Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
.super Ljava/lang/Object;
.source "SetPositionTargetGlobalInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private afx:F

.field private afy:F

.field private afz:F

.field private alt:F

.field private coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private latInt:I

.field private lonInt:I

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

.field private yaw:F

.field private yawRate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afx(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 652
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->afx:F

    return-object p0
.end method

.method public final afy(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 666
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->afy:F

    return-object p0
.end method

.method public final afz(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 680
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->afz:F

    return-object p0
.end method

.method public final alt(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL, Relative to home, or AGL -\n                depending on frame)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 599
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->alt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt;
    .locals 22

    move-object/from16 v0, p0

    .line 711
    new-instance v20, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->timeBootMs:J

    iget v4, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->targetSystem:I

    iget v5, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->targetComponent:I

    iget-object v6, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v7, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget v8, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->latInt:I

    iget v9, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->lonInt:I

    iget v10, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->alt:F

    iget v11, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->vx:F

    iget v12, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->vy:F

    iget v13, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->vz:F

    iget v14, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->afx:F

    iget v15, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->afy:F

    move-object/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->afz:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->yaw:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->yawRate:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFFFFFFLio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$1;)V

    return-object v20
.end method

.method public final coordinateFrame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0

    .line 506
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Valid options are:\n                MAV_FRAME_GLOBAL_INT = 5, MAV_FRAME_GLOBAL_RELATIVE_ALT_INT = 6,\n                MAV_FRAME_GLOBAL_TERRAIN_ALT_INT = 11"
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 497
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final coordinateFrame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .line 522
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs coordinateFrame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0

    .line 514
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final latInt(I)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position in WGS84 frame"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 571
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->latInt:I

    return-object p0
.end method

.method public final lonInt(I)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position in WGS84 frame"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 585
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->lonInt:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 480
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 467
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot). The rationale for the timestamp in the setpoint is to allow the system to\n                compensate for the transport delay of the setpoint. This allows the system to\n                compensate processing latency."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 454
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final typeMask(Lio/dronefleet/mavlink/common/PositionTargetTypemask;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0

    .line 544
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/PositionTargetTypemask;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 536
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final typeMask(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .line 558
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs typeMask([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0

    .line 551
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X velocity in NED frame"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 612
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y velocity in NED frame"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 625
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z velocity in NED frame"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 638
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->vz:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw setpoint"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 693
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->yaw:F

    return-object p0
.end method

.method public final yawRate(F)Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw rate setpoint"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 706
    iput p1, p0, Lio/dronefleet/mavlink/common/SetPositionTargetGlobalInt$Builder;->yawRate:F

    return-object p0
.end method
