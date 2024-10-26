.class public final Lio/dronefleet/mavlink/common/FollowTarget$Builder;
.super Ljava/lang/Object;
.source "FollowTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/FollowTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private acc:[F

.field private alt:F

.field private attitudeQ:[F

.field private customState:Ljava/math/BigInteger;

.field private estCapabilities:I

.field private lat:I

.field private lon:I

.field private positionCov:[F

.field private rates:[F

.field private timestamp:Ljava/math/BigInteger;

.field private vel:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acc([F)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "linear target acceleration (0,0,0) for\n                unknown"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 409
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->acc:[F

    return-object p0
.end method

.method public final alt(F)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 380
    iput p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->alt:F

    return-object p0
.end method

.method public final attitudeQ([F)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "(1 0 0 0 for unknown)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 423
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->attitudeQ:[F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/FollowTarget;
    .locals 14

    .line 470
    new-instance v13, Lio/dronefleet/mavlink/common/FollowTarget;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->timestamp:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->estCapabilities:I

    iget v3, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->lat:I

    iget v4, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->lon:I

    iget v5, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->alt:F

    iget-object v6, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->vel:[F

    iget-object v7, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->acc:[F

    iget-object v8, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->attitudeQ:[F

    iget-object v9, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->rates:[F

    iget-object v10, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->positionCov:[F

    iget-object v11, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->customState:Ljava/math/BigInteger;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/common/FollowTarget;-><init>(Ljava/math/BigInteger;IIIF[F[F[F[F[FLjava/math/BigInteger;Lio/dronefleet/mavlink/common/FollowTarget$1;)V

    return-object v13
.end method

.method public final customState(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "button states or switches of a tracker\n                device"
        position = 0xb
        unitSize = 0x8
    .end annotation

    .line 465
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->customState:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final estCapabilities(I)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "bit positions for tracker reporting\n                capabilities (POS = 0, VEL = 1, ACCEL = 2, ATT + RATES = 3)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 339
    iput p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->estCapabilities:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 353
    iput p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 367
    iput p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->lon:I

    return-object p0
.end method

.method public final positionCov([F)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "eph epv"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 451
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->positionCov:[F

    return-object p0
.end method

.method public final rates([F)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "(0 0 0 for unknown)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 437
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->rates:[F

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 325
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vel([F)Lio/dronefleet/mavlink/common/FollowTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "target velocity (0,0,0) for unknown"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 394
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FollowTarget$Builder;->vel:[F

    return-object p0
.end method
