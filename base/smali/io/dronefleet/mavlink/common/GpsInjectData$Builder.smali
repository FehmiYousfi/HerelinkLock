.class public final Lio/dronefleet/mavlink/common/GpsInjectData$Builder;
.super Ljava/lang/Object;
.source "GpsInjectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GpsInjectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[B

.field private len:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/GpsInjectData;
    .locals 7

    .line 206
    new-instance v6, Lio/dronefleet/mavlink/common/GpsInjectData;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->len:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->data:[B

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/GpsInjectData;-><init>(III[BLio/dronefleet/mavlink/common/GpsInjectData$1;)V

    return-object v6
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/GpsInjectData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x6e
        description = "Raw data (110 is enough for 12 satellites of\n                RTCMv2)"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 201
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->data:[B

    return-object p0
.end method

.method public final len(I)Lio/dronefleet/mavlink/common/GpsInjectData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data length"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 186
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->len:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/GpsInjectData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 173
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/GpsInjectData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 160
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInjectData$Builder;->targetSystem:I

    return-object p0
.end method
