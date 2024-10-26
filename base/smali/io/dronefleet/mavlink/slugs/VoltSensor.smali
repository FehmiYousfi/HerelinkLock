.class public final Lio/dronefleet/mavlink/slugs/VoltSensor;
.super Ljava/lang/Object;
.source "VoltSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x11
    description = "Transmits the readings from the voltage and current sensors"
    id = 0xbf
.end annotation


# instance fields
.field private final r2type:I

.field private final reading2:I

.field private final voltage:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

    .line 30
    iput p2, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    .line 31
    iput p3, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    return-void
.end method

.method synthetic constructor <init>(IIILio/dronefleet/mavlink/slugs/VoltSensor$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/slugs/VoltSensor;-><init>(III)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/VoltSensor$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/VoltSensor;
    .locals 3

    .line 110
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 111
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 112
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 113
    new-instance v2, Lio/dronefleet/mavlink/slugs/VoltSensor;

    invoke-direct {v2, p0, v0, v1}, Lio/dronefleet/mavlink/slugs/VoltSensor;-><init>(III)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/VoltSensor;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x5

    .line 117
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    iget v1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 119
    iget v1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    iget p0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

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

    if-eqz p1, :cond_5

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/VoltSensor;

    .line 87
    iget v2, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 88
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 89
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 96
    iget v0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 97
    iget v0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final r2type()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "It is the value of reading 2: 0 - Current, 1 -\n                Foreward Sonar, 2 - Back Sonar, 3 - RPM"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 52
    iget v0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

    return v0
.end method

.method public final reading2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Depends on the value of r2Type (0) Current\n                consumption in uS of PWM, 20 uS = 90Amp (1) Distance in cm (2) Distance in cm (3)\n                Absolute value"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 79
    iget v0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoltSensor{r2type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->r2type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reading2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->reading2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final voltage()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Voltage in uS of PWM. 0 uS = 0V, 20 uS = 21.5V"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 64
    iget v0, p0, Lio/dronefleet/mavlink/slugs/VoltSensor;->voltage:I

    return v0
.end method
