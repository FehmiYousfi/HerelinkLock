.class public final Lio/dronefleet/mavlink/asluav/SensPower;
.super Ljava/lang/Object;
.source "SensPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/SensPower$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xda
    description = "Voltage and current sensor data"
    id = 0xc9
.end annotation


# instance fields
.field private final adc121Cs1Amp:F

.field private final adc121Cs2Amp:F

.field private final adc121CspbAmp:F

.field private final adc121VspbVolt:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

    .line 33
    iput p2, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    .line 34
    iput p3, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    .line 35
    iput p4, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    return-void
.end method

.method synthetic constructor <init>(FFFFLio/dronefleet/mavlink/asluav/SensPower$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/asluav/SensPower;-><init>(FFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/SensPower$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 43
    new-instance v0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/SensPower$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/SensPower;
    .locals 4

    .line 127
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 128
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 129
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 130
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result p0

    .line 131
    new-instance v3, Lio/dronefleet/mavlink/asluav/SensPower;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/asluav/SensPower;-><init>(FFFF)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/SensPower;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    .line 135
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 138
    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 139
    iget p0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final adc121Cs1Amp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board current sensor 1 reading"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 81
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    return v0
.end method

.method public final adc121Cs2Amp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board current sensor 2 reading"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    return v0
.end method

.method public final adc121CspbAmp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board current sensor\n                reading"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 69
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    return v0
.end method

.method public final adc121VspbVolt()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board voltage sensor\n                reading"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 56
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

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

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/SensPower;

    .line 101
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 102
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 103
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 104
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 114
    iget v0, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensPower{adc121VspbVolt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121VspbVolt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", adc121CspbAmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121CspbAmp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", adc121Cs1Amp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs1Amp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", adc121Cs2Amp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower;->adc121Cs2Amp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
