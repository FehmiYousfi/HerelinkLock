.class public final Lio/dronefleet/mavlink/common/Timesync;
.super Ljava/lang/Object;
.source "Timesync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/Timesync$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x22
    description = "Time synchronization message."
    id = 0x6f
.end annotation


# instance fields
.field private final tc1:J

.field private final ts1:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    .line 28
    iput-wide p3, p0, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    return-void
.end method

.method synthetic constructor <init>(JJLio/dronefleet/mavlink/common/Timesync$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/Timesync;-><init>(JJ)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/Timesync$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/common/Timesync$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/Timesync$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/Timesync;
    .locals 4

    .line 90
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 91
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 92
    new-instance p0, Lio/dronefleet/mavlink/common/Timesync;

    invoke-direct {p0, v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/Timesync;-><init>(JJ)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/Timesync;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x10

    .line 96
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt64(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt64(J)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/Timesync;

    .line 70
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 71
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 78
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 79
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final tc1()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time sync timestamp 1"
        position = 0x1
        signed = true
        unitSize = 0x8
    .end annotation

    .line 49
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timesync{tc1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Timesync;->tc1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ts1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ts1()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time sync timestamp 2"
        position = 0x2
        signed = true
        unitSize = 0x8
    .end annotation

    .line 62
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/Timesync;->ts1:J

    return-wide v0
.end method
