.class public final Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
.super Ljava/lang/Object;
.source "AqEscTelemetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data0:[J

.field private data1:[J

.field private dataVersion:[B

.field private escid:[B

.field private numInSeq:I

.field private numMotors:I

.field private seq:I

.field private statusAge:[I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;
    .locals 13

    .line 419
    new-instance v12, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;

    iget-wide v1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->seq:I

    iget v4, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->numMotors:I

    iget v5, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->numInSeq:I

    iget-object v6, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->escid:[B

    iget-object v7, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->statusAge:[I

    iget-object v8, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->dataVersion:[B

    iget-object v9, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->data0:[J

    iget-object v10, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->data1:[J

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry;-><init>(JIII[B[I[B[J[JLio/dronefleet/mavlink/autoquad/AqEscTelemetry$1;)V

    return-object v12
.end method

.method public final data0([J)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Data bits 1-32 for each ESC."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 400
    iput-object p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->data0:[J

    return-object p0
.end method

.method public final data1([J)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Data bits 33-64 for each ESC."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 414
    iput-object p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->data1:[J

    return-object p0
.end method

.method public final dataVersion([B)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Version of data structure (determines\n                contents)."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 386
    iput-object p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->dataVersion:[B

    return-object p0
.end method

.method public final escid([B)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "ESC/Motor ID"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 355
    iput-object p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->escid:[B

    return-object p0
.end method

.method public final numInSeq(I)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of active ESCs in this sequence (1\n                through this many array members will be populated with data)"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 341
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->numInSeq:I

    return-object p0
.end method

.method public final numMotors(I)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of active ESCs/motors on the\n                system."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 326
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->numMotors:I

    return-object p0
.end method

.method public final seq(I)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence number of message (first set of 4 motors is\n                #1, next 4 is #2, etc)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 312
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->seq:I

    return-object p0
.end method

.method public final statusAge([I)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Age of each ESC telemetry reading in ms\n                compared to boot time. A value of 0xFFFF means timeout/no data."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 371
    iput-object p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->statusAge:[I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp of the component clock since boot\n                time in ms."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 298
    iput-wide p1, p0, Lio/dronefleet/mavlink/autoquad/AqEscTelemetry$Builder;->timeBootMs:J

    return-object p0
.end method
