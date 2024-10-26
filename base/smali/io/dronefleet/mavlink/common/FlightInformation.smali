.class public final Lio/dronefleet/mavlink/common/FlightInformation;
.super Ljava/lang/Object;
.source "FlightInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/FlightInformation$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x31
    description = "Information about flight since last arming."
    id = 0x108
.end annotation


# instance fields
.field private final armingTimeUtc:Ljava/math/BigInteger;

.field private final flightUuid:Ljava/math/BigInteger;

.field private final takeoffTimeUtc:Ljava/math/BigInteger;

.field private final timeBootMs:J


# direct methods
.method private constructor <init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    .line 34
    iput-object p3, p0, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    .line 35
    iput-object p4, p0, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    .line 36
    iput-object p5, p0, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/dronefleet/mavlink/common/FlightInformation$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/FlightInformation;-><init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/FlightInformation$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/FlightInformation$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/FlightInformation$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/FlightInformation;
    .locals 6

    .line 130
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v3

    .line 131
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v4

    .line 132
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v5

    .line 133
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 134
    new-instance p0, Lio/dronefleet/mavlink/common/FlightInformation;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/FlightInformation;-><init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/FlightInformation;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x1c

    .line 138
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 142
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final armingTimeUtc()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp at arming (time since\n                UNIX epoch) in UTC, 0 for unknown"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 70
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/FlightInformation;

    .line 104
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 105
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 106
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 107
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final flightUuid()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Universally unique identifier (UUID) of\n                flight, should correspond to name of log files"
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 96
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 115
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 116
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 117
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final takeoffTimeUtc()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp at takeoff (time\n                since UNIX epoch) in UTC, 0 for unknown"
        position = 0x3
        unitSize = 0x8
    .end annotation

    .line 83
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 57
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlightInformation{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", armingTimeUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->armingTimeUtc:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", takeoffTimeUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->takeoffTimeUtc:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flightUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FlightInformation;->flightUuid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
