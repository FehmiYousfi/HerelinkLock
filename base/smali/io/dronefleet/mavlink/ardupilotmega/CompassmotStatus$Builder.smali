.class public final Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
.super Ljava/lang/Object;
.source "CompassmotStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private compensationx:F

.field private compensationy:F

.field private compensationz:F

.field private current:F

.field private interference:I

.field private throttle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus;
    .locals 9

    .line 273
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->throttle:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->current:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->interference:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->compensationx:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->compensationy:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->compensationz:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus;-><init>(IFIFFFLio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$1;)V

    return-object v8
.end method

.method public final compensationx(F)Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor Compensation X."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->compensationx:F

    return-object p0
.end method

.method public final compensationy(F)Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor Compensation Y."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->compensationy:F

    return-object p0
.end method

.method public final compensationz(F)Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor Compensation Z."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->compensationz:F

    return-object p0
.end method

.method public final current(F)Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->current:F

    return-object p0
.end method

.method public final interference(I)Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Interference."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->interference:I

    return-object p0
.end method

.method public final throttle(I)Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 203
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CompassmotStatus$Builder;->throttle:I

    return-object p0
.end method
