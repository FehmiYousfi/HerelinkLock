.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sueAirframe:I

.field private sueBoardType:I

.field private sueClockConfig:I

.field private sueDr:I

.field private sueFlightPlanType:I

.field private sueGpsType:I

.field private sueOscFailCount:I

.field private sueRcon:I

.field private sueTrapFlags:I

.field private sueTrapSource:J

.field private sueWindEstimation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14;
    .locals 15

    .line 463
    new-instance v14, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueWindEstimation:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueGpsType:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueDr:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueBoardType:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueAirframe:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueRcon:I

    iget v7, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueTrapFlags:I

    iget-wide v8, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueTrapSource:J

    iget v10, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueOscFailCount:I

    iget v11, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueClockConfig:I

    iget v12, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueFlightPlanType:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14;-><init>(IIIIIIIJIIILio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$1;)V

    return-object v14
.end method

.method public final sueAirframe(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of Airframe"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 374
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueAirframe:I

    return-object p0
.end method

.method public final sueBoardType(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of UDB Hardware"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 361
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueBoardType:I

    return-object p0
.end method

.method public final sueClockConfig(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra UDB Internal Clock\n                Configuration"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 445
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueClockConfig:I

    return-object p0
.end method

.method public final sueDr(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Dead Reckoning Enabled"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 348
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueDr:I

    return-object p0
.end method

.method public final sueFlightPlanType(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of Flight Plan"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 458
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueFlightPlanType:I

    return-object p0
.end method

.method public final sueGpsType(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type of GPS Unit"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 335
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueGpsType:I

    return-object p0
.end method

.method public final sueOscFailCount(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Number of Ocillator\n                Failures"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 431
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueOscFailCount:I

    return-object p0
.end method

.method public final sueRcon(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Reboot Register of DSPIC"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 388
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueRcon:I

    return-object p0
.end method

.method public final sueTrapFlags(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Last dspic Trap Flags"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 402
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueTrapFlags:I

    return-object p0
.end method

.method public final sueTrapSource(J)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Type Program Address of\n                Last Trap"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 416
    iput-wide p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueTrapSource:J

    return-object p0
.end method

.method public final sueWindEstimation(I)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra Wind Estimation\n                Enabled"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 322
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF14$Builder;->sueWindEstimation:I

    return-object p0
.end method
