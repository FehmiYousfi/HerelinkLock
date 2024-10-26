.class public Lio/dronefleet/mavlink/MavlinkMessage;
.super Ljava/lang/Object;
.source "MavlinkMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

.field private final payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    .line 18
    iput-object p2, p0, Lio/dronefleet/mavlink/MavlinkMessage;->payload:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 62
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/MavlinkMessage;

    .line 64
    iget-object v2, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v2, v3}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 65
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/MavlinkMessage;->payload:Ljava/lang/Object;

    iget-object p1, p1, Lio/dronefleet/mavlink/MavlinkMessage;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getOriginComponentId()I
    .locals 1

    .line 39
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getComponentId()I

    move-result v0

    return v0
.end method

.method public getOriginSystemId()I
    .locals 1

    .line 32
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSystemId()I

    move-result v0

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getRawBytes()[B

    move-result-object v0

    .line 54
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 25
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSequence()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v2, p0, Lio/dronefleet/mavlink/MavlinkMessage;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MavlinkMessage{packet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/MavlinkMessage;->packet:Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/MavlinkMessage;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
