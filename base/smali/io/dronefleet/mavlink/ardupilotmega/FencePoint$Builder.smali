.class public final Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
.super Ljava/lang/Object;
.source "FencePoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/FencePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private idx:I

.field private lat:F

.field private lng:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/FencePoint;
    .locals 9

    .line 276
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/FencePoint;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->idx:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->count:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->lat:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->lng:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/FencePoint;-><init>(IIIIFFLio/dronefleet/mavlink/ardupilotmega/FencePoint$1;)V

    return-object v8
.end method

.method public final count(I)Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of points (for sanity checking)."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->count:I

    return-object p0
.end method

.method public final idx(I)Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Point index (first point is 1, 0 is for return\n                point)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 232
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->idx:I

    return-object p0
.end method

.method public final lat(F)Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of point."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 258
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->lat:F

    return-object p0
.end method

.method public final lng(F)Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of point."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 271
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->lng:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 218
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 205
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FencePoint$Builder;->targetSystem:I

    return-object p0
.end method
