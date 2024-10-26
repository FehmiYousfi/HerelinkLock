.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionReadReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private dataIndex:I

.field private readReqType:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq;
    .locals 7

    .line 207
    new-instance v6, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->readReqType:I

    iget v4, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->dataIndex:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq;-><init>(IIIILio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$1;)V

    return-object v6
.end method

.method public final dataIndex(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "index into data where needed"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->dataIndex:I

    return-object p0
.end method

.method public final readReqType(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of flexifunction data requested"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 188
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->readReqType:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 174
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 161
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionReadReq$Builder;->targetSystem:I

    return-object p0
.end method
