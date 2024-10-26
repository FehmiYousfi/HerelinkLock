.class public final Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
.super Ljava/lang/Object;
.source "AttPosMocap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AttPosMocap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private covariance:[F

.field private q:[F

.field private timeUsec:Ljava/math/BigInteger;

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
.method public final build()Lio/dronefleet/mavlink/common/AttPosMocap;
    .locals 9

    .line 298
    new-instance v8, Lio/dronefleet/mavlink/common/AttPosMocap;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->q:[F

    iget v3, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->x:F

    iget v4, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->y:F

    iget v5, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->z:F

    iget-object v6, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->covariance:[F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/AttPosMocap;-><init>(Ljava/math/BigInteger;[FFFF[FLio/dronefleet/mavlink/common/AttPosMocap$1;)V

    return-object v8
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x15
        description = "Row-major representation of a pose 6x6\n                cross-covariance matrix upper right triangle (states: x, y, z, roll, pitch, yaw;\n                first six entries are the first ROW, next five entries are the second ROW, etc.). If\n                unknown, assign NaN value to first element in the array."
        extension = true
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 293
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->covariance:[F

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Attitude quaternion (w, x, y, z order, zero-rotation is\n                1, 0, 0, 0)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 234
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->q:[F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 219
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X position (NED)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 247
    iput p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y position (NED)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 260
    iput p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/AttPosMocap$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z position (NED)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 273
    iput p1, p0, Lio/dronefleet/mavlink/common/AttPosMocap$Builder;->z:F

    return-object p0
.end method
