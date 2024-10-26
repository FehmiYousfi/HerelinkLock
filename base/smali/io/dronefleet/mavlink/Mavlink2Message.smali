.class public Lio/dronefleet/mavlink/Mavlink2Message;
.super Lio/dronefleet/mavlink/MavlinkMessage;
.source "Mavlink2Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/dronefleet/mavlink/MavlinkMessage<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;


# direct methods
.method constructor <init>(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/protocol/MavlinkPacket;",
            "TT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/MavlinkMessage;-><init>(Lio/dronefleet/mavlink/protocol/MavlinkPacket;Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lio/dronefleet/mavlink/Mavlink2Message;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    return-void
.end method


# virtual methods
.method public getSignature()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lio/dronefleet/mavlink/Mavlink2Message;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureLinkId()I
    .locals 1

    .line 53
    iget-object v0, p0, Lio/dronefleet/mavlink/Mavlink2Message;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSignatureLinkId()I

    move-result v0

    return v0
.end method

.method public getSignatureTimestamp()J
    .locals 2

    .line 43
    iget-object v0, p0, Lio/dronefleet/mavlink/Mavlink2Message;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSignatureTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSigned()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lio/dronefleet/mavlink/Mavlink2Message;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->isSigned()Z

    move-result v0

    return v0
.end method

.method public validateSignature([B)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lio/dronefleet/mavlink/Mavlink2Message;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0, p1}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->validateSignature([B)Z

    move-result p1

    return p1
.end method
