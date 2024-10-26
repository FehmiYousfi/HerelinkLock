.class public final Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
.super Ljava/lang/Object;
.source "AirspeedAutocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private diffPressure:F

.field private eas2tas:F

.field private pax:F

.field private pby:F

.field private pcz:F

.field private ratio:F

.field private stateX:F

.field private stateY:F

.field private stateZ:F

.field private vx:F

.field private vy:F

.field private vz:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal;
    .locals 15

    .line 484
    new-instance v14, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->vx:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->vy:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->vz:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->diffPressure:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->eas2tas:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->ratio:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->stateX:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->stateY:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->stateZ:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->pax:F

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->pby:F

    iget v12, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->pcz:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal;-><init>(FFFFFFFFFFFFLio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$1;)V

    return-object v14
.end method

.method public final diffPressure(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Differential pressure."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 375
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->diffPressure:F

    return-object p0
.end method

.method public final eas2tas(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated to true airspeed ratio."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 388
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->eas2tas:F

    return-object p0
.end method

.method public final pax(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EKF Pax."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 453
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->pax:F

    return-object p0
.end method

.method public final pby(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EKF Pby."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 466
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->pby:F

    return-object p0
.end method

.method public final pcz(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EKF Pcz."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 479
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->pcz:F

    return-object p0
.end method

.method public final ratio(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed ratio."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->ratio:F

    return-object p0
.end method

.method public final stateX(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EKF state x."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 414
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->stateX:F

    return-object p0
.end method

.method public final stateY(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EKF state y."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 427
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->stateY:F

    return-object p0
.end method

.method public final stateZ(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "EKF state z."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 440
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->stateZ:F

    return-object p0
.end method

.method public final vx(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity north."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity east."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 349
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity down."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 362
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AirspeedAutocal$Builder;->vz:F

    return-object p0
.end method
