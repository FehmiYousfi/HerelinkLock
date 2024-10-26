.class public final Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
.super Ljava/lang/Object;
.source "MissionRequestList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionRequestList;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MissionRequestList;
    .locals 5

    .line 196
    new-instance v0, Lio/dronefleet/mavlink/common/MissionRequestList;

    iget v1, p0, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/MissionRequestList;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/MissionRequestList$1;)V

    return-object v0
.end method

.method public final missionType(Lio/dronefleet/mavlink/common/MavMissionType;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
    .locals 0

    .line 178
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionRequestList$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission type."
        enumType = Lio/dronefleet/mavlink/common/MavMissionType;
        extension = true
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 170
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final missionType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionRequestList$Builder;"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs missionType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
    .locals 0

    .line 185
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 155
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/MissionRequestList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 142
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequestList$Builder;->targetSystem:I

    return-object p0
.end method
