.class public final Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
.super Ljava/lang/Object;
.source "GoproGetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cmdId:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest;
    .locals 5

    .line 193
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$1;)V

    return-object v0
.end method

.method public final cmdId(Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
    .locals 0

    .line 175
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 167
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final cmdId(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs cmdId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
    .locals 0

    .line 182
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 153
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 140
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetRequest$Builder;->targetSystem:I

    return-object p0
.end method
