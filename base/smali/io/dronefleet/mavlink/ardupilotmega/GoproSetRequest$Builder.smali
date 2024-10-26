.class public final Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
.super Ljava/lang/Object;
.source "GoproSetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest;
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

.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest;
    .locals 7

    .line 231
    new-instance v6, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->value:[B

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$1;)V

    return-object v6
.end method

.method public final cmdId(Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0

    .line 199
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 191
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final cmdId(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;"
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs cmdId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0

    .line 206
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 177
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->targetSystem:I

    return-object p0
.end method

.method public final value([B)Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Value."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 226
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproSetRequest$Builder;->value:[B

    return-object p0
.end method
