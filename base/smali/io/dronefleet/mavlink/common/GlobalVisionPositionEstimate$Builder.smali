.class public final Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
.super Ljava/lang/Object;
.source "GlobalVisionPositionEstimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private covariance:[F

.field private pitch:F

.field private resetCounter:I

.field private roll:F

.field private usec:Ljava/math/BigInteger;

.field private x:F

.field private y:F

.field private yaw:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate;
    .locals 12

    .line 407
    new-instance v11, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->usec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->x:F

    iget v3, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->y:F

    iget v4, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->z:F

    iget v5, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->roll:F

    iget v6, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->pitch:F

    iget v7, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->yaw:F

    iget-object v8, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->covariance:[F

    iget v9, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->resetCounter:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate;-><init>(Ljava/math/BigInteger;FFFFFF[FILio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$1;)V

    return-object v11
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x15
        description = "Row-major representation of pose 6x6\n                cross-covariance matrix upper right triangle (states: x_global, y_global, z_global,\n                roll, pitch, yaw; first six entries are the first ROW, next five entries are the\n                second ROW, etc.). If unknown, assign NaN value to first element in the array."
        extension = true
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 383
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->covariance:[F

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 350
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->pitch:F

    return-object p0
.end method

.method public final resetCounter(I)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimate reset counter. This should be\n                incremented when the estimate resets in any of the dimensions (position, velocity,\n                attitude, angular speed). This is designed to be used when e.g an external SLAM\n                system detects a loop-closure and the estimate jumps."
        extension = true
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 402
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->resetCounter:I

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 337
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->roll:F

    return-object p0
.end method

.method public final usec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX time or since system\n                boot)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 285
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->usec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global X position"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 298
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Y position"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 311
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->y:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 363
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->yaw:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Z position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 324
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalVisionPositionEstimate$Builder;->z:F

    return-object p0
.end method
