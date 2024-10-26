.class public final Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;
.super Ljava/lang/Object;
.source "FileTransferProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/FileTransferProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private payload:[B

.field private targetComponent:I

.field private targetNetwork:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/FileTransferProtocol;
    .locals 7

    .line 219
    new-instance v6, Lio/dronefleet/mavlink/common/FileTransferProtocol;

    iget v1, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->targetNetwork:I

    iget v2, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->targetSystem:I

    iget v3, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->targetComponent:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->payload:[B

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/FileTransferProtocol;-><init>(III[BLio/dronefleet/mavlink/common/FileTransferProtocol$1;)V

    return-object v6
.end method

.method public final payload([B)Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xfb
        description = "Variable length payload. The length is defined\n                by the remaining message length when subtracting the header and other fields. The\n                entire content of this block is opaque unless you understand any the encoding\n                message_type. The particular encoding used can be extension specific and might not\n                always be documented as part of the mavlink specification."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 214
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->payload:[B

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 193
    iput p1, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetNetwork(I)Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Network ID (0 for broadcast)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 167
    iput p1, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->targetNetwork:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 180
    iput p1, p0, Lio/dronefleet/mavlink/common/FileTransferProtocol$Builder;->targetSystem:I

    return-object p0
.end method
