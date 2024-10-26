.class public final Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
.super Ljava/lang/Object;
.source "PositionTargetGlobalInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/PositionTargetGlobalInt;
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

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afx(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 581
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->afx:F

    return-object p0
.end method

.method public final afy(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 595
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->afy:F

    return-object p0
.end method

.method public final afz(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration or force (if bit 10 of\n                type_mask is set) in NED frame in meter / s^2 or N"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 609
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->afz:F

    return-object p0
.end method

.method public final alt(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL, AGL or relative to home\n                altitude, depending on frame)"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 528
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->alt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/PositionTargetGlobalInt;
    .locals 20

    move-object/from16 v0, p0

    .line 640
    new-instance v18, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt;

    move-object/from16 v1, v18

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->timeBootMs:J

    iget-object v4, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->latInt:I

    iget v7, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->lonInt:I

    iget v8, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->alt:F

    iget v9, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->vx:F

    iget v10, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->vy:F

    iget v11, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->vz:F

    iget v12, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->afx:F

    iget v13, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->afy:F

    iget v14, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->afz:F

    iget v15, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->yaw:F

    move-object/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->yawRate:F

    move/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFFFFFFLio/dronefleet/mavlink/common/PositionTargetGlobalInt$1;)V

    return-object v18
.end method

.method public final coordinateFrame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0

    .line 435
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Valid options are:\n                MAV_FRAME_GLOBAL_INT = 5, MAV_FRAME_GLOBAL_RELATIVE_ALT_INT = 6,\n                MAV_FRAME_GLOBAL_TERRAIN_ALT_INT = 11"
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 426
    iput-object p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->coordinateFrame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final coordinateFrame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .line 451
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs coordinateFrame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0

    .line 443
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->coordinateFrame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final latInt(I)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position in WGS84 frame"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 500
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->latInt:I

    return-object p0
.end method

.method public final lonInt(I)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position in WGS84 frame"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 514
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->lonInt:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot). The rationale for the timestamp in the setpoint is to allow the system to\n                compensate for the transport delay of the setpoint. This allows the system to\n                compensate processing latency."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 409
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final typeMask(Lio/dronefleet/mavlink/common/PositionTargetTypemask;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0

    .line 473
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/PositionTargetTypemask;",
            ">;)",
            "Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/PositionTargetTypemask;
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 465
    iput-object p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final typeMask(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;"
        }
    .end annotation

    .line 487
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs typeMask([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0

    .line 480
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X velocity in NED frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 541
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y velocity in NED frame"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 554
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z velocity in NED frame"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 567
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->vz:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw setpoint"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 622
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->yaw:F

    return-object p0
.end method

.method public final yawRate(F)Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "yaw rate setpoint"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 635
    iput p1, p0, Lio/dronefleet/mavlink/common/PositionTargetGlobalInt$Builder;->yawRate:F

    return-object p0
.end method
