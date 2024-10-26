.class public final Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
.super Ljava/lang/Object;
.source "Simstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Simstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private lat:I

.field private lng:I

.field private pitch:F

.field private roll:F

.field private xacc:F

.field private xgyro:F

.field private yacc:F

.field private yaw:F

.field private ygyro:F

.field private zacc:F

.field private zgyro:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Simstate;
    .locals 14

    .line 452
    new-instance v13, Lio/dronefleet/mavlink/ardupilotmega/Simstate;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->roll:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->pitch:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->yaw:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->xacc:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->yacc:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->zacc:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->xgyro:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->ygyro:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->zgyro:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->lat:I

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->lng:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/ardupilotmega/Simstate;-><init>(FFFFFFFFFIILio/dronefleet/mavlink/ardupilotmega/Simstate$1;)V

    return-object v13
.end method

.method public final lat(I)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude."
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 433
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->lat:I

    return-object p0
.end method

.method public final lng(I)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude."
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 447
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->lng:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 328
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 315
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->roll:F

    return-object p0
.end method

.method public final xacc(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 354
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->xacc:F

    return-object p0
.end method

.method public final xgyro(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around X axis."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 393
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->xgyro:F

    return-object p0
.end method

.method public final yacc(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 367
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->yacc:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 341
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->yaw:F

    return-object p0
.end method

.method public final ygyro(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Y axis."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 406
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->ygyro:F

    return-object p0
.end method

.method public final zacc(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 380
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->zacc:F

    return-object p0
.end method

.method public final zgyro(F)Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Z axis."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 419
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Simstate$Builder;->zgyro:F

    return-object p0
.end method
