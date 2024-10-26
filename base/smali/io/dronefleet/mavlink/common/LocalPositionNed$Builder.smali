.class public final Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
.super Ljava/lang/Object;
.source "LocalPositionNed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LocalPositionNed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private timeBootMs:J

.field private vx:F

.field private vy:F

.field private vz:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LocalPositionNed;
    .locals 11

    .line 313
    new-instance v10, Lio/dronefleet/mavlink/common/LocalPositionNed;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->x:F

    iget v4, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->y:F

    iget v5, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->z:F

    iget v6, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->vx:F

    iget v7, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->vy:F

    iget v8, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->vz:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/LocalPositionNed;-><init>(JFFFFFFLio/dronefleet/mavlink/common/LocalPositionNed$1;)V

    return-object v10
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 230
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final vx(F)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Speed"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->vx:F

    return-object p0
.end method

.method public final vy(F)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 295
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->vy:F

    return-object p0
.end method

.method public final vz(F)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 308
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->vz:F

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 243
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 256
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 269
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNed$Builder;->z:F

    return-object p0
.end method
