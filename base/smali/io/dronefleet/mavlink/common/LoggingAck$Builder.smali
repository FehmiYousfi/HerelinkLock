.class public final Lio/dronefleet/mavlink/common/LoggingAck$Builder;
.super Ljava/lang/Object;
.source "LoggingAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LoggingAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sequence:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LoggingAck;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/common/LoggingAck;

    iget v1, p0, Lio/dronefleet/mavlink/common/LoggingAck$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/LoggingAck$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/LoggingAck$Builder;->sequence:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/LoggingAck;-><init>(IIILio/dronefleet/mavlink/common/LoggingAck$1;)V

    return-object v0
.end method

.method public final sequence(I)Lio/dronefleet/mavlink/common/LoggingAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "sequence number (must match the one in\n                LOGGING_DATA_ACKED)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingAck$Builder;->sequence:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/LoggingAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "component ID of the target"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 150
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingAck$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/LoggingAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "system ID of the target"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 137
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingAck$Builder;->targetSystem:I

    return-object p0
.end method
