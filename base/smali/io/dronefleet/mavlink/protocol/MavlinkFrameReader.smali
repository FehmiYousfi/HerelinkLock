.class public Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;
.super Ljava/lang/Object;
.source "MavlinkFrameReader.java"


# instance fields
.field private final in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    const/16 v1, 0x118

    invoke-direct {v0, p1, v1}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    return-void
.end method


# virtual methods
.method public drop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->rollback()V

    .line 79
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->skip(J)J

    .line 80
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->commit()V

    return-void
.end method

.method public frame()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public next()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->commit()V

    .line 46
    :goto_0
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 47
    iget-object v3, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v3}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->read()I

    move-result v3

    if-ne v3, v2, :cond_0

    return v1

    :cond_0
    const/16 v4, 0xfd

    if-eq v0, v4, :cond_2

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->drop()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v0, v3}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->advance(I)Z

    move-result v0

    return v0

    .line 54
    :cond_2
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->read()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lio/dronefleet/mavlink/protocol/MavlinkFrameReader;->in:Lio/dronefleet/mavlink/protocol/TransactionalInputStream;

    add-int/lit8 v3, v3, 0x9

    and-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v3, v0

    .line 55
    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->advance(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method
