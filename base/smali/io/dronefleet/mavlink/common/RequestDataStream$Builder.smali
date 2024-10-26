.class public final Lio/dronefleet/mavlink/common/RequestDataStream$Builder;
.super Ljava/lang/Object;
.source "RequestDataStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RequestDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private reqMessageRate:I

.field private reqStreamId:I

.field private startStop:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RequestDataStream;
    .locals 8

    .line 242
    new-instance v7, Lio/dronefleet/mavlink/common/RequestDataStream;

    iget v1, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->reqStreamId:I

    iget v4, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->reqMessageRate:I

    iget v5, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->startStop:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/RequestDataStream;-><init>(IIIIILio/dronefleet/mavlink/common/RequestDataStream$1;)V

    return-object v7
.end method

.method public final reqMessageRate(I)Lio/dronefleet/mavlink/common/RequestDataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The requested message rate"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 224
    iput p1, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->reqMessageRate:I

    return-object p0
.end method

.method public final reqStreamId(I)Lio/dronefleet/mavlink/common/RequestDataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID of the requested data stream"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 211
    iput p1, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->reqStreamId:I

    return-object p0
.end method

.method public final startStop(I)Lio/dronefleet/mavlink/common/RequestDataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1 to start sending, 0 to stop sending."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 237
    iput p1, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->startStop:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/RequestDataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The target requested to send the message\n                stream."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 198
    iput p1, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/RequestDataStream$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The target requested to send the message\n                stream."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 184
    iput p1, p0, Lio/dronefleet/mavlink/common/RequestDataStream$Builder;->targetSystem:I

    return-object p0
.end method
