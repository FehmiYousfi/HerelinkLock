.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;
.super Ljava/lang/Object;
.source "SerialUdbExtraF5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x36
    description = "Backwards compatible version of SERIAL_UDB_EXTRA F5: format"
    id = 0xad
.end annotation


# instance fields
.field private final sueRollkd:F

.field private final sueRollkp:F

.field private final sueYawkdAileron:F

.field private final sueYawkpAileron:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    .line 33
    iput p2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    .line 34
    iput p3, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    .line 35
    iput p4, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

    return-void
.end method

.method synthetic constructor <init>(FFFFLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;-><init>(FFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 43
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;
    .locals 4

    .line 129
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 130
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 131
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 132
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result p0

    .line 133
    new-instance v3, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;-><init>(FFFF)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    .line 137
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 139
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    iget p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

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

    if-eqz p1, :cond_6

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;

    .line 103
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 104
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 105
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 106
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

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

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 114
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 115
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 116
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueRollkd()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ROLLKD Gain for Rate control of\n                roll stabilization"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 95
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

    return v0
.end method

.method public final sueRollkp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB Extra ROLLKP Gain for Proportional\n                control of roll stabilization"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 82
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    return v0
.end method

.method public final sueYawkdAileron()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB YAWKD_AILERON Gain for Rate\n                control of navigation"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 69
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    return v0
.end method

.method public final sueYawkpAileron()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial UDB YAWKP_AILERON Gain for\n                Proporional control of navigation"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 56
    iget v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF5{sueYawkpAileron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkpAileron:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sueYawkdAileron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueYawkdAileron:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sueRollkp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sueRollkd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF5;->sueRollkd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
