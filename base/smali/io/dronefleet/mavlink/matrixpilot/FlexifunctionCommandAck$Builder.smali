.class public final Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;
.super Ljava/lang/Object;
.source "FlexifunctionCommandAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private commandType:I

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck;
    .locals 4

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;->commandType:I

    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;->result:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck;-><init>(IILio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$1;)V

    return-object v0
.end method

.method public final commandType(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command acknowledged"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 114
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;->commandType:I

    return-object p0
.end method

.method public final result(I)Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "result of acknowledge"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 127
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/FlexifunctionCommandAck$Builder;->result:I

    return-object p0
.end method
