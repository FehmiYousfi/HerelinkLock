.class public final Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;
.super Ljava/lang/Object;
.source "FenceFetchPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private idx:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;->idx:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint;-><init>(IIILio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$1;)V

    return-object v0
.end method

.method public final idx(I)Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Point index (first point is 1, 0 is for return\n                point)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;->idx:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 150
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 137
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/FenceFetchPoint$Builder;->targetSystem:I

    return-object p0
.end method