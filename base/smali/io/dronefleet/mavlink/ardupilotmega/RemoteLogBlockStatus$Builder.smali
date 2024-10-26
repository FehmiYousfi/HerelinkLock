.class public final Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
.super Ljava/lang/Object;
.source "RemoteLogBlockStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private seqno:J

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus;
    .locals 8

    .line 231
    new-instance v7, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->targetComponent:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->seqno:J

    iget-object v5, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$1;)V

    return-object v7
.end method

.method public final seqno(J)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log data block sequence number."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 190
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->seqno:J

    return-object p0
.end method

.method public final status(Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0

    .line 213
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log data\n                block status."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 205
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;"
        }
    .end annotation

    .line 227
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0

    .line 220
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 177
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogBlockStatus$Builder;->targetSystem:I

    return-object p0
.end method
