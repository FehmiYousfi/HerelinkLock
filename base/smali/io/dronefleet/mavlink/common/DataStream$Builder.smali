.class public final Lio/dronefleet/mavlink/common/DataStream$Builder;
.super Ljava/lang/Object;
.source "DataStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/DataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private messageRate:I

.field private onOff:I

.field private streamId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/DataStream;
    .locals 5

    .line 167
    new-instance v0, Lio/dronefleet/mavlink/common/DataStream;

    iget v1, p0, Lio/dronefleet/mavlink/common/DataStream$Builder;->streamId:I

    iget v2, p0, Lio/dronefleet/mavlink/common/DataStream$Builder;->messageRate:I

    iget v3, p0, Lio/dronefleet/mavlink/common/DataStream$Builder;->onOff:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/DataStream;-><init>(IIILio/dronefleet/mavlink/common/DataStream$1;)V

    return-object v0
.end method

.method public final messageRate(I)Lio/dronefleet/mavlink/common/DataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The message rate"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 149
    iput p1, p0, Lio/dronefleet/mavlink/common/DataStream$Builder;->messageRate:I

    return-object p0
.end method

.method public final onOff(I)Lio/dronefleet/mavlink/common/DataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1 stream is enabled, 0 stream is stopped."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 162
    iput p1, p0, Lio/dronefleet/mavlink/common/DataStream$Builder;->onOff:I

    return-object p0
.end method

.method public final streamId(I)Lio/dronefleet/mavlink/common/DataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID of the requested data stream"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 136
    iput p1, p0, Lio/dronefleet/mavlink/common/DataStream$Builder;->streamId:I

    return-object p0
.end method
