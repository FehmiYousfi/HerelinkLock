.class public final Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;
.super Ljava/lang/Object;
.source "ChangeOperatorControlAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ChangeOperatorControlAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ack:I

.field private controlRequest:I

.field private gcsSystemId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ack(I)Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: ACK, 1: NACK: Wrong passkey, 2: NACK: Unsupported\n                passkey encryption method, 3: NACK: Already under control"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 168
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;->ack:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/ChangeOperatorControlAck;
    .locals 5

    .line 173
    new-instance v0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck;

    iget v1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;->gcsSystemId:I

    iget v2, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;->controlRequest:I

    iget v3, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;->ack:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck;-><init>(IIILio/dronefleet/mavlink/common/ChangeOperatorControlAck$1;)V

    return-object v0
.end method

.method public final controlRequest(I)Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: request control of this MAV, 1: Release\n                control of this MAV"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 153
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;->controlRequest:I

    return-object p0
.end method

.method public final gcsSystemId(I)Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the GCS this message"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 139
    iput p1, p0, Lio/dronefleet/mavlink/common/ChangeOperatorControlAck$Builder;->gcsSystemId:I

    return-object p0
.end method
