.class public final Lio/dronefleet/mavlink/asluav/SensAtmos;
.super Ljava/lang/Object;
.source "SensAtmos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x90
    description = "Atmospheric sensors (temperature, humidity, ...)"
    id = 0xd0
.end annotation


# instance fields
.field private final humidity:F

.field private final tempambient:F

.field private final timestamp:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FF)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    .line 31
    iput p2, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    .line 32
    iput p3, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFLio/dronefleet/mavlink/asluav/SensAtmos$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/asluav/SensAtmos;-><init>(Ljava/math/BigInteger;FF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/SensAtmos$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/SensAtmos;
    .locals 3

    .line 107
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 109
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result p0

    .line 110
    new-instance v2, Lio/dronefleet/mavlink/asluav/SensAtmos;

    invoke-direct {v2, v0, v1, p0}, Lio/dronefleet/mavlink/asluav/SensAtmos;-><init>(Ljava/math/BigInteger;FF)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/SensAtmos;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    .line 114
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 116
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    iget p0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/SensAtmos;

    .line 84
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 85
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 86
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final humidity()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Relative humidity"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 76
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    return v0
.end method

.method public final tempambient()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ambient temperature"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 64
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system boot"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 52
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensAtmos{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tempambient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->tempambient:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", humidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensAtmos;->humidity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
