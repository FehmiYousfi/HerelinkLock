.class public final Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdMessagePack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private idOrMac:[B

.field private messages:[B

.field private msgPackSize:I

.field private singleMessageSize:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack;
    .locals 9

    .line 309
    new-instance v8, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->idOrMac:[B

    iget v4, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->singleMessageSize:I

    iget v5, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->msgPackSize:I

    iget-object v6, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->messages:[B

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack;-><init>(II[BII[BLio/dronefleet/mavlink/common/OpenDroneIdMessagePack$1;)V

    return-object v8
.end method

.method public final idOrMac([B)Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 258
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->idOrMac:[B

    return-object p0
.end method

.method public final messages([B)Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xe1
        description = "Concatenation of encoded OpenDroneID\n                messages. Shall be filled with nulls in the unused portion of the field."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 304
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->messages:[B

    return-object p0
.end method

.method public final msgPackSize(I)Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of encoded messages in the pack (not\n                the number of bytes). Allowed range is 1 - 9."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 288
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->msgPackSize:I

    return-object p0
.end method

.method public final singleMessageSize(I)Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This field must currently\n                always be equal to 25 (bytes), since all encoded OpenDroneID messages are specificed\n                to have this length."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 274
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->singleMessageSize:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdMessagePack$Builder;->targetSystem:I

    return-object p0
.end method
