.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionBufferFunctionAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private funcIndex:I

.field private result:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck;
    .locals 7

    .line 204
    new-instance v6, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->funcIndex:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->result:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck;-><init>(IIIILio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$1;)V

    return-object v6
.end method

.method public final funcIndex(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Function index"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 186
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->funcIndex:I

    return-object p0
.end method

.method public final result(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "result of acknowledge, 0=fail, 1=good"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 199
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->result:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 173
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 160
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunctionAck$Builder;->targetSystem:I

    return-object p0
.end method
