.class public final Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
.super Ljava/lang/Object;
.source "RemoteLogDataBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[B

.field private seqno:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;
    .locals 7

    .line 233
    new-instance v6, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->data:[B

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock;-><init>(IILio/dronefleet/mavlink/util/EnumValue;[BLio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$1;)V

    return-object v6
.end method

.method public final data([B)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xc8
        description = "Log data block."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 228
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->data:[B

    return-object p0
.end method

.method public final seqno(Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0

    .line 201
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->seqno(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final seqno(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Log data\n                block sequence number."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 193
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->seqno:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final seqno(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;"
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->seqno(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs seqno([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0

    .line 208
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->seqno(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 178
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 165
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RemoteLogDataBlock$Builder;->targetSystem:I

    return-object p0
.end method
