.class public final Lio/dronefleet/mavlink/common/V2Extension$Builder;
.super Ljava/lang/Object;
.source "V2Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/V2Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private messageType:I

.field private payload:[B

.field private targetComponent:I

.field private targetNetwork:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/V2Extension;
    .locals 8

    .line 293
    new-instance v7, Lio/dronefleet/mavlink/common/V2Extension;

    iget v1, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->targetNetwork:I

    iget v2, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->targetSystem:I

    iget v3, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->targetComponent:I

    iget v4, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->messageType:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->payload:[B

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/V2Extension;-><init>(IIII[BLio/dronefleet/mavlink/common/V2Extension$1;)V

    return-object v7
.end method

.method public final messageType(I)Lio/dronefleet/mavlink/common/V2Extension$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A code that identifies the software component\n                that understands this message (analogous to USB device classes or mime type\n                strings). If this code is less than 32768, it is considered a \'registered\' protocol\n                extension and the corresponding entry should be added to\n                https://github.com/mavlink/mavlink/definition_files/extension_message_ids.xml.\n                Software creators can register blocks of message IDs as needed (useful for GCS\n                specific metadata, etc...). Message_types greater than 32767 are considered local\n                experiments and should not be checked in to any widely distributed codebase."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 261
    iput p1, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->messageType:I

    return-object p0
.end method

.method public final payload([B)Lio/dronefleet/mavlink/common/V2Extension$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xf9
        description = "Variable length payload. The length must be\n                encoded in the payload as part of the message_type protocol, e.g. by including the\n                length as payload data, or by terminating the payload data with a non-zero marker.\n                This is required in order to reconstruct zero-terminated payloads that are (or\n                otherwise would be) trimmed by MAVLink 2 empty-byte truncation. The entire content\n                of the payload block is opaque unless you understand the encoding message_type. The\n                particular encoding used can be extension specific and might not always be\n                documented as part of the MAVLink specification."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 288
    iput-object p1, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->payload:[B

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/V2Extension$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 235
    iput p1, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetNetwork(I)Lio/dronefleet/mavlink/common/V2Extension$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Network ID (0 for broadcast)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 209
    iput p1, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->targetNetwork:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/V2Extension$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 222
    iput p1, p0, Lio/dronefleet/mavlink/common/V2Extension$Builder;->targetSystem:I

    return-object p0
.end method
