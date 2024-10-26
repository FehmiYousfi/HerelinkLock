.class public final Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
.super Ljava/lang/Object;
.source "GimbalReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deltaAngleX:F

.field private deltaAngleY:F

.field private deltaAngleZ:F

.field private deltaTime:F

.field private deltaVelocityX:F

.field private deltaVelocityY:F

.field private deltaVelocityZ:F

.field private jointAz:F

.field private jointEl:F

.field private jointRoll:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;
    .locals 15

    .line 484
    new-instance v14, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaTime:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaAngleX:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaAngleY:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaAngleZ:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaVelocityX:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaVelocityY:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaVelocityZ:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->jointRoll:F

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->jointEl:F

    iget v12, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->jointAz:F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport;-><init>(IIFFFFFFFFFFLio/dronefleet/mavlink/ardupilotmega/GimbalReport$1;)V

    return-object v14
.end method

.method public final deltaAngleX(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta angle X."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 375
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaAngleX:F

    return-object p0
.end method

.method public final deltaAngleY(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta angle Y."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 388
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaAngleY:F

    return-object p0
.end method

.method public final deltaAngleZ(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta angle X."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaAngleZ:F

    return-object p0
.end method

.method public final deltaTime(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since last update."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 362
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaTime:F

    return-object p0
.end method

.method public final deltaVelocityX(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta velocity X."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 414
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaVelocityX:F

    return-object p0
.end method

.method public final deltaVelocityY(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta velocity Y."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 427
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaVelocityY:F

    return-object p0
.end method

.method public final deltaVelocityZ(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Delta velocity Z."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 440
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->deltaVelocityZ:F

    return-object p0
.end method

.method public final jointAz(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Joint AZ."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 479
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->jointAz:F

    return-object p0
.end method

.method public final jointEl(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Joint EL."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 466
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->jointEl:F

    return-object p0
.end method

.method public final jointRoll(F)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Joint ROLL."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 453
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->jointRoll:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 349
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalReport$Builder;->targetSystem:I

    return-object p0
.end method
