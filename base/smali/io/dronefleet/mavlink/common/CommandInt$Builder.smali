.class public final Lio/dronefleet/mavlink/common/CommandInt$Builder;
.super Ljava/lang/Object;
.source "CommandInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CommandInt;
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

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autocontinue(I)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Not used (set 0)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->autocontinue:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/CommandInt;
    .locals 17

    move-object/from16 v0, p0

    .line 586
    new-instance v16, Lio/dronefleet/mavlink/common/CommandInt;

    iget v2, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->targetSystem:I

    iget v3, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->targetComponent:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->current:I

    iget v7, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->autocontinue:I

    iget v8, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param1:F

    iget v9, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param2:F

    iget v10, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param3:F

    iget v11, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param4:F

    iget v12, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->x:I

    iget v13, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->y:I

    iget v14, v0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->z:F

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/common/CommandInt;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIFLio/dronefleet/mavlink/common/CommandInt$1;)V

    return-object v16
.end method

.method public final command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0

    .line 446
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandInt$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The scheduled action for the\n                mission item."
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 438
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final command(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandInt$Builder;"
        }
    .end annotation

    .line 460
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandInt$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs command([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0

    .line 453
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandInt$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final current(I)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Not used."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 472
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->current:I

    return-object p0
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0

    .line 410
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandInt$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The coordinate system of the\n                COMMAND."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 402
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CommandInt$Builder;"
        }
    .end annotation

    .line 424
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandInt$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0

    .line 417
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CommandInt$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CommandInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final param1(F)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM1, see MAV_CMD enum"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 498
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param1:F

    return-object p0
.end method

.method public final param2(F)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM2, see MAV_CMD enum"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 511
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param2:F

    return-object p0
.end method

.method public final param3(F)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM3, see MAV_CMD enum"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 524
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param3:F

    return-object p0
.end method

.method public final param4(F)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM4, see MAV_CMD enum"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 537
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->param4:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 374
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->targetSystem:I

    return-object p0
.end method

.method public final x(I)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM5 / local: x position in meters * 1e4, global:\n                latitude in degrees * 10^7"
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 552
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->x:I

    return-object p0
.end method

.method public final y(I)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM6 / local: y position in meters * 1e4, global:\n                longitude in degrees * 10^7"
        position = 0xc
        signed = true
        unitSize = 0x4
    .end annotation

    .line 567
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->y:I

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/CommandInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM7 / z position: global: altitude in meters (relative\n                or absolute, depending on frame)."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 581
    iput p1, p0, Lio/dronefleet/mavlink/common/CommandInt$Builder;->z:F

    return-object p0
.end method
