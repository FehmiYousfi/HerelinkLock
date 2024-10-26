.class public final Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;
.super Ljava/lang/Object;
.source "GimbalTorqueCmdReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private azTorqueCmd:I

.field private elTorqueCmd:I

.field private rlTorqueCmd:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final azTorqueCmd(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Azimuth Torque Command."
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 239
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->azTorqueCmd:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport;
    .locals 8

    .line 244
    new-instance v7, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->rlTorqueCmd:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->elTorqueCmd:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->azTorqueCmd:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport;-><init>(IIIIILio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$1;)V

    return-object v7
.end method

.method public final elTorqueCmd(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Elevation Torque Command."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 225
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->elTorqueCmd:I

    return-object p0
.end method

.method public final rlTorqueCmd(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll Torque Command."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 211
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->rlTorqueCmd:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 197
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 184
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalTorqueCmdReport$Builder;->targetSystem:I

    return-object p0
.end method
