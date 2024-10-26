.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;
.super Ljava/lang/Object;
.source "SerialUdbExtraF18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private angleOfAttackInverted:F

.field private angleOfAttackNormal:F

.field private elevatorTrimInverted:F

.field private elevatorTrimNormal:F

.field private referenceSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final angleOfAttackInverted(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Angle of Attack Inverted"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 194
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->angleOfAttackInverted:F

    return-object p0
.end method

.method public final angleOfAttackNormal(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Angle of Attack Normal"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 181
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->angleOfAttackNormal:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18;
    .locals 8

    .line 238
    new-instance v7, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->angleOfAttackNormal:F

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->angleOfAttackInverted:F

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->elevatorTrimNormal:F

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->elevatorTrimInverted:F

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->referenceSpeed:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18;-><init>(FFFFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$1;)V

    return-object v7
.end method

.method public final elevatorTrimInverted(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Elevator Trim Inverted"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 220
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->elevatorTrimInverted:F

    return-object p0
.end method

.method public final elevatorTrimNormal(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE Elevator Trim Normal"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 207
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->elevatorTrimNormal:F

    return-object p0
.end method

.method public final referenceSpeed(F)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SUE reference_speed"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 233
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF18$Builder;->referenceSpeed:F

    return-object p0
.end method
