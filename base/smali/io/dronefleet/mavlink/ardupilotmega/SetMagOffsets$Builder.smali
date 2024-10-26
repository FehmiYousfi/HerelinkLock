.class public final Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;
.super Ljava/lang/Object;
.source "SetMagOffsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private magOfsX:I

.field private magOfsY:I

.field private magOfsZ:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets;
    .locals 8

    .line 247
    new-instance v7, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->magOfsX:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->magOfsY:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->magOfsZ:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets;-><init>(IIIIILio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$1;)V

    return-object v7
.end method

.method public final magOfsX(I)Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer X offset."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 214
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->magOfsX:I

    return-object p0
.end method

.method public final magOfsY(I)Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer Y offset."
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->magOfsY:I

    return-object p0
.end method

.method public final magOfsZ(I)Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer Z offset."
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->magOfsZ:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 200
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 187
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/SetMagOffsets$Builder;->targetSystem:I

    return-object p0
.end method
