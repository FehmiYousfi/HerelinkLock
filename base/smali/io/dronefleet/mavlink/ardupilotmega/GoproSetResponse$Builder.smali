.class public final Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
.super Ljava/lang/Object;
.source "GoproSetResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse;
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

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse;
    .locals 4

    .line 181
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$1;)V

    return-object v0
.end method

.method public final cmdId(Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0

    .line 128
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 120
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final cmdId(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs cmdId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0

    .line 135
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0

    .line 163
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 155
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;
    .locals 0

    .line 170
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetResponse$Builder;

    move-result-object p1

    return-object p1
.end method
