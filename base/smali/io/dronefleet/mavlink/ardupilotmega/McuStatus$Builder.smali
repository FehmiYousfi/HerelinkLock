.class public final Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
.super Ljava/lang/Object;
.source "McuStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/McuStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:I

.field private mcuTemperature:I

.field private mcuVoltage:I

.field private mcuVoltageMax:I

.field private mcuVoltageMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/McuStatus;
    .locals 8

    .line 242
    new-instance v7, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->id:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuTemperature:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuVoltage:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuVoltageMin:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuVoltageMax:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;-><init>(IIIIILio/dronefleet/mavlink/ardupilotmega/McuStatus$1;)V

    return-object v7
.end method

.method public final id(I)Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU instance"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 184
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->id:I

    return-object p0
.end method

.method public final mcuTemperature(I)Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU Internal temperature"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 198
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuTemperature:I

    return-object p0
.end method

.method public final mcuVoltage(I)Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU voltage"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 211
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuVoltage:I

    return-object p0
.end method

.method public final mcuVoltageMax(I)Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU voltage maximum"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 237
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuVoltageMax:I

    return-object p0
.end method

.method public final mcuVoltageMin(I)Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU voltage minimum"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 224
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;->mcuVoltageMin:I

    return-object p0
.end method
