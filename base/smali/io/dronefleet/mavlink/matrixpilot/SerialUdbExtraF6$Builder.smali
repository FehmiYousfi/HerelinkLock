.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueElevatorBoost:F

.field private suePitchgain:F

.field private suePitchkd:F

.field private sueRollElevMix:F

.field private sueRudderElevMix:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6;
    .locals 8

    .line 242
    new-instance v7, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->suePitchgain:F

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->suePitchkd:F

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->sueRudderElevMix:F

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->sueRollElevMix:F

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->sueElevatorBoost:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6;-><init>(FFFFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$1;)V

    return-object v7
.end method

.method public final sueElevatorBoost(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gain For Boosting Manual Elevator control\n                When Plane Stabilized"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 237
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->sueElevatorBoost:F

    return-object p0
.end method

.method public final suePitchgain(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra PITCHGAIN Proportional\n                Control"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 184
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->suePitchgain:F

    return-object p0
.end method

.method public final suePitchkd(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Pitch Rate Control"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 197
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->suePitchkd:F

    return-object p0
.end method

.method public final sueRollElevMix(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Roll to Elevator Mix"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 223
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->sueRollElevMix:F

    return-object p0
.end method

.method public final sueRudderElevMix(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Rudder to Elevator Mix"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 210
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF6$Builder;->sueRudderElevMix:F

    return-object p0
.end method
