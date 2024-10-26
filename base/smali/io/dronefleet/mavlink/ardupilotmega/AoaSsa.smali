.class public final Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;
.super Ljava/lang/Object;
.source "AoaSsa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xcd
    description = "Angle of Attack and Side Slip Angle."
    id = 0x2b0c
.end annotation


# instance fields
.field private final aoa:F

.field private final ssa:F

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FF)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    .line 31
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    .line 32
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFLio/dronefleet/mavlink/ardupilotmega/AoaSsa$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;-><init>(Ljava/math/BigInteger;FF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;
    .locals 3

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    .line 109
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 110
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result p0

    .line 111
    new-instance v2, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;

    invoke-direct {v2, v0, v1, p0}, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;-><init>(Ljava/math/BigInteger;FF)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    .line 115
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final aoa()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angle of Attack."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 65
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;

    .line 85
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 86
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 87
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

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

    .line 94
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final ssa()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Side Slip Angle."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (since boot or Unix\n                epoch)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 53
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AoaSsa{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aoa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->aoa:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ssa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;->ssa:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
