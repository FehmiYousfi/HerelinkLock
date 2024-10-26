.class public final Lio/dronefleet/mavlink/common/RcChannels$Builder;
.super Ljava/lang/Object;
.source "RcChannels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RcChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private chan10Raw:I

.field private chan11Raw:I

.field private chan12Raw:I

.field private chan13Raw:I

.field private chan14Raw:I

.field private chan15Raw:I

.field private chan16Raw:I

.field private chan17Raw:I

.field private chan18Raw:I

.field private chan1Raw:I

.field private chan2Raw:I

.field private chan3Raw:I

.field private chan4Raw:I

.field private chan5Raw:I

.field private chan6Raw:I

.field private chan7Raw:I

.field private chan8Raw:I

.field private chan9Raw:I

.field private chancount:I

.field private rssi:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RcChannels;
    .locals 27

    move-object/from16 v0, p0

    .line 819
    new-instance v25, Lio/dronefleet/mavlink/common/RcChannels;

    move-object/from16 v1, v25

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->timeBootMs:J

    iget v4, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chancount:I

    iget v5, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan1Raw:I

    iget v6, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan2Raw:I

    iget v7, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan3Raw:I

    iget v8, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan4Raw:I

    iget v9, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan5Raw:I

    iget v10, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan6Raw:I

    iget v11, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan7Raw:I

    iget v12, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan8Raw:I

    iget v13, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan9Raw:I

    iget v14, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan10Raw:I

    iget v15, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan11Raw:I

    move-object/from16 v26, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan12Raw:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan13Raw:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan14Raw:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan15Raw:I

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan16Raw:I

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan17Raw:I

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan18Raw:I

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->rssi:I

    move/from16 v23, v1

    const/16 v24, 0x0

    move-object/from16 v1, v26

    invoke-direct/range {v1 .. v24}, Lio/dronefleet/mavlink/common/RcChannels;-><init>(JIIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/common/RcChannels$1;)V

    return-object v25
.end method

.method public final chan10Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 10 value."
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 695
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan10Raw:I

    return-object p0
.end method

.method public final chan11Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 11 value."
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 708
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan11Raw:I

    return-object p0
.end method

.method public final chan12Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 12 value."
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 721
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan12Raw:I

    return-object p0
.end method

.method public final chan13Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 13 value."
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 734
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan13Raw:I

    return-object p0
.end method

.method public final chan14Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 14 value."
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 747
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan14Raw:I

    return-object p0
.end method

.method public final chan15Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 15 value."
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 760
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan15Raw:I

    return-object p0
.end method

.method public final chan16Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 16 value."
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 773
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan16Raw:I

    return-object p0
.end method

.method public final chan17Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 17 value."
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 786
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan17Raw:I

    return-object p0
.end method

.method public final chan18Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 18 value."
        position = 0x14
        unitSize = 0x2
    .end annotation

    .line 799
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan18Raw:I

    return-object p0
.end method

.method public final chan1Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 578
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan1Raw:I

    return-object p0
.end method

.method public final chan2Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 591
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan2Raw:I

    return-object p0
.end method

.method public final chan3Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 604
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan3Raw:I

    return-object p0
.end method

.method public final chan4Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 617
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan4Raw:I

    return-object p0
.end method

.method public final chan5Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 630
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan5Raw:I

    return-object p0
.end method

.method public final chan6Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 643
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan6Raw:I

    return-object p0
.end method

.method public final chan7Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 656
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan7Raw:I

    return-object p0
.end method

.method public final chan8Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 669
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan8Raw:I

    return-object p0
.end method

.method public final chan9Raw(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 9 value."
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 682
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chan9Raw:I

    return-object p0
.end method

.method public final chancount(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of RC channels being received. This\n                can be larger than 18, indicating that more channels are available but not given in\n                this message. This value should be 0 when no RC channels are available."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 565
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->chancount:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive signal strength indicator in device-dependent\n                units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0x15
        unitSize = 0x1
    .end annotation

    .line 814
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->rssi:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/RcChannels$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 548
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/RcChannels$Builder;->timeBootMs:J

    return-object p0
.end method
