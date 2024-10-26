.class public final Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
.super Ljava/lang/Object;
.source "GlobalPositionInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GlobalPositionInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private hdg:I

.field private lat:I

.field private lon:I

.field private relativeAlt:I

.field private timeBootMs:J

.field private vx:I

.field private vy:I

.field private vz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Note that virtually all GPS\n                modules provide both WGS84 and MSL."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 328
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->alt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GlobalPositionInt;
    .locals 13

    .line 403
    new-instance v12, Lio/dronefleet/mavlink/common/GlobalPositionInt;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->lat:I

    iget v4, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->lon:I

    iget v5, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->alt:I

    iget v6, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->relativeAlt:I

    iget v7, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->vx:I

    iget v8, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->vy:I

    iget v9, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->vz:I

    iget v10, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->hdg:I

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/GlobalPositionInt;-><init>(JIIIIIIIILio/dronefleet/mavlink/common/GlobalPositionInt$1;)V

    return-object v12
.end method

.method public final hdg(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vehicle heading (yaw angle), 0.0..359.99\n                degrees. If unknown, set to: UINT16_MAX"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 398
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->hdg:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude, expressed"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 299
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude, expressed"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 313
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->lon:I

    return-object p0
.end method

.method public final relativeAlt(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above ground"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 342
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->relativeAlt:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 285
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final vx(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X Speed (Latitude, positive north)"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 356
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->vx:I

    return-object p0
.end method

.method public final vy(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y Speed (Longitude, positive east)"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 370
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->vy:I

    return-object p0
.end method

.method public final vz(I)Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z Speed (Altitude, positive down)"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 384
    iput p1, p0, Lio/dronefleet/mavlink/common/GlobalPositionInt$Builder;->vz:I

    return-object p0
.end method
