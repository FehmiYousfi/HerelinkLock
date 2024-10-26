.class public final Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
.super Ljava/lang/Object;
.source "ManualSetpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ManualSetpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private manualOverrideSwitch:I

.field private modeSwitch:I

.field private pitch:F

.field private roll:F

.field private thrust:F

.field private timeBootMs:J

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ManualSetpoint;
    .locals 11

    .line 312
    new-instance v10, Lio/dronefleet/mavlink/common/ManualSetpoint;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->roll:F

    iget v4, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->pitch:F

    iget v5, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->yaw:F

    iget v6, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->thrust:F

    iget v7, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->modeSwitch:I

    iget v8, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->manualOverrideSwitch:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/ManualSetpoint;-><init>(JFFFFIILio/dronefleet/mavlink/common/ManualSetpoint$1;)V

    return-object v10
.end method

.method public final manualOverrideSwitch(I)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Override mode switch position, 0..\n                255"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 307
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->manualOverrideSwitch:I

    return-object p0
.end method

.method public final modeSwitch(I)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flight mode switch position, 0.. 255"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 293
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->modeSwitch:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Desired pitch rate"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Desired roll rate"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->roll:F

    return-object p0
.end method

.method public final thrust(F)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collective thrust, normalized to 0 .. 1"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 280
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->thrust:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 228
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Desired yaw rate"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/common/ManualSetpoint$Builder;->yaw:F

    return-object p0
.end method
