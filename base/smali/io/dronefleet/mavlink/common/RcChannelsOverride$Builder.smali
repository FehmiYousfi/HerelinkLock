.class public final Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
.super Ljava/lang/Object;
.source "RcChannelsOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RcChannelsOverride;
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

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RcChannelsOverride;
    .locals 25

    move-object/from16 v0, p0

    .line 900
    new-instance v23, Lio/dronefleet/mavlink/common/RcChannelsOverride;

    move-object/from16 v1, v23

    iget v2, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->targetSystem:I

    iget v3, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->targetComponent:I

    iget v4, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan1Raw:I

    iget v5, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan2Raw:I

    iget v6, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan3Raw:I

    iget v7, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan4Raw:I

    iget v8, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan5Raw:I

    iget v9, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan6Raw:I

    iget v10, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan7Raw:I

    iget v11, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan8Raw:I

    iget v12, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan9Raw:I

    iget v13, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan10Raw:I

    iget v14, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan11Raw:I

    iget v15, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan12Raw:I

    move-object/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan13Raw:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan14Raw:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan15Raw:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan16Raw:I

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan17Raw:I

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan18Raw:I

    move/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lio/dronefleet/mavlink/common/RcChannelsOverride;-><init>(IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/common/RcChannelsOverride$1;)V

    return-object v23
.end method

.method public final chan10Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 10 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 759
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan10Raw:I

    return-object p0
.end method

.method public final chan11Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 11 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 776
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan11Raw:I

    return-object p0
.end method

.method public final chan12Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 12 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 793
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan12Raw:I

    return-object p0
.end method

.method public final chan13Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 13 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 810
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan13Raw:I

    return-object p0
.end method

.method public final chan14Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 14 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 827
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan14Raw:I

    return-object p0
.end method

.method public final chan15Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 15 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 844
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan15Raw:I

    return-object p0
.end method

.method public final chan16Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 16 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 861
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan16Raw:I

    return-object p0
.end method

.method public final chan17Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 17 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x14
        unitSize = 0x2
    .end annotation

    .line 878
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan17Raw:I

    return-object p0
.end method

.method public final chan18Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 18 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0x15
        unitSize = 0x2
    .end annotation

    .line 895
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan18Raw:I

    return-object p0
.end method

.method public final chan1Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 613
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan1Raw:I

    return-object p0
.end method

.method public final chan2Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 629
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan2Raw:I

    return-object p0
.end method

.method public final chan3Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 645
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan3Raw:I

    return-object p0
.end method

.method public final chan4Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 661
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan4Raw:I

    return-object p0
.end method

.method public final chan5Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 677
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan5Raw:I

    return-object p0
.end method

.method public final chan6Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 693
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan6Raw:I

    return-object p0
.end method

.method public final chan7Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 709
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan7Raw:I

    return-object p0
.end method

.method public final chan8Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value. A value of\n                UINT16_MAX means to ignore this field. A value of 0 means to release this channel\n                back to the RC radio."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 725
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan8Raw:I

    return-object p0
.end method

.method public final chan9Raw(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 9 value. A value of 0 or\n                UINT16_MAX means to ignore this field. A value of UINT16_MAX-1 means to release this\n                channel back to the RC radio."
        extension = true
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 742
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->chan9Raw:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 597
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 584
    iput p1, p0, Lio/dronefleet/mavlink/common/RcChannelsOverride$Builder;->targetSystem:I

    return-object p0
.end method
