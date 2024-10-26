.class public final Lio/dronefleet/mavlink/ardupilotmega/McuStatus;
.super Ljava/lang/Object;
.source "McuStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x8e
    description = "The MCU status, giving MCU temperature and voltage. The min and max\n                voltages are to allow for detecting power supply instability."
    id = 0x2b1f
.end annotation


# instance fields
.field private final id:I

.field private final mcuTemperature:I

.field private final mcuVoltage:I

.field private final mcuVoltageMax:I

.field private final mcuVoltageMin:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    .line 37
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    .line 38
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    .line 39
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    .line 40
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILio/dronefleet/mavlink/ardupilotmega/McuStatus$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;-><init>(IIIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 48
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/McuStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/McuStatus;
    .locals 6

    .line 146
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 147
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 148
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 149
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 150
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 151
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;-><init>(IIIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/McuStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x9

    .line 155
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 157
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 159
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 160
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

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

    if-eqz p1, :cond_7

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;

    .line 117
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 118
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 119
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 120
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 121
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 129
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 131
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final id()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU instance"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 60
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    return v0
.end method

.method public final mcuTemperature()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU Internal temperature"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 73
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    return v0
.end method

.method public final mcuVoltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU voltage"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    return v0
.end method

.method public final mcuVoltageMax()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU voltage maximum"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 109
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    return v0
.end method

.method public final mcuVoltageMin()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MCU voltage minimum"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 97
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuStatus{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcuTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcuVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcuVoltageMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcuVoltageMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/McuStatus;->mcuVoltageMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
