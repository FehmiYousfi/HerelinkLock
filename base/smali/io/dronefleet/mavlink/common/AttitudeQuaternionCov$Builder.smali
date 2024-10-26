.class public final Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
.super Ljava/lang/Object;
.source "AttitudeQuaternionCov.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private covariance:[F

.field private pitchspeed:F

.field private q:[F

.field private rollspeed:F

.field private timeUsec:Ljava/math/BigInteger;

.field private yawspeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;
    .locals 9

    .line 299
    new-instance v8, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->q:[F

    iget v3, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->rollspeed:F

    iget v4, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->pitchspeed:F

    iget v5, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->yawspeed:F

    iget-object v6, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->covariance:[F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov;-><init>(Ljava/math/BigInteger;[FFFF[FLio/dronefleet/mavlink/common/AttitudeQuaternionCov$1;)V

    return-object v8
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Row-major representation of a 3x3 attitude\n                covariance matrix (states: roll, pitch, yaw; first three entries are the first ROW,\n                next three entries are the second row, etc.). If unknown, assign NaN value to first\n                element in the array."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 294
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->covariance:[F

    return-object p0
.end method

.method public final pitchspeed(F)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angular speed"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 262
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->pitchspeed:F

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components, w, x, y, z (1 0 0 0 is the\n                null-rotation)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 236
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->q:[F

    return-object p0
.end method

.method public final rollspeed(F)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angular speed"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 249
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->rollspeed:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 221
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final yawspeed(F)Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angular speed"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 275
    iput p1, p0, Lio/dronefleet/mavlink/common/AttitudeQuaternionCov$Builder;->yawspeed:F

    return-object p0
.end method
