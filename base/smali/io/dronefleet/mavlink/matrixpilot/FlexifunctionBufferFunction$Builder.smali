.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionBufferFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[I

.field private dataAddress:I

.field private dataSize:I

.field private funcCount:I

.field private funcIndex:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction;
    .locals 10

    .line 315
    new-instance v9, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->funcIndex:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->funcCount:I

    iget v5, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->dataAddress:I

    iget v6, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->dataSize:I

    iget-object v7, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->data:[I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction;-><init>(IIIIII[ILio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$1;)V

    return-object v9
.end method

.method public final data([I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x30
        description = "Settings data"
        position = 0x7
        signed = true
        unitSize = 0x1
    .end annotation

    .line 310
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->data:[I

    return-object p0
.end method

.method public final dataAddress(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Address in the flexifunction data, Set to\n                0xFFFF to use address in target memory"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->dataAddress:I

    return-object p0
.end method

.method public final dataSize(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Size of the"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 295
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->dataSize:I

    return-object p0
.end method

.method public final funcCount(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total count of functions"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->funcCount:I

    return-object p0
.end method

.method public final funcIndex(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Function index"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->funcIndex:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionBufferFunction$Builder;->targetSystem:I

    return-object p0
.end method
