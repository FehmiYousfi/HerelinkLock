.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueRollkdRudder:F

.field private sueRollkpRudder:F

.field private sueRtlPitchDown:F

.field private sueRudderBoost:F

.field private sueYawkdRudder:F

.field private sueYawkpRudder:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7;
    .locals 9

    .line 285
    new-instance v8, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueYawkpRudder:F

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueYawkdRudder:F

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRollkpRudder:F

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRollkdRudder:F

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRudderBoost:F

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRtlPitchDown:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7;-><init>(FFFFFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$1;)V

    return-object v8
.end method

.method public final sueRollkdRudder(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ROLLKD_RUDDER Gain for\n                Rate control of roll stabilization"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 252
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRollkdRudder:F

    return-object p0
.end method

.method public final sueRollkpRudder(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ROLLKP_RUDDER Gain for\n                Proportional control of roll stabilization"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 238
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRollkpRudder:F

    return-object p0
.end method

.method public final sueRtlPitchDown(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Return To Landing - Angle\n                to Pitch Plane Down"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 280
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRtlPitchDown:F

    return-object p0
.end method

.method public final sueRudderBoost(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SERIAL UDB EXTRA Rudder Boost Gain to Manual\n                Control when stabilized"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 266
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueRudderBoost:F

    return-object p0
.end method

.method public final sueYawkdRudder(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB YAWKD_RUDDER Gain for Rate\n                control of navigation"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 224
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueYawkdRudder:F

    return-object p0
.end method

.method public final sueYawkpRudder(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB YAWKP_RUDDER Gain for Proporional\n                control of navigation"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 210
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF7$Builder;->sueYawkpRudder:F

    return-object p0
.end method
