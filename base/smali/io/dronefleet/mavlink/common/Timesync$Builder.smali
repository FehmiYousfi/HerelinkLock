.class public final Lio/dronefleet/mavlink/common/Timesync$Builder;
.super Ljava/lang/Object;
.source "Timesync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Timesync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private tc1:J

.field private ts1:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Timesync;
    .locals 7

    .line 136
    new-instance v6, Lio/dronefleet/mavlink/common/Timesync;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Timesync$Builder;->tc1:J

    iget-wide v3, p0, Lio/dronefleet/mavlink/common/Timesync$Builder;->ts1:J

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/Timesync;-><init>(JJLio/dronefleet/mavlink/common/Timesync$1;)V

    return-object v6
.end method

.method public final tc1(J)Lio/dronefleet/mavlink/common/Timesync$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time sync timestamp 1"
        position = 0x1
        signed = true
        unitSize = 0x8
    .end annotation

    .line 117
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Timesync$Builder;->tc1:J

    return-object p0
.end method

.method public final ts1(J)Lio/dronefleet/mavlink/common/Timesync$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time sync timestamp 2"
        position = 0x2
        signed = true
        unitSize = 0x8
    .end annotation

    .line 131
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Timesync$Builder;->ts1:J

    return-object p0
.end method
