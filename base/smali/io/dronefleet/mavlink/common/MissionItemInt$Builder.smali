.class public final Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
.super Ljava/lang/Object;
.source "MissionItemInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionItemInt;
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

.field private missionType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;"
        }
    .end annotation
.end field

.field private param1:F

.field private param2:F

.field private param3:F

.field private param4:F

.field private seq:I

.field private targetComponent:I

.field private targetSystem:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autocontinue(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autocontinue to next waypoint"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 556
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->autocontinue:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/MissionItemInt;
    .locals 20

    move-object/from16 v0, p0

    .line 693
    new-instance v18, Lio/dronefleet/mavlink/common/MissionItemInt;

    move-object/from16 v1, v18

    iget v2, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->targetSystem:I

    iget v3, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->targetComponent:I

    iget v4, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->seq:I

    iget-object v5, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget v7, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->current:I

    iget v8, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->autocontinue:I

    iget v9, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param1:F

    iget v10, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param2:F

    iget v11, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param3:F

    iget v12, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param4:F

    iget v13, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->x:I

    iget v14, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->y:I

    iget v15, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->z:F

    move-object/from16 v19, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/common/MissionItemInt;-><init>(IIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/MissionItemInt$1;)V

    return-object v18
.end method

.method public final command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0

    .line 517
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionItemInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The scheduled action for the\n                waypoint."
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 509
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final command(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionItemInt$Builder;"
        }
    .end annotation

    .line 531
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs command([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0

    .line 524
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->command(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final current(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "false:0, true:1"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 543
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->current:I

    return-object p0
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0

    .line 481
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionItemInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The coordinate system of the\n                waypoint."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 473
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionItemInt$Builder;"
        }
    .end annotation

    .line 495
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0

    .line 488
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/common/MavMissionType;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0

    .line 675
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionItemInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission type."
        enumType = Lio/dronefleet/mavlink/common/MavMissionType;
        extension = true
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 667
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final missionType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionItemInt$Builder;"
        }
    .end annotation

    .line 689
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs missionType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0

    .line 682
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final param1(F)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM1, see MAV_CMD enum"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 569
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param1:F

    return-object p0
.end method

.method public final param2(F)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM2, see MAV_CMD enum"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 582
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param2:F

    return-object p0
.end method

.method public final param3(F)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM3, see MAV_CMD enum"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 595
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param3:F

    return-object p0
.end method

.method public final param4(F)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM4, see MAV_CMD enum"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 608
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->param4:F

    return-object p0
.end method

.method public final seq(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Waypoint ID (sequence number). Starts at zero.\n                Increases monotonically for each waypoint, no gaps in the sequence (0,1,2,3,4)."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 458
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->seq:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 443
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 430
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->targetSystem:I

    return-object p0
.end method

.method public final x(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM5 / local: x position in meters * 1e4, global:\n                latitude in degrees * 10^7"
        position = 0xc
        signed = true
        unitSize = 0x4
    .end annotation

    .line 623
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->x:I

    return-object p0
.end method

.method public final y(I)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM6 / y position: local: x position in meters * 1e4,\n                global: longitude in degrees *10^7"
        position = 0xd
        signed = true
        unitSize = 0x4
    .end annotation

    .line 638
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->y:I

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/MissionItemInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM7 / z position: global: altitude in meters (relative\n                or absolute, depending on frame."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 652
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionItemInt$Builder;->z:F

    return-object p0
.end method
