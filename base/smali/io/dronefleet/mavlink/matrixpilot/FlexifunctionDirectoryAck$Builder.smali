.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionDirectoryAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private directoryType:I

.field private result:I

.field private startIndex:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck;
    .locals 9

    .line 273
    new-instance v8, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->directoryType:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->startIndex:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->count:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->result:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck;-><init>(IIIIIILio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$1;)V

    return-object v8
.end method

.method public final count(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "count of directory entries to write"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->count:I

    return-object p0
.end method

.method public final directoryType(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0=inputs, 1=outputs"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->directoryType:I

    return-object p0
.end method

.method public final result(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "result of acknowledge, 0=fail, 1=good"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->result:I

    return-object p0
.end method

.method public final startIndex(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "index of first directory entry to write"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->startIndex:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 203
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectoryAck$Builder;->targetSystem:I

    return-object p0
.end method
