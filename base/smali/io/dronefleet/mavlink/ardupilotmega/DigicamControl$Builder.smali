.class public final Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
.super Ljava/lang/Object;
.source "DigicamControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/DigicamControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private commandId:I

.field private extraParam:I

.field private extraValue:F

.field private focusLock:I

.field private session:I

.field private shot:I

.field private targetComponent:I

.field private targetSystem:I

.field private zoomPos:I

.field private zoomStep:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/DigicamControl;
    .locals 13

    .line 430
    new-instance v12, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->session:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->zoomPos:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->zoomStep:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->focusLock:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->shot:I

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->commandId:I

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->extraParam:I

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->extraValue:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl;-><init>(IIIIIIIIIFLio/dronefleet/mavlink/ardupilotmega/DigicamControl$1;)V

    return-object v12
.end method

.method public final commandId(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command Identity (incremental loop: 0 to 255)//A\n                command sent multiple times will be executed or pooled just once."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 398
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->commandId:I

    return-object p0
.end method

.method public final extraParam(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Extra parameters enumeration (0 means\n                ignore)."
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 412
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->extraParam:I

    return-object p0
.end method

.method public final extraValue(F)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Correspondent value to given extra_param."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 425
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->extraValue:F

    return-object p0
.end method

.method public final focusLock(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: unlock focus or keep unlocked, 1: lock focus\n                or keep locked, 3: re-lock focus."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 370
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->focusLock:I

    return-object p0
.end method

.method public final session(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: stop, 1: start or keep it up //Session control\n                e.g. show/hide lens."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 327
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->session:I

    return-object p0
.end method

.method public final shot(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: ignore, 1: shot or start filming."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 383
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->shot:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 313
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 300
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->targetSystem:I

    return-object p0
.end method

.method public final zoomPos(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1 to N //Zoom\'s absolute position (0 means\n                ignore)."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 341
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->zoomPos:I

    return-object p0
.end method

.method public final zoomStep(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "-100 to 100 //Zooming step value to offset zoom\n                from the current position."
        position = 0x5
        signed = true
        unitSize = 0x1
    .end annotation

    .line 356
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamControl$Builder;->zoomStep:I

    return-object p0
.end method
