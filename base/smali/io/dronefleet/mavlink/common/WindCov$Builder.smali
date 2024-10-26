.class public final Lio/dronefleet/mavlink/common/WindCov$Builder;
.super Ljava/lang/Object;
.source "WindCov.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/WindCov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private horizAccuracy:F

.field private timeUsec:Ljava/math/BigInteger;

.field private varHoriz:F

.field private varVert:F

.field private vertAccuracy:F

.field private windAlt:F

.field private windX:F

.field private windY:F

.field private windZ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/WindCov;
    .locals 12

    .line 391
    new-instance v11, Lio/dronefleet/mavlink/common/WindCov;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windX:F

    iget v3, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windY:F

    iget v4, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windZ:F

    iget v5, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->varHoriz:F

    iget v6, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->varVert:F

    iget v7, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windAlt:F

    iget v8, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->horizAccuracy:F

    iget v9, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->vertAccuracy:F

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/WindCov;-><init>(Ljava/math/BigInteger;FFFFFFFFLio/dronefleet/mavlink/common/WindCov$1;)V

    return-object v11
.end method

.method public final horizAccuracy(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal speed 1-STD accuracy"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 373
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->horizAccuracy:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 279
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final varHoriz(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variability of the wind in XY. RMS of a\n                1 Hz lowpassed wind estimate."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 332
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->varHoriz:F

    return-object p0
.end method

.method public final varVert(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variability of the wind in Z. RMS of a 1\n                Hz lowpassed wind estimate."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 346
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->varVert:F

    return-object p0
.end method

.method public final vertAccuracy(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical speed 1-STD accuracy"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 386
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->vertAccuracy:F

    return-object p0
.end method

.method public final windAlt(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL) that this measurement was\n                taken at"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 360
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windAlt:F

    return-object p0
.end method

.method public final windX(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind in X (NED) direction"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 292
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windX:F

    return-object p0
.end method

.method public final windY(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind in Y (NED) direction"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 305
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windY:F

    return-object p0
.end method

.method public final windZ(F)Lio/dronefleet/mavlink/common/WindCov$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind in Z (NED) direction"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 318
    iput p1, p0, Lio/dronefleet/mavlink/common/WindCov$Builder;->windZ:F

    return-object p0
.end method
