.class public final Lio/dronefleet/mavlink/common/GeneratorStatus;
.super Ljava/lang/Object;
.source "GeneratorStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x75
    description = "Telemetry of power generation system. Alternator or mechanical generator."
    id = 0x175
.end annotation


# instance fields
.field private final batCurrentSetpoint:F

.field private final batteryCurrent:F

.field private final busVoltage:F

.field private final generatorSpeed:I

.field private final generatorTemperature:I

.field private final loadCurrent:F

.field private final powerGenerated:F

.field private final rectifierTemperature:I

.field private final runtime:J

.field private final status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUntilMaintenance:I


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;IFFFFIFIJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;",
            ">;IFFFFIFIJI)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    .line 52
    iput p2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    .line 53
    iput p3, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    .line 54
    iput p4, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    .line 55
    iput p5, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    .line 56
    iput p6, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    .line 57
    iput p7, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    .line 58
    iput p8, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    .line 59
    iput p9, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    .line 60
    iput-wide p10, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    .line 61
    iput p12, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;IFFFFIFIJILio/dronefleet/mavlink/common/GeneratorStatus$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/common/GeneratorStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;IFFFFIFIJI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/GeneratorStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/GeneratorStatus;
    .locals 15

    .line 277
    const-class v0, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    const/16 v1, 0x8

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 278
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 279
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 280
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 281
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 282
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 283
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    .line 284
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 285
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 286
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 287
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 288
    new-instance p0, Lio/dronefleet/mavlink/common/GeneratorStatus;

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lio/dronefleet/mavlink/common/GeneratorStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;IFFFFIFIJI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/GeneratorStatus;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x2a

    .line 292
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 293
    const-class v1, Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 299
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 300
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 301
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 302
    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 303
    iget p0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final batCurrentSetpoint()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The target battery current.\n                Positive for out. Negative for in. NaN: field not provided"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    return v0
.end method

.method public final batteryCurrent()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current into/out of battery.\n                Positive for out. Negative for in. NaN: field not provided."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 108
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    return v0
.end method

.method public final busVoltage()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Voltage of the bus seen at the\n                generator, or battery bus if battery bus is controlled by generator and at a\n                different voltage to main bus."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 229
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/GeneratorStatus;

    .line 230
    iget-object v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 231
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 232
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 233
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 234
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 235
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 236
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 237
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 238
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 239
    :cond_a
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 240
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v1
.end method

.method public final generatorSpeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed of electrical generator\n                or alternator. UINT16_MAX: field not provided."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    return v0
.end method

.method public final generatorTemperature()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The temperature of the\n                mechanical motor, fuel cell core or generator. INT16_MAX: field not provided."
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 193
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 247
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 248
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 250
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 251
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 252
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 253
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 254
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 255
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 256
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 257
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final loadCurrent()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current going to the UAV. If battery\n                current not available this is the DC current from the generator. Positive for out.\n                Negative for in. NaN: field not provided"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    return v0
.end method

.method public final powerGenerated()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The power being generated. NaN:\n                field not provided"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    return v0
.end method

.method public final rectifierTemperature()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The temperature of the\n                rectifier or power converter. INT16_MAX: field not provided."
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 165
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    return v0
.end method

.method public final runtime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds this generator has run since it\n                was rebooted. UINT32_MAX: field not provided."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 206
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    return-wide v0
.end method

.method public final status()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status flags."
        enumType = Lio/dronefleet/mavlink/common/MavGeneratorStatusFlag;
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 82
    iget-object v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final timeUntilMaintenance()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds until this\n                generator requires maintenance. A negative value indicates maintenance is past-due.\n                INT32_MAX: field not provided."
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneratorStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->status:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", generatorSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batteryCurrent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", loadCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->loadCurrent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", powerGenerated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->powerGenerated:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", busVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->busVoltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rectifierTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->rectifierTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batCurrentSetpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->batCurrentSetpoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", generatorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->generatorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->runtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilMaintenance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/GeneratorStatus;->timeUntilMaintenance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
