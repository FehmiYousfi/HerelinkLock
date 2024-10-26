.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private directoryData:[I

.field private directoryType:I

.field private startIndex:I

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
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory;
    .locals 9

    .line 277
    new-instance v8, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->directoryType:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->startIndex:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->count:I

    iget-object v6, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->directoryData:[I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory;-><init>(IIIII[ILio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$1;)V

    return-object v8
.end method

.method public final count(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "count of directory entries to write"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 257
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->count:I

    return-object p0
.end method

.method public final directoryData([I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x30
        description = "Settings data"
        position = 0x6
        signed = true
        unitSize = 0x1
    .end annotation

    .line 272
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->directoryData:[I

    return-object p0
.end method

.method public final directoryType(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0=inputs, 1=outputs"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 231
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->directoryType:I

    return-object p0
.end method

.method public final startIndex(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "index of first directory entry to write"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 244
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->startIndex:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 218
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 205
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionDirectory$Builder;->targetSystem:I

    return-object p0
.end method
