.class public final Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
.super Ljava/lang/Object;
.source "LocalPositionNedCov.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LocalPositionNedCov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ax:F

.field private ay:F

.field private az:F

.field private covariance:[F

.field private estimatorType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;"
        }
    .end annotation
.end field

.field private timeUsec:Ljava/math/BigInteger;

.field private vx:F

.field private vy:F

.field private vz:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ax(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Acceleration"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->ax:F

    return-object p0
.end method

.method public final ay(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Acceleration"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 498
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->ay:F

    return-object p0
.end method

.method public final az(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Acceleration"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 511
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->az:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/LocalPositionNedCov;
    .locals 15

    .line 536
    new-instance v14, Lio/dronefleet/mavlink/common/LocalPositionNedCov;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->x:F

    iget v4, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->y:F

    iget v5, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->z:F

    iget v6, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->vx:F

    iget v7, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->vy:F

    iget v8, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->vz:F

    iget v9, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->ax:F

    iget v10, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->ay:F

    iget v11, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->az:F

    iget-object v12, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->covariance:[F

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/LocalPositionNedCov;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFF[FLio/dronefleet/mavlink/common/LocalPositionNedCov$1;)V

    return-object v14
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x2d
        description = "Row-major representation of position, velocity\n                and acceleration 9x9 cross-covariance matrix upper right triangle (states: x, y, z,\n                vx, vy, vz, ax, ay, az; first nine entries are the first ROW, next eight entries are\n                the second row, etc.). If unknown, assign NaN value to first element in the array."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 531
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->covariance:[F

    return-object p0
.end method

.method public final estimatorType(Lio/dronefleet/mavlink/common/MavEstimatorType;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0

    .line 381
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Class id of the\n                estimator this estimate originated from."
        enumType = Lio/dronefleet/mavlink/common/MavEstimatorType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 373
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final estimatorType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;"
        }
    .end annotation

    .line 395
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs estimatorType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0

    .line 388
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 358
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 446
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 459
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Speed"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 472
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->vz:F

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 407
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 420
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 433
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedCov$Builder;->z:F

    return-object p0
.end method
