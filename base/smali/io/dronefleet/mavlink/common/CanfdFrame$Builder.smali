.class public final Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
.super Ljava/lang/Object;
.source "CanfdFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CanfdFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bus:I

.field private data:[B

.field private id:J

.field private len:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CanfdFrame;
    .locals 10

    .line 277
    new-instance v9, Lio/dronefleet/mavlink/common/CanfdFrame;

    iget v1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->bus:I

    iget v4, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->len:I

    iget-wide v5, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->id:J

    iget-object v7, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->data:[B

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/CanfdFrame;-><init>(IIIIJ[BLio/dronefleet/mavlink/common/CanfdFrame$1;)V

    return-object v9
.end method

.method public final bus(I)Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "bus number"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 232
    iput p1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->bus:I

    return-object p0
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x40
        description = "Frame data"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 272
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->data:[B

    return-object p0
.end method

.method public final id(J)Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame ID"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 258
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->id:J

    return-object p0
.end method

.method public final len(I)Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame length"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->len:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 219
    iput p1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/CanfdFrame$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 206
    iput p1, p0, Lio/dronefleet/mavlink/common/CanfdFrame$Builder;->targetSystem:I

    return-object p0
.end method
