.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private commandType:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand;
    .locals 5

    .line 167
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;->commandType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand;-><init>(IIILio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$1;)V

    return-object v0
.end method

.method public final commandType(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flexifunction command type"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 162
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;->commandType:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 149
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 136
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommand$Builder;->targetSystem:I

    return-object p0
.end method
