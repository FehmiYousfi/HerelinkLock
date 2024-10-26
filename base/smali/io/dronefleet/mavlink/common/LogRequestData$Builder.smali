.class public final Lio/dronefleet/mavlink/common/LogRequestData$Builder;
.super Ljava/lang/Object;
.source "LogRequestData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LogRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:J

.field private id:I

.field private ofs:J

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LogRequestData;
    .locals 10

    .line 237
    new-instance v9, Lio/dronefleet/mavlink/common/LogRequestData;

    iget v1, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->id:I

    iget-wide v4, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->ofs:J

    iget-wide v6, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->count:J

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/LogRequestData;-><init>(IIIJJLio/dronefleet/mavlink/common/LogRequestData$1;)V

    return-object v9
.end method

.method public final count(J)Lio/dronefleet/mavlink/common/LogRequestData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of bytes"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 232
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->count:J

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/LogRequestData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log id (from LOG_ENTRY reply)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 206
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->id:I

    return-object p0
.end method

.method public final ofs(J)Lio/dronefleet/mavlink/common/LogRequestData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Offset into the log"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 219
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->ofs:J

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/LogRequestData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 193
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/LogRequestData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 180
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestData$Builder;->targetSystem:I

    return-object p0
.end method
