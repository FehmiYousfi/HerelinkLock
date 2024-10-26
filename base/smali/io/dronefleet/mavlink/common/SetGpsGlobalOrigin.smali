.class public final Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;
.super Ljava/lang/Object;
.source "SetGpsGlobalOrigin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x29
    description = "Sets the GPS co-ordinates of the vehicle local origin (0,0,0) position.\n                Vehicle should emit GPS_GLOBAL_ORIGIN irrespective of whether the origin is changed.\n                This enables transform between the local coordinate frame and the global (GPS)\n                coordinate frame, which may be necessary when (for example) indoor and outdoor\n                settings are connected and the MAV should move from in- to outdoor."
    id = 0x30
.end annotation


# instance fields
.field private final altitude:I

.field private final latitude:I

.field private final longitude:I

.field private final targetSystem:I

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    .line 44
    iput p2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    .line 45
    iput p3, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    .line 46
    iput p4, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    .line 47
    iput-object p5, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(IIIILjava/math/BigInteger;Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;-><init>(IIIILjava/math/BigInteger;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 55
    new-instance v0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;
    .locals 6

    .line 159
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 160
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 161
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 162
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 163
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v5

    .line 164
    new-instance p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;-><init>(IIIILjava/math/BigInteger;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x15

    .line 168
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 171
    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    iget-object p0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

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
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;

    .line 130
    iget v2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 131
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 132
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 133
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 134
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 142
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 144
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final latitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    return v0
.end method

.method public final longitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 67
    iget v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        extension = true
        position = 0x6
        unitSize = 0x8
    .end annotation

    .line 122
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGpsGlobalOrigin{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->longitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SetGpsGlobalOrigin;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
