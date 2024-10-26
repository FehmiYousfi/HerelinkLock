.class public final Lio/dronefleet/mavlink/common/CameraTrigger;
.super Ljava/lang/Object;
.source "CameraTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/CameraTrigger$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xae
    description = "Camera-IMU triggering and synchronisation message."
    id = 0x70
.end annotation


# instance fields
.field private final seq:J

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;J)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    .line 29
    iput-wide p2, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/common/CameraTrigger$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/common/CameraTrigger;-><init>(Ljava/math/BigInteger;J)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/CameraTrigger$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 37
    new-instance v0, Lio/dronefleet/mavlink/common/CameraTrigger$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CameraTrigger$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/CameraTrigger;
    .locals 3

    .line 93
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 95
    new-instance p0, Lio/dronefleet/mavlink/common/CameraTrigger;

    invoke-direct {p0, v0, v1, v2}, Lio/dronefleet/mavlink/common/CameraTrigger;-><init>(Ljava/math/BigInteger;J)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/CameraTrigger;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xc

    .line 99
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

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

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/CameraTrigger;

    .line 73
    iget-object v2, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 74
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

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

    .line 81
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 82
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final seq()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image frame sequence"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 65
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

    return-wide v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp for image frame (UNIX Epoch\n                time or time since system boot). The receiving end can infer timestamp format (since\n                1.1.1970 or since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 53
    iget-object v0, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraTrigger{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraTrigger;->seq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
