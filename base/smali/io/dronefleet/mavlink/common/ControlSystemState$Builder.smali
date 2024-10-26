.class public final Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
.super Ljava/lang/Object;
.source "ControlSystemState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ControlSystemState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeed:F

.field private pitchRate:F

.field private posVariance:[F

.field private q:[F

.field private rollRate:F

.field private timeUsec:Ljava/math/BigInteger;

.field private velVariance:[F

.field private xAcc:F

.field private xPos:F

.field private xVel:F

.field private yAcc:F

.field private yPos:F

.field private yVel:F

.field private yawRate:F

.field private zAcc:F

.field private zPos:F

.field private zVel:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeed(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed, set to -1 if unknown"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 588
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->airspeed:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/ControlSystemState;
    .locals 22

    move-object/from16 v0, p0

    .line 674
    new-instance v20, Lio/dronefleet/mavlink/common/ControlSystemState;

    move-object/from16 v1, v20

    iget-object v2, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->xAcc:F

    iget v4, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yAcc:F

    iget v5, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->zAcc:F

    iget v6, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->xVel:F

    iget v7, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yVel:F

    iget v8, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->zVel:F

    iget v9, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->xPos:F

    iget v10, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yPos:F

    iget v11, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->zPos:F

    iget v12, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->airspeed:F

    iget-object v13, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->velVariance:[F

    iget-object v14, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->posVariance:[F

    iget-object v15, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->q:[F

    move-object/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->rollRate:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->pitchRate:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yawRate:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/ControlSystemState;-><init>(Ljava/math/BigInteger;FFFFFFFFFF[F[F[FFFFLio/dronefleet/mavlink/common/ControlSystemState$1;)V

    return-object v20
.end method

.method public final pitchRate(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular rate in pitch axis"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 656
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->pitchRate:F

    return-object p0
.end method

.method public final posVariance([F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Variance in local position"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 616
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->posVariance:[F

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "The attitude, represented as Quaternion"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 630
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->q:[F

    return-object p0
.end method

.method public final rollRate(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular rate in roll axis"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 643
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->rollRate:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 458
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final velVariance([F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Variance of body velocity estimate"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 602
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->velVariance:[F

    return-object p0
.end method

.method public final xAcc(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration in body frame"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 471
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->xAcc:F

    return-object p0
.end method

.method public final xPos(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X position in local frame"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 549
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->xPos:F

    return-object p0
.end method

.method public final xVel(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X velocity in body frame"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 510
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->xVel:F

    return-object p0
.end method

.method public final yAcc(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration in body frame"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 484
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yAcc:F

    return-object p0
.end method

.method public final yPos(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y position in local frame"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 562
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yPos:F

    return-object p0
.end method

.method public final yVel(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y velocity in body frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 523
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yVel:F

    return-object p0
.end method

.method public final yawRate(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular rate in yaw axis"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 669
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->yawRate:F

    return-object p0
.end method

.method public final zAcc(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration in body frame"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 497
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->zAcc:F

    return-object p0
.end method

.method public final zPos(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z position in local frame"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 575
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->zPos:F

    return-object p0
.end method

.method public final zVel(F)Lio/dronefleet/mavlink/common/ControlSystemState$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z velocity in body frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 536
    iput p1, p0, Lio/dronefleet/mavlink/common/ControlSystemState$Builder;->zVel:F

    return-object p0
.end method
