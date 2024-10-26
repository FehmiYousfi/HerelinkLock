.class public final Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
.super Ljava/lang/Object;
.source "VisionSpeedEstimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/VisionSpeedEstimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private covariance:[F

.field private resetCounter:I

.field private usec:Ljava/math/BigInteger;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/VisionSpeedEstimate;
    .locals 9

    .line 298
    new-instance v8, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->usec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->x:F

    iget v3, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->y:F

    iget v4, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->z:F

    iget-object v5, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->covariance:[F

    iget v6, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->resetCounter:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/VisionSpeedEstimate;-><init>(Ljava/math/BigInteger;FFF[FILio/dronefleet/mavlink/common/VisionSpeedEstimate$1;)V

    return-object v8
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Row-major representation of 3x3 linear velocity\n                covariance matrix (states: vx, vy, vz; 1st three entries - 1st row, etc.). If\n                unknown, assign NaN value to first element in the array."
        extension = true
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 274
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->covariance:[F

    return-object p0
.end method

.method public final resetCounter(I)Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimate reset counter. This should be\n                incremented when the estimate resets in any of the dimensions (position, velocity,\n                attitude, angular speed). This is designed to be used when e.g an external SLAM\n                system detects a loop-closure and the estimate jumps."
        extension = true
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 293
    iput p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->resetCounter:I

    return-object p0
.end method

.method public final usec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX time or time since system\n                boot)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 217
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->usec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global X speed"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 230
    iput p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Y speed"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 243
    iput p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Z speed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 256
    iput p1, p0, Lio/dronefleet/mavlink/common/VisionSpeedEstimate$Builder;->z:F

    return-object p0
.end method
