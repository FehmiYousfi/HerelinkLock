.class public final Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
.super Ljava/lang/Object;
.source "MountStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/MountStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mountMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMountMode;",
            ">;"
        }
    .end annotation
.end field

.field private pointingA:I

.field private pointingB:I

.field private pointingC:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/MountStatus;
    .locals 9

    .line 309
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/MountStatus;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->pointingA:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->pointingB:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->pointingC:I

    iget-object v6, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->mountMode:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/MountStatus;-><init>(IIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/MountStatus$1;)V

    return-object v8
.end method

.method public final mountMode(Lio/dronefleet/mavlink/common/MavMountMode;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0

    .line 291
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMountMode;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mount operating mode."
        enumType = Lio/dronefleet/mavlink/common/MavMountMode;
        extension = true
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 283
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->mountMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final mountMode(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;"
        }
    .end annotation

    .line 305
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mountMode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0

    .line 298
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final pointingA(I)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 240
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->pointingA:I

    return-object p0
.end method

.method public final pointingB(I)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->pointingB:I

    return-object p0
.end method

.method public final pointingC(I)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->pointingC:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 226
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 213
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountStatus$Builder;->targetSystem:I

    return-object p0
.end method
