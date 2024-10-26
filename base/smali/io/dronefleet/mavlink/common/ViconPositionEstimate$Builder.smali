.class public final Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
.super Ljava/lang/Object;
.source "ViconPositionEstimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ViconPositionEstimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private covariance:[F

.field private pitch:F

.field private roll:F

.field private usec:Ljava/math/BigInteger;

.field private x:F

.field private y:F

.field private yaw:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ViconPositionEstimate;
    .locals 11

    .line 360
    new-instance v10, Lio/dronefleet/mavlink/common/ViconPositionEstimate;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->usec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->x:F

    iget v3, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->y:F

    iget v4, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->z:F

    iget v5, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->roll:F

    iget v6, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->pitch:F

    iget v7, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->yaw:F

    iget-object v8, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->covariance:[F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/ViconPositionEstimate;-><init>(Ljava/math/BigInteger;FFFFFF[FLio/dronefleet/mavlink/common/ViconPositionEstimate$1;)V

    return-object v10
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x15
        description = "Row-major representation of 6x6 pose\n                cross-covariance matrix upper right triangle (states: x, y, z, roll, pitch, yaw;\n                first six entries are the first ROW, next five entries are the second ROW, etc.). If\n                unknown, assign NaN value to first element in the array."
        extension = true
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 355
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->covariance:[F

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 322
    iput p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 309
    iput p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->roll:F

    return-object p0
.end method

.method public final usec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX time or time since system\n                boot)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 257
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->usec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global X position"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 270
    iput p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Y position"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 283
    iput p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->y:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 335
    iput p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->yaw:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Global Z position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 296
    iput p1, p0, Lio/dronefleet/mavlink/common/ViconPositionEstimate$Builder;->z:F

    return-object p0
.end method
