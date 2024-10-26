.class public final Lio/dronefleet/mavlink/common/MissionItemReached$Builder;
.super Ljava/lang/Object;
.source "MissionItemReached.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionItemReached;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private seq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MissionItemReached;
    .locals 3

    .line 100
    new-instance v0, Lio/dronefleet/mavlink/common/MissionItemReached;

    iget v1, p0, Lio/dronefleet/mavlink/common/MissionItemReached$Builder;->seq:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dronefleet/mavlink/common/MissionItemReached;-><init>(ILio/dronefleet/mavlink/common/MissionItemReached$1;)V

    return-object v0
.end method

.method public final seq(I)Lio/dronefleet/mavlink/common/MissionItemReached$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 95
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemReached$Builder;->seq:I

    return-object p0
.end method
