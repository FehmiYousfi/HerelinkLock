.class public final Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
.super Ljava/lang/Object;
.source "DigicamConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aperture:I

.field private commandId:I

.field private engineCutOff:I

.field private exposureType:I

.field private extraParam:I

.field private extraValue:F

.field private iso:I

.field private mode:I

.field private shutterSpeed:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aperture(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "F stop number x 10 //e.g. 28 means 2.8 (0 means\n                ignore)."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 378
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->aperture:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure;
    .locals 14

    .line 467
    new-instance v13, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->mode:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->shutterSpeed:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->aperture:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->iso:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->exposureType:I

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->commandId:I

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->engineCutOff:I

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->extraParam:I

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->extraValue:F

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure;-><init>(IIIIIIIIIIFLio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$1;)V

    return-object v13
.end method

.method public final commandId(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command Identity (incremental loop: 0 to 255).\n                //A command sent multiple times will be executed or pooled just once."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 421
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->commandId:I

    return-object p0
.end method

.method public final engineCutOff(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Main engine cut-off time before\n                camera trigger (0 means no cut-off)."
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 435
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->engineCutOff:I

    return-object p0
.end method

.method public final exposureType(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Exposure type enumeration from 1 to N (0\n                means ignore)."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 406
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->exposureType:I

    return-object p0
.end method

.method public final extraParam(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Extra parameters enumeration (0 means\n                ignore)."
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 449
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->extraParam:I

    return-object p0
.end method

.method public final extraValue(F)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Correspondent value to given extra_param."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 462
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->extraValue:F

    return-object p0
.end method

.method public final iso(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ISO enumeration from 1 to N //e.g. 80, 100, 200, Etc (0\n                means ignore)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 392
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->iso:I

    return-object p0
.end method

.method public final mode(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mode enumeration from 1 to N //P, TV, AV, M, etc. (0\n                means ignore)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 350
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->mode:I

    return-object p0
.end method

.method public final shutterSpeed(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Divisor number //e.g. 1000 means 1/1000 (0\n                means ignore)."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 364
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->shutterSpeed:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 323
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DigicamConfigure$Builder;->targetSystem:I

    return-object p0
.end method
