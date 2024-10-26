.class public final Lio/dronefleet/mavlink/common/MissionAck$Builder;
.super Ljava/lang/Object;
.source "MissionAck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private missionType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MissionAck;
    .locals 7

    .line 256
    new-instance v6, Lio/dronefleet/mavlink/common/MissionAck;

    iget v1, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/MissionAck;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/MissionAck$1;)V

    return-object v6
.end method

.method public final missionType(Lio/dronefleet/mavlink/common/MavMissionType;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0

    .line 238
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionAck$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionAck$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission type."
        enumType = Lio/dronefleet/mavlink/common/MavMissionType;
        extension = true
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 230
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final missionType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionAck$Builder;"
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionAck$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs missionType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0

    .line 245
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionAck$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 180
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 167
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->targetSystem:I

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/MavMissionResult;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0

    .line 202
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionAck$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionResult;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionAck$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission result."
        enumType = Lio/dronefleet/mavlink/common/MavMissionResult;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 194
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionAck$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionAck$Builder;"
        }
    .end annotation

    .line 216
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionAck$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionAck$Builder;
    .locals 0

    .line 209
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionAck$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionAck$Builder;

    move-result-object p1

    return-object p1
.end method
