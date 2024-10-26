.class public final Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
.super Ljava/lang/Object;
.source "GlobalPositionIntCov.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GlobalPositionIntCov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

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

.field private lat:I

.field private lon:I

.field private relativeAlt:I

.field private timeUsec:Ljava/math/BigInteger;

.field private vx:F

.field private vy:F

.field private vz:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude in meters above MSL"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->alt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GlobalPositionIntCov;
    .locals 13

    .line 478
    new-instance v12, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->lat:I

    iget v4, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->lon:I

    iget v5, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->alt:I

    iget v6, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->relativeAlt:I

    iget v7, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->vx:F

    iget v8, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->vy:F

    iget v9, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->vz:F

    iget-object v10, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->covariance:[F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFF[FLio/dronefleet/mavlink/common/GlobalPositionIntCov$1;)V

    return-object v12
.end method

.method public final covariance([F)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x24
        description = "Row-major representation of a 6x6 position and\n                velocity 6x6 cross-covariance matrix (states: lat, lon, alt, vx, vy, vz; first six\n                entries are the first ROW, next six entries are the second row, etc.). If unknown,\n                assign NaN value to first element in the array."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 473
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->covariance:[F

    return-object p0
.end method

.method public final estimatorType(Lio/dronefleet/mavlink/common/MavEstimatorType;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0

    .line 346
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavEstimatorType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Class id of the\n                estimator this estimate originated from."
        enumType = Lio/dronefleet/mavlink/common/MavEstimatorType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 338
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->estimatorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final estimatorType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;"
        }
    .end annotation

    .line 360
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs estimatorType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0

    .line 353
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->estimatorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 373
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->lon:I

    return-object p0
.end method

.method public final relativeAlt(I)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above ground"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 415
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->relativeAlt:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 323
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X Speed (Latitude)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 428
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y Speed (Longitude)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 441
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z Speed (Altitude)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 454
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionIntCov$Builder;->vz:F

    return-object p0
.end method
