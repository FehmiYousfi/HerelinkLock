.class public final Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
.super Ljava/lang/Object;
.source "MissionWritePartialList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MissionWritePartialList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private endIndex:I

.field private missionType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;"
        }
    .end annotation
.end field

.field private startIndex:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MissionWritePartialList;
    .locals 8

    .line 276
    new-instance v7, Lio/dronefleet/mavlink/common/MissionWritePartialList;

    iget v1, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->startIndex:I

    iget v4, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->endIndex:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/MissionWritePartialList;-><init>(IIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/MissionWritePartialList$1;)V

    return-object v7
.end method

.method public final endIndex(I)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "End index, equal or greater than start index."
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 235
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->endIndex:I

    return-object p0
.end method

.method public final missionType(Lio/dronefleet/mavlink/common/MavMissionType;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0

    .line 258
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMissionType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mission type."
        enumType = Lio/dronefleet/mavlink/common/MavMissionType;
        extension = true
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 250
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->missionType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final missionType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs missionType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0

    .line 265
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->missionType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final startIndex(I)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Start index. Must be smaller / equal to the\n                largest index of the current onboard list."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 221
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->startIndex:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 206
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 193
    iput p1, p0, Lio/dronefleet/mavlink/common/MissionWritePartialList$Builder;->targetSystem:I

    return-object p0
.end method
