.class public final Lio/dronefleet/mavlink/asluav/AsluavStatus;
.super Ljava/lang/Object;
.source "AsluavStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x61
    description = "Extended state information for ASLUAVs"
    id = 0xcd
.end annotation


# instance fields
.field private final ledStatus:I

.field private final motorRpm:F

.field private final satcomStatus:I

.field private final servoStatus:[B


# direct methods
.method private constructor <init>(II[BF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    .line 32
    iput p2, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    .line 33
    iput-object p3, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    .line 34
    iput p4, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

    return-void
.end method

.method synthetic constructor <init>(II[BFLio/dronefleet/mavlink/asluav/AsluavStatus$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/asluav/AsluavStatus;-><init>(II[BF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 42
    new-instance v0, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/AsluavStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/AsluavStatus;
    .locals 4

    .line 126
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 127
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 128
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x8

    .line 129
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 130
    new-instance v3, Lio/dronefleet/mavlink/asluav/AsluavStatus;

    invoke-direct {v3, v1, v2, p0, v0}, Lio/dronefleet/mavlink/asluav/AsluavStatus;-><init>(II[BF)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/AsluavStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xe

    .line 134
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    iget-object p0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

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

    if-eqz p1, :cond_6

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/AsluavStatus;

    .line 100
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 101
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 102
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 103
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

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

    .line 110
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 112
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final ledStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status of the position-indicator LEDs"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 54
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    return v0
.end method

.method public final motorRpm()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Motor RPM"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

    return v0
.end method

.method public final satcomStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status of the IRIDIUM satellite communication\n                system"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 67
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    return v0
.end method

.method public final servoStatus()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Status vector for up to 8 servos"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 80
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsluavStatus{ledStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->ledStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satcomStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->satcomStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servoStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->servoStatus:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", motorRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AsluavStatus;->motorRpm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
