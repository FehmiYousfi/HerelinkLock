.class public final Lio/dronefleet/mavlink/common/LogData$Builder;
.super Ljava/lang/Object;
.source "LogData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private data:[B

.field private id:I

.field private ofs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LogData;
    .locals 8

    .line 204
    new-instance v7, Lio/dronefleet/mavlink/common/LogData;

    iget v1, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->id:I

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->ofs:J

    iget v4, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->count:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->data:[B

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/LogData;-><init>(IJI[BLio/dronefleet/mavlink/common/LogData$1;)V

    return-object v7
.end method

.method public final count(I)Lio/dronefleet/mavlink/common/LogData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of bytes (zero for end of log)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 185
    iput p1, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->count:I

    return-object p0
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/LogData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x5a
        description = "log data"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 199
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->data:[B

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/LogData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log id (from LOG_ENTRY reply)"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 159
    iput p1, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->id:I

    return-object p0
.end method

.method public final ofs(J)Lio/dronefleet/mavlink/common/LogData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Offset into the log"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 172
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LogData$Builder;->ofs:J

    return-object p0
.end method
