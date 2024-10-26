.class public Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;
.super Ljava/lang/Object;
.source "MavlinkPacketReader.java"


# instance fields
.field private final in:Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;

    invoke-direct {v0, p1}, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->in:Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->in:Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->drop()V

    return-void
.end method

.method public next()Lio/dronefleet/mavlink/protocol/MavlinkPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :goto_0
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->in:Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->in:Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->frame()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_0

    .line 45
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;->in:Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->drop()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->fromV1Bytes([B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    invoke-static {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->fromV2Bytes([B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-result-object v0

    return-object v0

    .line 47
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
