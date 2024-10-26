.class public final Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
.super Ljava/lang/Object;
.source "SetAttitudeTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetAttitudeTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bodyPitchRate:F

.field private bodyRollRate:F

.field private bodyYawRate:F

.field private q:[F

.field private targetComponent:I

.field private targetSystem:I

.field private thrust:F

.field private timeBootMs:J

.field private typeMask:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bodyPitchRate(F)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body pitch rate"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 385
    iput p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->bodyPitchRate:F

    return-object p0
.end method

.method public final bodyRollRate(F)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body roll rate"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 372
    iput p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->bodyRollRate:F

    return-object p0
.end method

.method public final bodyYawRate(F)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body yaw rate"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 398
    iput p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->bodyYawRate:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SetAttitudeTarget;
    .locals 13

    .line 417
    new-instance v12, Lio/dronefleet/mavlink/common/SetAttitudeTarget;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->targetSystem:I

    iget v4, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->targetComponent:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->q:[F

    iget v7, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->bodyRollRate:F

    iget v8, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->bodyPitchRate:F

    iget v9, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->bodyYawRate:F

    iget v10, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->thrust:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/SetAttitudeTarget;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;[FFFFFLio/dronefleet/mavlink/common/SetAttitudeTarget$1;)V

    return-object v12
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Attitude quaternion (w, x, y, z order, zero-rotation is\n                1, 0, 0, 0)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 359
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->q:[F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 308
    iput p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 295
    iput p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->targetSystem:I

    return-object p0
.end method

.method public final thrust(F)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collective thrust, normalized to 0 .. 1 (-1 .. 1 for\n                vehicles capable of reverse trust)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 412
    iput p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->thrust:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 282
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final typeMask(Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0

    .line 331
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 323
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final typeMask(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;"
        }
    .end annotation

    .line 345
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs typeMask([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;
    .locals 0

    .line 338
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetAttitudeTarget$Builder;

    move-result-object p1

    return-object p1
.end method
