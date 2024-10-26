.class public final Lio/dronefleet/mavlink/common/Tunnel$Builder;
.super Ljava/lang/Object;
.source "Tunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Tunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private payload:[B

.field private payloadLength:I

.field private payloadType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavTunnelPayloadType;",
            ">;"
        }
    .end annotation
.end field

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
.method public final build()Lio/dronefleet/mavlink/common/Tunnel;
    .locals 8

    .line 312
    new-instance v7, Lio/dronefleet/mavlink/common/Tunnel;

    iget v1, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadLength:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payload:[B

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/Tunnel;-><init>(IILio/dronefleet/mavlink/util/EnumValue;I[BLio/dronefleet/mavlink/common/Tunnel$1;)V

    return-object v7
.end method

.method public final payload([B)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Variable length payload. The payload length is\n                defined by payload_length. The entire content of this block is opaque unless you\n                understand the encoding specified by payload_type."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 307
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payload:[B

    return-object p0
.end method

.method public final payloadLength(I)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Length of the data transported in payload"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadLength:I

    return-object p0
.end method

.method public final payloadType(Lio/dronefleet/mavlink/common/MavTunnelPayloadType;)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0

    .line 256
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Tunnel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final payloadType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavTunnelPayloadType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Tunnel$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A code that\n                identifies the content of the payload (0 for unknown, which is the default). If this\n                code is less than 32768, it is a \'registered\' payload type and the corresponding\n                code should be added to the MAV_TUNNEL_PAYLOAD_TYPE enum. Software creators can\n                register blocks of types as needed. Codes greater than 32767 are considered local\n                experiments and should not be checked in to any widely distributed codebase."
        enumType = Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 244
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final payloadType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Tunnel$Builder;"
        }
    .end annotation

    .line 278
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Tunnel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs payloadType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0

    .line 267
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Tunnel$Builder;->payloadType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Tunnel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (can be 0 for broadcast, but\n                this is discouraged)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 221
    iput p1, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/Tunnel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (can be 0 for broadcast, but this\n                is discouraged)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 207
    iput p1, p0, Lio/dronefleet/mavlink/common/Tunnel$Builder;->targetSystem:I

    return-object p0
.end method
