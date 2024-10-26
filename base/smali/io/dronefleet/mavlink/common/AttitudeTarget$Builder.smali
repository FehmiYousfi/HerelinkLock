.class public final Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
.super Ljava/lang/Object;
.source "AttitudeTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AttitudeTarget;
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

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bodyPitchRate(F)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body pitch rate"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 316
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->bodyPitchRate:F

    return-object p0
.end method

.method public final bodyRollRate(F)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body roll rate"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 303
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->bodyRollRate:F

    return-object p0
.end method

.method public final bodyYawRate(F)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body yaw rate"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 329
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->bodyYawRate:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/AttitudeTarget;
    .locals 11

    .line 348
    new-instance v10, Lio/dronefleet/mavlink/common/AttitudeTarget;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->q:[F

    iget v5, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->bodyRollRate:F

    iget v6, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->bodyPitchRate:F

    iget v7, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->bodyYawRate:F

    iget v8, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->thrust:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/AttitudeTarget;-><init>(JLio/dronefleet/mavlink/util/EnumValue;[FFFFFLio/dronefleet/mavlink/common/AttitudeTarget$1;)V

    return-object v10
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Attitude quaternion (w, x, y, z order, zero-rotation is\n                1, 0, 0, 0)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 290
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->q:[F

    return-object p0
.end method

.method public final thrust(F)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collective thrust, normalized to 0 .. 1 (-1 .. 1 for\n                vehicles capable of reverse trust)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 343
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->thrust:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 239
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final typeMask(Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0

    .line 262
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to indicate which dimensions should be ignored by the\n                vehicle."
        enumType = Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 254
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->typeMask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final typeMask(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;"
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs typeMask([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;
    .locals 0

    .line 269
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;->typeMask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AttitudeTarget$Builder;

    move-result-object p1

    return-object p1
.end method
