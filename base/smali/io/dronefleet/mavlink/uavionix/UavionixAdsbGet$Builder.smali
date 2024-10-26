.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private reqmessageid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;
    .locals 4

    .line 99
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;

    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;->reqmessageid:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;-><init>(JLio/dronefleet/mavlink/uavionix/UavionixAdsbGet$1;)V

    return-object v0
.end method

.method public final reqmessageid(J)Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Message ID to request. Supports any message\n                in this 10000-10099 range"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 94
    iput-wide p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;->reqmessageid:J

    return-object p0
.end method
