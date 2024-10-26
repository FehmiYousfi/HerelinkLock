.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAltHoldPitchHigh:F

.field private sueAltHoldPitchMax:F

.field private sueAltHoldPitchMin:F

.field private sueAltHoldThrottleMax:F

.field private sueAltHoldThrottleMin:F

.field private sueHeightTargetMax:F

.field private sueHeightTargetMin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8;
    .locals 10

    .line 315
    new-instance v9, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueHeightTargetMax:F

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueHeightTargetMin:F

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldThrottleMin:F

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldThrottleMax:F

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldPitchMin:F

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldPitchMax:F

    iget v7, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldPitchHigh:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8;-><init>(FFFFFFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$1;)V

    return-object v9
.end method

.method public final sueAltHoldPitchHigh(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra\n                ALT_HOLD_PITCH_HIGH"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 310
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldPitchHigh:F

    return-object p0
.end method

.method public final sueAltHoldPitchMax(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ALT_HOLD_PITCH_MAX"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 296
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldPitchMax:F

    return-object p0
.end method

.method public final sueAltHoldPitchMin(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ALT_HOLD_PITCH_MIN"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 283
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldPitchMin:F

    return-object p0
.end method

.method public final sueAltHoldThrottleMax(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra\n                ALT_HOLD_THROTTLE_MAX"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 270
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldThrottleMax:F

    return-object p0
.end method

.method public final sueAltHoldThrottleMin(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra\n                ALT_HOLD_THROTTLE_MIN"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 256
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueAltHoldThrottleMin:F

    return-object p0
.end method

.method public final sueHeightTargetMax(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra HEIGHT_TARGET_MAX"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueHeightTargetMax:F

    return-object p0
.end method

.method public final sueHeightTargetMin(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra HEIGHT_TARGET_MIN"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF8$Builder;->sueHeightTargetMin:F

    return-object p0
.end method
