.class public final Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
.super Ljava/lang/Object;
.source "RcChannelsRaw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RcChannelsRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private chan1Raw:I

.field private chan2Raw:I

.field private chan3Raw:I

.field private chan4Raw:I

.field private chan5Raw:I

.field private chan6Raw:I

.field private chan7Raw:I

.field private chan8Raw:I

.field private port:I

.field private rssi:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RcChannelsRaw;
    .locals 15

    .line 463
    new-instance v14, Lio/dronefleet/mavlink/common/RcChannelsRaw;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->port:I

    iget v4, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan1Raw:I

    iget v5, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan2Raw:I

    iget v6, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan3Raw:I

    iget v7, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan4Raw:I

    iget v8, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan5Raw:I

    iget v9, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan6Raw:I

    iget v10, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan7Raw:I

    iget v11, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan8Raw:I

    iget v12, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->rssi:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/RcChannelsRaw;-><init>(JIIIIIIIIIILio/dronefleet/mavlink/common/RcChannelsRaw$1;)V

    return-object v14
.end method

.method public final chan1Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 352
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan1Raw:I

    return-object p0
.end method

.method public final chan2Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 365
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan2Raw:I

    return-object p0
.end method

.method public final chan3Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 378
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan3Raw:I

    return-object p0
.end method

.method public final chan4Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 391
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan4Raw:I

    return-object p0
.end method

.method public final chan5Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 404
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan5Raw:I

    return-object p0
.end method

.method public final chan6Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 417
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan6Raw:I

    return-object p0
.end method

.method public final chan7Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 430
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan7Raw:I

    return-object p0
.end method

.method public final chan8Raw(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 443
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->chan8Raw:I

    return-object p0
.end method

.method public final port(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output port (set of 8 outputs = 1 port). Flight\n                stacks running on Pixhawk should use: 0 = MAIN, 1 = AUX."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 339
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->port:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive signal strength indicator in device-dependent\n                units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 458
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->rssi:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 324
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/RcChannelsRaw$Builder;->timeBootMs:J

    return-object p0
.end method
