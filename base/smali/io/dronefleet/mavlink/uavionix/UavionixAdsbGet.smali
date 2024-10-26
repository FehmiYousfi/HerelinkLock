.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;
.super Ljava/lang/Object;
.source "UavionixAdsbGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc1
    description = "Request messages."
    id = 0x2716
.end annotation


# instance fields
.field private final reqmessageid:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    return-void
.end method

.method synthetic constructor <init>(JLio/dronefleet/mavlink/uavionix/UavionixAdsbGet$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;-><init>(J)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;
    .locals 2

    .line 71
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 72
    new-instance p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;

    invoke-direct {p0, v0, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;-><init>(J)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x4

    .line 76
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

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

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;

    .line 54
    iget-wide v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    return v1
.end method

.method public final reqmessageid()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Message ID to request. Supports any message\n                in this 10000-10099 range"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 46
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavionixAdsbGet{reqmessageid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbGet;->reqmessageid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
