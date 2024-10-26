.class public final Lio/dronefleet/mavlink/common/SysStatus$Builder;
.super Ljava/lang/Object;
.source "SysStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SysStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batteryRemaining:I

.field private currentBattery:I

.field private dropRateComm:I

.field private errorsComm:I

.field private errorsCount1:I

.field private errorsCount2:I

.field private errorsCount3:I

.field private errorsCount4:I

.field private load:I

.field private onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation
.end field

.field private onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation
.end field

.field private onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;"
        }
    .end annotation
.end field

.field private voltageBattery:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final batteryRemaining(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery energy remaining, -1:\n                Battery remaining energy not sent by autopilot"
        position = 0x7
        signed = true
        unitSize = 0x1
    .end annotation

    .line 578
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->batteryRemaining:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SysStatus;
    .locals 17

    move-object/from16 v0, p0

    .line 666
    new-instance v16, Lio/dronefleet/mavlink/common/SysStatus;

    iget-object v2, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->load:I

    iget v6, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->voltageBattery:I

    iget v7, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->currentBattery:I

    iget v8, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->batteryRemaining:I

    iget v9, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->dropRateComm:I

    iget v10, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsComm:I

    iget v11, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount1:I

    iget v12, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount2:I

    iget v13, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount3:I

    iget v14, v0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount4:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/common/SysStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIILio/dronefleet/mavlink/common/SysStatus$1;)V

    return-object v16
.end method

.method public final currentBattery(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery current, -1: Current not\n                sent by autopilot"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 563
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->currentBattery:I

    return-object p0
.end method

.method public final dropRateComm(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Communication drop rate, (UART,\n                I2C, SPI, CAN), dropped packets on all links (packets that were corrupted on\n                reception on the MAV)"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 594
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->dropRateComm:I

    return-object p0
.end method

.method public final errorsComm(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Communication errors (UART, I2C, SPI, CAN),\n                dropped packets on all links (packets that were corrupted on reception on the MAV)"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 609
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsComm:I

    return-object p0
.end method

.method public final errorsCount1(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 622
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount1:I

    return-object p0
.end method

.method public final errorsCount2(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 635
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount2:I

    return-object p0
.end method

.method public final errorsCount3(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 648
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount3:I

    return-object p0
.end method

.method public final errorsCount4(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot-specific errors"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 661
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->errorsCount4:I

    return-object p0
.end method

.method public final load(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum usage in percent of the mainloop\n                time. Values: [0-1000] - should always be below 1000"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 534
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->load:I

    return-object p0
.end method

.method public final onboardControlSensorsEnabled(Lio/dronefleet/mavlink/common/MavSysStatusSensor;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0

    .line 463
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final onboardControlSensorsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SysStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap showing\n                which onboard controllers and sensors are enabled: Value of 0: not enabled. Value of\n                1: enabled."
        enumType = Lio/dronefleet/mavlink/common/MavSysStatusSensor;
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 454
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final onboardControlSensorsEnabled(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SysStatus$Builder;"
        }
    .end annotation

    .line 479
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs onboardControlSensorsEnabled([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0

    .line 471
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final onboardControlSensorsHealth(Lio/dronefleet/mavlink/common/MavSysStatusSensor;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0

    .line 505
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsHealth(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final onboardControlSensorsHealth(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SysStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap showing\n                which onboard controllers and sensors have an error (or are operational). Value of\n                0: error. Value of 1: healthy."
        enumType = Lio/dronefleet/mavlink/common/MavSysStatusSensor;
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 496
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsHealth:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final onboardControlSensorsHealth(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SysStatus$Builder;"
        }
    .end annotation

    .line 521
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsHealth(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs onboardControlSensorsHealth([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0

    .line 513
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsHealth(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final onboardControlSensorsPresent(Lio/dronefleet/mavlink/common/MavSysStatusSensor;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0

    .line 421
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsPresent(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final onboardControlSensorsPresent(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSysStatusSensor;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SysStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap showing\n                which onboard controllers and sensors are present. Value of 0: not present. Value of\n                1: present."
        enumType = Lio/dronefleet/mavlink/common/MavSysStatusSensor;
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 412
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsPresent:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final onboardControlSensorsPresent(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SysStatus$Builder;"
        }
    .end annotation

    .line 437
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsPresent(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs onboardControlSensorsPresent([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0

    .line 429
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SysStatus$Builder;->onboardControlSensorsPresent(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SysStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final voltageBattery(I)Lio/dronefleet/mavlink/common/SysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery voltage, UINT16_MAX:\n                Voltage not sent by autopilot"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 548
    iput p1, p0, Lio/dronefleet/mavlink/common/SysStatus$Builder;->voltageBattery:I

    return-object p0
.end method
