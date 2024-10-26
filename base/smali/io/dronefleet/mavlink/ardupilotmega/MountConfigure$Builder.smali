.class public final Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
.super Ljava/lang/Object;
.source "MountConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/MountConfigure;
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

.field private stabPitch:I

.field private stabRoll:I

.field private stabYaw:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/MountConfigure;
    .locals 9

    .line 300
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->mountMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->stabRoll:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->stabPitch:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->stabYaw:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure;-><init>(IILio/dronefleet/mavlink/util/EnumValue;IIILio/dronefleet/mavlink/ardupilotmega/MountConfigure$1;)V

    return-object v8
.end method

.method public final mountMode(Lio/dronefleet/mavlink/common/MavMountMode;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0

    .line 243
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMountMode;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mount operating mode."
        enumType = Lio/dronefleet/mavlink/common/MavMountMode;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 235
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->mountMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final mountMode(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;"
        }
    .end annotation

    .line 257
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mountMode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0

    .line 250
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->mountMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final stabPitch(I)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "(1 = yes, 0 = no)."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->stabPitch:I

    return-object p0
.end method

.method public final stabRoll(I)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "(1 = yes, 0 = no)."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 269
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->stabRoll:I

    return-object p0
.end method

.method public final stabYaw(I)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "(1 = yes, 0 = no)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 295
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->stabYaw:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 221
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 208
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MountConfigure$Builder;->targetSystem:I

    return-object p0
.end method
