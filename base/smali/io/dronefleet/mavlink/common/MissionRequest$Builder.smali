.class public final Lio/dronefleet/mavlink/common/MissionRequest$Builder;
.super Ljava/lang/Object;
.source "MissionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionRequest;
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

.field private seq:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MissionRequest;
    .locals 7

    .line 239
    new-instance v6, Lio/dronefleet/mavlink/common/MissionRequest;

    iget v1, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->seq:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/MissionRequest;-><init>(IIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/MissionRequest$1;)V

    return-object v6
.end method

.method public final missionType(Lio/dronefleet/mavlink/common/MavMissionType;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0

    .line 221
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission type."
        enumType = Lio/dronefleet/mavlink/common/MavMissionType;
        extension = true
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 213
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final missionType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionRequest$Builder;"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs missionType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0

    .line 228
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final seq(I)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 198
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->seq:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 185
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/MissionRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 172
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequest$Builder;->targetSystem:I

    return-object p0
.end method
