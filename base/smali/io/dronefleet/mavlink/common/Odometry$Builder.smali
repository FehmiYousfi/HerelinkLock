.class public final Lio/dronefleet/mavlink/common/Odometry$Builder;
.super Ljava/lang/Object;
.source "Odometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Odometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private childFrameId:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private estimatorType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;"
        }
    .end annotation
.end field

.field private frameId:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private pitchspeed:F

.field private poseCovariance:[F

.field private q:[F

.field private resetCounter:I

.field private rollspeed:F

.field private timeUsec:Ljava/math/BigInteger;

.field private velocityCovariance:[F

.field private vx:F

.field private vy:F

.field private vz:F

.field private x:F

.field private y:F

.field private yawspeed:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Odometry;
    .locals 22

    move-object/from16 v0, p0

    .line 795
    new-instance v20, Lio/dronefleet/mavlink/common/Odometry;

    move-object/from16 v1, v20

    iget-object v2, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->frameId:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->childFrameId:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->x:F

    iget v6, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->y:F

    iget v7, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->z:F

    iget-object v8, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->q:[F

    iget v9, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->vx:F

    iget v10, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->vy:F

    iget v11, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->vz:F

    iget v12, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->rollspeed:F

    iget v13, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->pitchspeed:F

    iget v14, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->yawspeed:F

    iget-object v15, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->poseCovariance:[F

    move-object/from16 v21, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->velocityCovariance:[F

    move-object/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->resetCounter:I

    move/from16 v17, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/Odometry$Builder;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/Odometry;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFF[FFFFFFF[F[FILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/Odometry$1;)V

    return-object v20
.end method

.method public final childFrameId(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0

    .line 549
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->childFrameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final childFrameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Odometry$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame of\n                reference for the velocity in free space (twist) data."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 541
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->childFrameId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final childFrameId(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Odometry$Builder;"
        }
    .end annotation

    .line 563
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->childFrameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs childFrameId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0

    .line 556
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->childFrameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final estimatorType(Lio/dronefleet/mavlink/common/MavEstimatorType;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0

    .line 777
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Odometry$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of estimator\n                that is providing the odometry."
        enumType = Lio/dronefleet/mavlink/common/MavEstimatorType;
        extension = true
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 769
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final estimatorType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Odometry$Builder;"
        }
    .end annotation

    .line 791
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs estimatorType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0

    .line 784
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frameId(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0

    .line 513
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->frameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Odometry$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame of reference for\n                the pose data."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 505
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->frameId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frameId(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Odometry$Builder;"
        }
    .end annotation

    .line 527
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->frameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frameId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0

    .line 520
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Odometry$Builder;->frameId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Odometry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final pitchspeed(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angular speed"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 681
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->pitchspeed:F

    return-object p0
.end method

.method public final poseCovariance([F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x15
        description = "Row-major representation of a 6x6 pose\n                cross-covariance matrix upper right triangle (states: x, y, z, roll, pitch, yaw;\n                first six entries are the first ROW, next five entries are the second ROW, etc.). If\n                unknown, assign NaN value to first element in the array."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 713
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->poseCovariance:[F

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion components, w, x, y, z (1 0 0 0 is the\n                null-rotation)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 616
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->q:[F

    return-object p0
.end method

.method public final resetCounter(I)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimate reset counter. This should be\n                incremented when the estimate resets in any of the dimensions (position, velocity,\n                attitude, angular speed). This is designed to be used when e.g an external SLAM\n                system detects a loop-closure and the estimate jumps."
        extension = true
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 753
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->resetCounter:I

    return-object p0
.end method

.method public final rollspeed(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angular speed"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 668
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->rollspeed:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 490
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final velocityCovariance([F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x15
        description = "Row-major representation of a 6x6\n                velocity cross-covariance matrix upper right triangle (states: vx, vy, vz,\n                rollspeed, pitchspeed, yawspeed; first six entries are the first ROW, next five\n                entries are the second ROW, etc.). If unknown, assign NaN value to first element in\n                the array."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 734
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->velocityCovariance:[F

    return-object p0
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X linear speed"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 629
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y linear speed"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 642
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z linear speed"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 655
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->vz:F

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 575
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 588
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->y:F

    return-object p0
.end method

.method public final yawspeed(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angular speed"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 694
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->yawspeed:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/Odometry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 601
    iput p1, p0, Lio/dronefleet/mavlink/common/Odometry$Builder;->z:F

    return-object p0
.end method
