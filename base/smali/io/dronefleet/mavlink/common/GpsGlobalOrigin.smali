.class public final Lio/dronefleet/mavlink/common/GpsGlobalOrigin;
.super Ljava/lang/Object;
.source "GpsGlobalOrigin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x27
    description = "Publishes the GPS co-ordinates of the vehicle local origin (0,0,0)\n                position. Emitted whenever a new GPS-Local position mapping is requested or set -\n                e.g. following SET_GPS_GLOBAL_ORIGIN message."
    id = 0x31
.end annotation


# instance fields
.field private final altitude:I

.field private final latitude:I

.field private final longitude:I

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(IIILjava/math/BigInteger;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    .line 37
    iput p2, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    .line 38
    iput p3, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    .line 39
    iput-object p4, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/math/BigInteger;Lio/dronefleet/mavlink/common/GpsGlobalOrigin$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;-><init>(IIILjava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 47
    new-instance v0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GpsGlobalOrigin$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GpsGlobalOrigin;
    .locals 4

    .line 136
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 137
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 138
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 139
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object p0

    .line 140
    new-instance v3, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;-><init>(IIILjava/math/BigInteger;)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GpsGlobalOrigin;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    .line 144
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 146
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    iget-object p0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final altitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 86
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;

    .line 110
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 111
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 112
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 113
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

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

.method public hashCode()I
    .locals 2

    .line 120
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 121
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 122
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 123
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final latitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 60
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    return v0
.end method

.method public final longitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 73
    iget v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        extension = true
        position = 0x5
        unitSize = 0x8
    .end annotation

    .line 102
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsGlobalOrigin{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
