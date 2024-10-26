.class public final Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
.super Ljava/lang/Object;
.source "DeviceOpReadReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bank:I

.field private count:I

.field private data:[B

.field private regstart:I

.field private requestId:J

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bank(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bank number."
        extension = true
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 272
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->bank:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;
    .locals 10

    .line 277
    new-instance v9, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->requestId:J

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->result:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->regstart:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->count:I

    iget-object v6, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->data:[B

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->bank:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply;-><init>(JIII[BILio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$1;)V

    return-object v9
.end method

.method public final count(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of bytes read."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 244
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->count:I

    return-object p0
.end method

.method public final data([B)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Reply data."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 258
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->data:[B

    return-object p0
.end method

.method public final regstart(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Starting register."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 231
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->regstart:I

    return-object p0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 205
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->requestId:J

    return-object p0
.end method

.method public final result(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0 for success, anything else is failure code."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 218
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpReadReply$Builder;->result:I

    return-object p0
.end method
