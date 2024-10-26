.class public final Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
.super Ljava/lang/Object;
.source "EstimatorStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/EstimatorStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private haglRatio:F

.field private magRatio:F

.field private posHorizAccuracy:F

.field private posHorizRatio:F

.field private posVertAccuracy:F

.field private posVertRatio:F

.field private tasRatio:F

.field private timeUsec:Ljava/math/BigInteger;

.field private velRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/EstimatorStatus;
    .locals 13

    .line 468
    new-instance v12, Lio/dronefleet/mavlink/common/EstimatorStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->velRatio:F

    iget v4, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posHorizRatio:F

    iget v5, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posVertRatio:F

    iget v6, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->magRatio:F

    iget v7, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->haglRatio:F

    iget v8, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->tasRatio:F

    iget v9, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posHorizAccuracy:F

    iget v10, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posVertAccuracy:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/EstimatorStatus;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFLio/dronefleet/mavlink/common/EstimatorStatus$1;)V

    return-object v12
.end method

.method public final flags(Lio/dronefleet/mavlink/common/EstimatorStatusFlags;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0

    .line 344
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/EstimatorStatusFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap indicating which EKF outputs are valid."
        enumType = Lio/dronefleet/mavlink/common/EstimatorStatusFlags;
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 336
    iput-object p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;"
        }
    .end annotation

    .line 358
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0

    .line 351
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final haglRatio(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Height above terrain innovation test ratio"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 422
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->haglRatio:F

    return-object p0
.end method

.method public final magRatio(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetometer innovation test ratio"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 409
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->magRatio:F

    return-object p0
.end method

.method public final posHorizAccuracy(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position 1-STD\n                accuracy relative to the EKF local origin"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 449
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posHorizAccuracy:F

    return-object p0
.end method

.method public final posHorizRatio(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position innovation test ratio"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 383
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posHorizRatio:F

    return-object p0
.end method

.method public final posVertAccuracy(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical position 1-STD accuracy\n                relative to the EKF local origin"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 463
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posVertAccuracy:F

    return-object p0
.end method

.method public final posVertRatio(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical position innovation test ratio"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 396
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->posVertRatio:F

    return-object p0
.end method

.method public final tasRatio(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True airspeed innovation test ratio"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 435
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->tasRatio:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 322
    iput-object p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final velRatio(F)Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Velocity innovation test ratio"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 370
    iput p1, p0, Lio/dronefleet/mavlink/common/EstimatorStatus$Builder;->velRatio:F

    return-object p0
.end method
