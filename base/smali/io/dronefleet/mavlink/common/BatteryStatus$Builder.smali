.class public final Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/BatteryStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;"
        }
    .end annotation
.end field

.field private batteryRemaining:I

.field private chargeState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryChargeState;",
            ">;"
        }
    .end annotation
.end field

.field private currentBattery:I

.field private currentConsumed:I

.field private energyConsumed:I

.field private faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFault;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryMode;",
            ">;"
        }
    .end annotation
.end field

.field private temperature:I

.field private timeRemaining:I

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;"
        }
    .end annotation
.end field

.field private voltages:[I

.field private voltagesExt:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final batteryFunction(Lio/dronefleet/mavlink/common/MavBatteryFunction;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 462
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFunction;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Function of\n                the battery"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryFunction;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 454
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final batteryFunction(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .line 476
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs batteryFunction([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 469
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryFunction(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final batteryRemaining(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining battery energy.\n                Values: [0-100], -1: autopilot does not estimate the remaining battery."
        position = 0x9
        signed = true
        unitSize = 0x1
    .end annotation

    .line 614
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryRemaining:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/BatteryStatus;
    .locals 18

    move-object/from16 v0, p0

    .line 781
    new-instance v17, Lio/dronefleet/mavlink/common/BatteryStatus;

    iget v2, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->id:I

    iget-object v3, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryFunction:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->temperature:I

    iget-object v6, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->voltages:[I

    iget v7, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->currentBattery:I

    iget v8, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->currentConsumed:I

    iget v9, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->energyConsumed:I

    iget v10, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->batteryRemaining:I

    iget v11, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->timeRemaining:I

    iget-object v12, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v13, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->voltagesExt:[I

    iget-object v14, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v15, v0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/common/BatteryStatus;-><init>(ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;I[IIIIIILio/dronefleet/mavlink/util/EnumValue;[ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/BatteryStatus$1;)V

    return-object v17
.end method

.method public final chargeState(Lio/dronefleet/mavlink/common/MavBatteryChargeState;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 654
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->chargeState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final chargeState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryChargeState;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "State for\n                extent of discharge, provided by autopilot for warning or external reactions"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryChargeState;
        extension = true
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 646
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->chargeState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final chargeState(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .line 668
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->chargeState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs chargeState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 661
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->chargeState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final currentBattery(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery current, -1: autopilot\n                does not measure the current"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 568
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->currentBattery:I

    return-object p0
.end method

.method public final currentConsumed(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Consumed charge, -1: autopilot\n                does not provide consumption estimate"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 583
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->currentConsumed:I

    return-object p0
.end method

.method public final energyConsumed(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Consumed energy, -1: autopilot\n                does not provide energy consumption estimate"
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 598
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->energyConsumed:I

    return-object p0
.end method

.method public final faultBitmask(Lio/dronefleet/mavlink/common/MavBatteryFault;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 759
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->faultBitmask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final faultBitmask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryFault;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Fault/health indications. These should be set when charge_state is\n                MAV_BATTERY_CHARGE_STATE_FAILED or MAV_BATTERY_CHARGE_STATE_UNHEALTHY (if not, fault\n                reporting is not supported)."
        enumType = Lio/dronefleet/mavlink/common/MavBatteryFault;
        extension = true
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 749
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->faultBitmask:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final faultBitmask(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .line 777
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->faultBitmask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs faultBitmask([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 768
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->faultBitmask(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 439
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->id:I

    return-object p0
.end method

.method public final mode(Lio/dronefleet/mavlink/common/MavBatteryMode;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 715
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryMode;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery mode. Default (0) is\n                that battery mode reporting is not supported or battery is in normal-use mode."
        enumType = Lio/dronefleet/mavlink/common/MavBatteryMode;
        extension = true
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 706
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final mode(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .line 731
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 723
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature of the battery.\n                INT16_MAX for unknown temperature."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 526
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->temperature:I

    return-object p0
.end method

.method public final timeRemaining(I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining battery time, 0:\n                autopilot does not provide remaining battery time estimate"
        extension = true
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 630
    iput p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->timeRemaining:I

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/MavBatteryType;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 498
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavBatteryType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type (chemistry) of the\n                battery"
        enumType = Lio/dronefleet/mavlink/common/MavBatteryType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 490
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/BatteryStatus$Builder;"
        }
    .end annotation

    .line 512
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0

    .line 505
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final voltages([I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Battery voltage of cells 1 to 10\n                (see voltages_ext for cells 11-14). Cells in this field above the valid cell count\n                for this battery should have the UINT16_MAX value. If individual cell voltages are\n                unknown or not measured for this battery, then the overall battery voltage should be\n                filled in cell 0, with all others set to UINT16_MAX. If the voltage of the battery\n                is greater than (UINT16_MAX - 1), then cell 0 should be set to (UINT16_MAX - 1), and\n                cell 1 to the remaining voltage. This can be extended to multiple cells if the total\n                voltage is greater than 2 * (UINT16_MAX - 1)."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 553
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->voltages:[I

    return-object p0
.end method

.method public final voltagesExt([I)Lio/dronefleet/mavlink/common/BatteryStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Battery voltages for cells 11\n                to 14. Cells above the valid cell count for this battery should have a value of 0,\n                where zero indicates not supported (note, this is different than for the voltages\n                field and allows empty byte truncation). If the measured value is 0 then 1 should be\n                sent instead."
        extension = true
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 689
    iput-object p1, p0, Lio/dronefleet/mavlink/common/BatteryStatus$Builder;->voltagesExt:[I

    return-object p0
.end method
