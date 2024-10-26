.class public final Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
.super Ljava/lang/Object;
.source "RcChannelsScaled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RcChannelsScaled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private chan1Scaled:I

.field private chan2Scaled:I

.field private chan3Scaled:I

.field private chan4Scaled:I

.field private chan5Scaled:I

.field private chan6Scaled:I

.field private chan7Scaled:I

.field private chan8Scaled:I

.field private port:I

.field private rssi:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RcChannelsScaled;
    .locals 15

    .line 477
    new-instance v14, Lio/dronefleet/mavlink/common/RcChannelsScaled;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->port:I

    iget v4, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan1Scaled:I

    iget v5, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan2Scaled:I

    iget v6, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan3Scaled:I

    iget v7, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan4Scaled:I

    iget v8, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan5Scaled:I

    iget v9, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan6Scaled:I

    iget v10, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan7Scaled:I

    iget v11, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan8Scaled:I

    iget v12, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->rssi:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/RcChannelsScaled;-><init>(JIIIIIIIIIILio/dronefleet/mavlink/common/RcChannelsScaled$1;)V

    return-object v14
.end method

.method public final chan1Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value scaled."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 359
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan1Scaled:I

    return-object p0
.end method

.method public final chan2Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value scaled."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 373
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan2Scaled:I

    return-object p0
.end method

.method public final chan3Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value scaled."
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan3Scaled:I

    return-object p0
.end method

.method public final chan4Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value scaled."
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan4Scaled:I

    return-object p0
.end method

.method public final chan5Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value scaled."
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 415
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan5Scaled:I

    return-object p0
.end method

.method public final chan6Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value scaled."
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 429
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan6Scaled:I

    return-object p0
.end method

.method public final chan7Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value scaled."
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 443
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan7Scaled:I

    return-object p0
.end method

.method public final chan8Scaled(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value scaled."
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 457
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->chan8Scaled:I

    return-object p0
.end method

.method public final port(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output port (set of 8 outputs = 1 port). Flight\n                stacks running on Pixhawk should use: 0 = MAIN, 1 = AUX."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 345
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->port:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive signal strength indicator in device-dependent\n                units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 472
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->rssi:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 330
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/RcChannelsScaled$Builder;->timeBootMs:J

    return-object p0
.end method
