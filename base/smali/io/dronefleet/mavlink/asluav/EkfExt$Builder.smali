.class public final Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
.super Ljava/lang/Object;
.source "EkfExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/EkfExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeed:F

.field private alpha:F

.field private beta:F

.field private timestamp:Ljava/math/BigInteger;

.field private winddir:F

.field private windspeed:F

.field private windz:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeed(F)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnitude of air velocity"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->airspeed:F

    return-object p0
.end method

.method public final alpha(F)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angle of attack"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 308
    iput p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->alpha:F

    return-object p0
.end method

.method public final beta(F)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sideslip angle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 295
    iput p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->beta:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/asluav/EkfExt;
    .locals 10

    .line 313
    new-instance v9, Lio/dronefleet/mavlink/asluav/EkfExt;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->timestamp:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->windspeed:F

    iget v3, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->winddir:F

    iget v4, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->windz:F

    iget v5, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->airspeed:F

    iget v6, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->beta:F

    iget v7, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->alpha:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/asluav/EkfExt;-><init>(Ljava/math/BigInteger;FFFFFFLio/dronefleet/mavlink/asluav/EkfExt$1;)V

    return-object v9
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system start"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 228
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final winddir(F)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind heading angle from North"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->winddir:F

    return-object p0
.end method

.method public final windspeed(F)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnitude of wind velocity (in lateral\n                inertial plane)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->windspeed:F

    return-object p0
.end method

.method public final windz(F)Lio/dronefleet/mavlink/asluav/EkfExt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z (Down) component of inertial wind\n                velocity"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 269
    iput p1, p0, Lio/dronefleet/mavlink/asluav/EkfExt$Builder;->windz:F

    return-object p0
.end method
