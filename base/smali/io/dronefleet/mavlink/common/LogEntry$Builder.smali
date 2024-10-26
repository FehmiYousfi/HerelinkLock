.class public final Lio/dronefleet/mavlink/common/LogEntry$Builder;
.super Ljava/lang/Object;
.source "LogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:I

.field private lastLogNum:I

.field private numLogs:I

.field private size:J

.field private timeUtc:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LogEntry;
    .locals 10

    .line 239
    new-instance v9, Lio/dronefleet/mavlink/common/LogEntry;

    iget v1, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->id:I

    iget v2, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->numLogs:I

    iget v3, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->lastLogNum:I

    iget-wide v4, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->timeUtc:J

    iget-wide v6, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->size:J

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/LogEntry;-><init>(IIIJJLio/dronefleet/mavlink/common/LogEntry$1;)V

    return-object v9
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/LogEntry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log id"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 181
    iput p1, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->id:I

    return-object p0
.end method

.method public final lastLogNum(I)Lio/dronefleet/mavlink/common/LogEntry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "High log number"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 207
    iput p1, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->lastLogNum:I

    return-object p0
.end method

.method public final numLogs(I)Lio/dronefleet/mavlink/common/LogEntry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of logs"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 194
    iput p1, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->numLogs:I

    return-object p0
.end method

.method public final size(J)Lio/dronefleet/mavlink/common/LogEntry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Size of the log (may be approximate)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 234
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->size:J

    return-object p0
.end method

.method public final timeUtc(J)Lio/dronefleet/mavlink/common/LogEntry$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UTC timestamp of log since 1970, or 0\n                if not available"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 221
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LogEntry$Builder;->timeUtc:J

    return-object p0
.end method
