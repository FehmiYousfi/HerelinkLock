.class public final Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
.super Ljava/lang/Object;
.source "SensorpodStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/SensorpodStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cpuTemp:I

.field private freeSpace:I

.field private recordingNodesCount:I

.field private timestamp:Ljava/math/BigInteger;

.field private visensorRate1:I

.field private visensorRate2:I

.field private visensorRate3:I

.field private visensorRate4:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/SensorpodStatus;
    .locals 11

    .line 349
    new-instance v10, Lio/dronefleet/mavlink/asluav/SensorpodStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->timestamp:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate1:I

    iget v3, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate2:I

    iget v4, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate3:I

    iget v5, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate4:I

    iget v6, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->recordingNodesCount:I

    iget v7, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->cpuTemp:I

    iget v8, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->freeSpace:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/asluav/SensorpodStatus;-><init>(Ljava/math/BigInteger;IIIIIIILio/dronefleet/mavlink/asluav/SensorpodStatus$1;)V

    return-object v10
.end method

.method public final cpuTemp(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature of sensorpod CPU in"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 330
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->cpuTemp:I

    return-object p0
.end method

.method public final freeSpace(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Free space available in recordings directory in\n                [Gb] * 1e2"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 344
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->freeSpace:I

    return-object p0
.end method

.method public final recordingNodesCount(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of recording nodes"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 317
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->recordingNodesCount:I

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp in linuxtime (since\n                1.1.1970)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 252
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final visensorRate1(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 1"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 265
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate1:I

    return-object p0
.end method

.method public final visensorRate2(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 2"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 278
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate2:I

    return-object p0
.end method

.method public final visensorRate3(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 3"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 291
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate3:I

    return-object p0
.end method

.method public final visensorRate4(I)Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of ROS topic 4"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 304
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensorpodStatus$Builder;->visensorRate4:I

    return-object p0
.end method
