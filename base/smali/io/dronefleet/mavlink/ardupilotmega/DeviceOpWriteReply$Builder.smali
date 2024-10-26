.class public final Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;
.super Ljava/lang/Object;
.source "DeviceOpWriteReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private requestId:J

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;
    .locals 5

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;->requestId:J

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;->result:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;-><init>(JILio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$1;)V

    return-object v0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 114
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;->requestId:J

    return-object p0
.end method

.method public final result(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0 for success, anything else is failure code."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 127
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;->result:I

    return-object p0
.end method
