.class public final Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
.super Ljava/lang/Object;
.source "AqTelemetryF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/autoquad/AqTelemetryF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private index:I

.field private value1:F

.field private value10:F

.field private value11:F

.field private value12:F

.field private value13:F

.field private value14:F

.field private value15:F

.field private value16:F

.field private value17:F

.field private value18:F

.field private value19:F

.field private value2:F

.field private value20:F

.field private value3:F

.field private value4:F

.field private value5:F

.field private value6:F

.field private value7:F

.field private value8:F

.field private value9:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/autoquad/AqTelemetryF;
    .locals 26

    move-object/from16 v0, p0

    .line 800
    new-instance v24, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;

    move-object/from16 v1, v24

    iget v2, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->index:I

    iget v3, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value1:F

    iget v4, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value2:F

    iget v5, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value3:F

    iget v6, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value4:F

    iget v7, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value5:F

    iget v8, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value6:F

    iget v9, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value7:F

    iget v10, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value8:F

    iget v11, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value9:F

    iget v12, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value10:F

    iget v13, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value11:F

    iget v14, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value12:F

    iget v15, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value13:F

    move-object/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value14:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value15:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value16:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value17:F

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value18:F

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value19:F

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value20:F

    move/from16 v22, v1

    const/16 v23, 0x0

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lio/dronefleet/mavlink/autoquad/AqTelemetryF;-><init>(IFFFFFFFFFFFFFFFFFFFFLio/dronefleet/mavlink/autoquad/AqTelemetryF$1;)V

    return-object v24
.end method

.method public final index(I)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of message"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 535
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->index:I

    return-object p0
.end method

.method public final value1(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value1"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 548
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value1:F

    return-object p0
.end method

.method public final value10(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value10"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 665
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value10:F

    return-object p0
.end method

.method public final value11(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value11"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 678
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value11:F

    return-object p0
.end method

.method public final value12(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value12"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 691
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value12:F

    return-object p0
.end method

.method public final value13(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value13"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 704
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value13:F

    return-object p0
.end method

.method public final value14(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value14"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 717
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value14:F

    return-object p0
.end method

.method public final value15(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value15"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 730
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value15:F

    return-object p0
.end method

.method public final value16(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value16"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 743
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value16:F

    return-object p0
.end method

.method public final value17(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value17"
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 756
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value17:F

    return-object p0
.end method

.method public final value18(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value18"
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 769
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value18:F

    return-object p0
.end method

.method public final value19(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value19"
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 782
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value19:F

    return-object p0
.end method

.method public final value2(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value2"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 561
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value2:F

    return-object p0
.end method

.method public final value20(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value20"
        position = 0x15
        unitSize = 0x4
    .end annotation

    .line 795
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value20:F

    return-object p0
.end method

.method public final value3(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value3"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 574
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value3:F

    return-object p0
.end method

.method public final value4(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value4"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 587
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value4:F

    return-object p0
.end method

.method public final value5(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value5"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 600
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value5:F

    return-object p0
.end method

.method public final value6(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value6"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 613
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value6:F

    return-object p0
.end method

.method public final value7(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value7"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 626
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value7:F

    return-object p0
.end method

.method public final value8(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value8"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 639
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value8:F

    return-object p0
.end method

.method public final value9(F)Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "value9"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 652
    iput p1, p0, Lio/dronefleet/mavlink/autoquad/AqTelemetryF$Builder;->value9:F

    return-object p0
.end method
