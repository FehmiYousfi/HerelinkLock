.class public final Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
.super Ljava/lang/Object;
.source "GoproGetResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;
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

.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;
    .locals 5

    .line 219
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->value:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$1;)V

    return-object v0
.end method

.method public final cmdId(Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0

    .line 152
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Command ID."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproCommand;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 144
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->cmdId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final cmdId(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs cmdId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0

    .line 159
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->cmdId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0

    .line 187
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 179
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;"
        }
    .end annotation

    .line 201
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0

    .line 194
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final value([B)Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Value."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 214
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproGetResponse$Builder;->value:[B

    return-object p0
.end method
