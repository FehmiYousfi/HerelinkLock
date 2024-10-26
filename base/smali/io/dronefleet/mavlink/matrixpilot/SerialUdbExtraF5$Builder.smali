.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueRollkd:F

.field private sueRollkp:F

.field private sueYawkdAileron:F

.field private sueYawkpAileron:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;
    .locals 7

    .line 211
    new-instance v6, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueYawkpAileron:F

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueYawkdAileron:F

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueRollkp:F

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueRollkd:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;-><init>(FFFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$1;)V

    return-object v6
.end method

.method public final sueRollkd(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ROLLKD Gain for Rate control of\n                roll stabilization"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 206
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueRollkd:F

    return-object p0
.end method

.method public final sueRollkp(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ROLLKP Gain for Proportional\n                control of roll stabilization"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 192
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueRollkp:F

    return-object p0
.end method

.method public final sueYawkdAileron(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB YAWKD_AILERON Gain for Rate\n                control of navigation"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 178
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueYawkdAileron:F

    return-object p0
.end method

.method public final sueYawkpAileron(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB YAWKP_AILERON Gain for\n                Proporional control of navigation"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;->sueYawkpAileron:F

    return-object p0
.end method
