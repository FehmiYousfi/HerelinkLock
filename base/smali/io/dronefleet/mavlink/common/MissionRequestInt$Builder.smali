.class public final Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
.super Ljava/lang/Object;
.source "MissionRequestInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionRequestInt;
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

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MissionRequestInt;
    .locals 7

    .line 235
    new-instance v6, Lio/dronefleet/mavlink/common/MissionRequestInt;

    iget v1, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->seq:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/MissionRequestInt;-><init>(IIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/MissionRequestInt$1;)V

    return-object v6
.end method

.method public final missionType(Lio/dronefleet/mavlink/common/MavMissionType;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0

    .line 217
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission type."
        enumType = Lio/dronefleet/mavlink/common/MavMissionType;
        extension = true
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 209
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final missionType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;"
        }
    .end annotation

    .line 231
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs missionType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0

    .line 224
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final seq(I)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 194
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->seq:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 181
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 168
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionRequestInt$Builder;->targetSystem:I

    return-object p0
.end method
