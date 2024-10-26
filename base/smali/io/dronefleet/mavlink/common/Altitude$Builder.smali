.class public final Lio/dronefleet/mavlink/common/Altitude$Builder;
.super Ljava/lang/Object;
.source "Altitude.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Altitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitudeAmsl:F

.field private altitudeLocal:F

.field private altitudeMonotonic:F

.field private altitudeRelative:F

.field private altitudeTerrain:F

.field private bottomClearance:F

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitudeAmsl(F)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This altitude measure is strictly\n                above mean sea level and might be non-monotonic (it might reset on events like GPS\n                lock or when a new QNH value is set). It should be the altitude to which global\n                altitude waypoints are compared to. Note that it is *not* the GPS altitude, however,\n                most GPS modules already output MSL by default and not the WGS84 altitude."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 304
    iput p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeAmsl:F

    return-object p0
.end method

.method public final altitudeLocal(F)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This is the local altitude in the\n                local coordinate frame. It is not the altitude above home, but in reference to the\n                coordinate origin (0, 0, 0). It is up-positive."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 320
    iput p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeLocal:F

    return-object p0
.end method

.method public final altitudeMonotonic(F)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This altitude measure is\n                initialized on system boot and monotonic (it is never reset, but represents the\n                local altitude change). The only guarantee on this field is that it will never be\n                reset and is consistent within a flight. The recommended value for this field is the\n                uncorrected barometric altitude at boot time. This altitude will also drift and vary\n                between flights."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 284
    iput p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeMonotonic:F

    return-object p0
.end method

.method public final altitudeRelative(F)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This is the altitude above the\n                home position. It resets on each change of the current home position."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 335
    iput p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeRelative:F

    return-object p0
.end method

.method public final altitudeTerrain(F)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This is the altitude above\n                terrain. It might be fed by a terrain database or an altimeter. Values smaller than\n                -1000 should be interpreted as unknown."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 351
    iput p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeTerrain:F

    return-object p0
.end method

.method public final bottomClearance(F)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This is not the altitude, but the\n                clear space below the system according to the fused clearance estimate. It generally\n                should max out at the maximum range of e.g. the laser altimeter. It is generally a\n                moving target. A negative value indicates no measurement available."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 369
    iput p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->bottomClearance:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/Altitude;
    .locals 10

    .line 374
    new-instance v9, Lio/dronefleet/mavlink/common/Altitude;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeMonotonic:F

    iget v3, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeAmsl:F

    iget v4, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeLocal:F

    iget v5, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeRelative:F

    iget v6, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->altitudeTerrain:F

    iget v7, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->bottomClearance:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/Altitude;-><init>(Ljava/math/BigInteger;FFFFFFLio/dronefleet/mavlink/common/Altitude$1;)V

    return-object v9
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/Altitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 262
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Altitude$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
