.class public final Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
.super Ljava/lang/Object;
.source "MountControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/MountControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private inputA:I

.field private inputB:I

.field private inputC:I

.field private savePosition:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/MountControl;
    .locals 9

    .line 287
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/MountControl;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->inputA:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->inputB:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->inputC:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->savePosition:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/MountControl;-><init>(IIIIIILio/dronefleet/mavlink/ardupilotmega/MountControl$1;)V

    return-object v8
.end method

.method public final inputA(I)Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch (centi-degrees) or lat (degE7), depending on\n                mount mode."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 238
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->inputA:I

    return-object p0
.end method

.method public final inputB(I)Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll (centi-degrees) or lon (degE7) depending on\n                mount mode."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 253
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->inputB:I

    return-object p0
.end method

.method public final inputC(I)Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw (centi-degrees) or alt (cm) depending on mount\n                mode."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->inputC:I

    return-object p0
.end method

.method public final savePosition(I)Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "If \"1\" it will save current trimmed position\n                on EEPROM (just valid for NEUTRAL and LANDING)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->savePosition:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 223
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 210
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountControl$Builder;->targetSystem:I

    return-object p0
.end method
