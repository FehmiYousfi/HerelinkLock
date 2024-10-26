.class public final Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
.super Ljava/lang/Object;
.source "CommandLongStamped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/CommandLongStamped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private command:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;"
        }
    .end annotation
.end field

.field private confirmation:I

.field private param1:F

.field private param2:F

.field private param3:F

.field private param4:F

.field private param5:F

.field private param6:F

.field private param7:F

.field private targetComponent:I

.field private targetSystem:I

.field private utcTime:J

.field private vehicleTimestamp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/CommandLongStamped;
    .locals 18

    move-object/from16 v0, p0

    .line 558
    new-instance v17, Lio/dronefleet/mavlink/asluav/CommandLongStamped;

    iget-wide v2, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->utcTime:J

    iget-object v4, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->vehicleTimestamp:Ljava/math/BigInteger;

    iget v5, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->targetSystem:I

    iget v6, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->targetComponent:I

    iget-object v7, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget v8, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->confirmation:I

    iget v9, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param1:F

    iget v10, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param2:F

    iget v11, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param3:F

    iget v12, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param4:F

    iget v13, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param5:F

    iget v14, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param6:F

    iget v15, v0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param7:F

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/asluav/CommandLongStamped;-><init>(JLjava/math/BigInteger;IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFLio/dronefleet/mavlink/asluav/CommandLongStamped$1;)V

    return-object v17
.end method

.method public final command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0

    .line 434
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID, as defined by MAV_CMD\n                enum."
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 426
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final command(Ljava/util/Collection;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;"
        }
    .end annotation

    .line 448
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs command([Ljava/lang/Enum;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0

    .line 441
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final confirmation(I)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0: First transmission of this command. 1-255:\n                Confirmation transmissions (e.g. for kill command)"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 462
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->confirmation:I

    return-object p0
.end method

.method public final param1(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 1, as defined by MAV_CMD enum."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 475
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param1:F

    return-object p0
.end method

.method public final param2(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 2, as defined by MAV_CMD enum."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 488
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param2:F

    return-object p0
.end method

.method public final param3(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 3, as defined by MAV_CMD enum."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 501
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param3:F

    return-object p0
.end method

.method public final param4(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 4, as defined by MAV_CMD enum."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 514
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param4:F

    return-object p0
.end method

.method public final param5(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 5, as defined by MAV_CMD enum."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 527
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param5:F

    return-object p0
.end method

.method public final param6(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 6, as defined by MAV_CMD enum."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 540
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param6:F

    return-object p0
.end method

.method public final param7(F)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 7, as defined by MAV_CMD enum."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 553
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->param7:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component which should execute the\n                command, 0 for all components"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 411
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System which should execute the command"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 397
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->targetSystem:I

    return-object p0
.end method

.method public final utcTime(J)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UTC time, seconds elapsed since 01.01.1970"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 370
    iput-wide p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->utcTime:J

    return-object p0
.end method

.method public final vehicleTimestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Microseconds elapsed since vehicle\n                boot"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 384
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/CommandLongStamped$Builder;->vehicleTimestamp:Ljava/math/BigInteger;

    return-object p0
.end method
