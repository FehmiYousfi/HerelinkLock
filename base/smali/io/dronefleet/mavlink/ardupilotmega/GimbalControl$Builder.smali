.class public final Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
.super Ljava/lang/Object;
.source "GimbalControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private demandedRateX:F

.field private demandedRateY:F

.field private demandedRateZ:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;
    .locals 8

    .line 238
    new-instance v7, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->demandedRateX:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->demandedRateY:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->demandedRateZ:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;-><init>(IIFFFLio/dronefleet/mavlink/ardupilotmega/GimbalControl$1;)V

    return-object v7
.end method

.method public final demandedRateX(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Demanded angular rate X."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 207
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->demandedRateX:F

    return-object p0
.end method

.method public final demandedRateY(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Demanded angular rate Y."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 220
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->demandedRateY:F

    return-object p0
.end method

.method public final demandedRateZ(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Demanded angular rate Z."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 233
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->demandedRateZ:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 194
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 181
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;->targetSystem:I

    return-object p0
.end method
