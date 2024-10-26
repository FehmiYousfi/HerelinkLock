.class public final Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
.super Ljava/lang/Object;
.source "LocalPositionNedSystemGlobalOffset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pitch:F

.field private roll:F

.field private timeBootMs:J

.field private x:F

.field private y:F

.field private yaw:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;
    .locals 11

    .line 314
    new-instance v10, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->x:F

    iget v4, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->y:F

    iget v5, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->z:F

    iget v6, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->roll:F

    iget v7, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->pitch:F

    iget v8, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->yaw:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;-><init>(JFFFFFFLio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$1;)V

    return-object v10
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 296
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 283
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->roll:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 231
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 244
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 257
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->y:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 309
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->yaw:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 270
    iput p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;->z:F

    return-object p0
.end method
