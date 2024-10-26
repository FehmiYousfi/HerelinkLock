.class public final Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
.super Ljava/lang/Object;
.source "CommandIntStamped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/CommandIntStamped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private autocontinue:I

.field private command:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;"
        }
    .end annotation
.end field

.field private current:I

.field private frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private param1:F

.field private param2:F

.field private param3:F

.field private param4:F

.field private targetComponent:I

.field private targetSystem:I

.field private utcTime:J

.field private vehicleTimestamp:Ljava/math/BigInteger;

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autocontinue(I)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "autocontinue to next wp"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 560
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->autocontinue:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/asluav/CommandIntStamped;
    .locals 21

    move-object/from16 v0, p0

    .line 662
    new-instance v19, Lio/dronefleet/mavlink/asluav/CommandIntStamped;

    move-object/from16 v1, v19

    iget-wide v2, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->utcTime:J

    iget-object v4, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->vehicleTimestamp:Ljava/math/BigInteger;

    iget v5, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->targetSystem:I

    iget v6, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->targetComponent:I

    iget-object v7, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v8, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget v9, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->current:I

    iget v10, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->autocontinue:I

    iget v11, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param1:F

    iget v12, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param2:F

    iget v13, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param3:F

    iget v14, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param4:F

    iget v15, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->x:I

    move-object/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->y:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->z:F

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/asluav/CommandIntStamped;-><init>(JLjava/math/BigInteger;IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIFLio/dronefleet/mavlink/asluav/CommandIntStamped$1;)V

    return-object v19
.end method

.method public final command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0

    .line 521
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The scheduled action for the\n                mission item, as defined by MAV_CMD enum"
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 513
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final command(Ljava/util/Collection;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;"
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs command([Ljava/lang/Enum;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0

    .line 528
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final current(I)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "false:0, true:1"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 547
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->current:I

    return-object p0
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0

    .line 485
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The coordinate system of the\n                COMMAND, as defined by MAV_FRAME enum"
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 477
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;"
        }
    .end annotation

    .line 499
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0

    .line 492
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final param1(F)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM1, see MAV_CMD enum"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 573
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param1:F

    return-object p0
.end method

.method public final param2(F)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM2, see MAV_CMD enum"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 586
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param2:F

    return-object p0
.end method

.method public final param3(F)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM3, see MAV_CMD enum"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 599
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param3:F

    return-object p0
.end method

.method public final param4(F)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM4, see MAV_CMD enum"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 612
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->param4:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 462
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 449
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->targetSystem:I

    return-object p0
.end method

.method public final utcTime(J)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UTC time, seconds elapsed since 01.01.1970"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 422
    iput-wide p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->utcTime:J

    return-object p0
.end method

.method public final vehicleTimestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Microseconds elapsed since vehicle\n                boot"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 436
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->vehicleTimestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(I)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM5 / local: x position in meters * 1e4, global:\n                latitude in degrees * 10^7"
        position = 0xd
        signed = true
        unitSize = 0x4
    .end annotation

    .line 627
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->x:I

    return-object p0
.end method

.method public final y(I)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM6 / local: y position in meters * 1e4, global:\n                longitude in degrees * 10^7"
        position = 0xe
        signed = true
        unitSize = 0x4
    .end annotation

    .line 642
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->y:I

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM7 / z position: global: altitude in meters (MSL,\n                WGS84, AGL or relative to home - depending on frame)."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 657
    iput p1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;->z:F

    return-object p0
.end method
