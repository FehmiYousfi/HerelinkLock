.class public final Lio/dronefleet/mavlink/ardupilotmega/Ahrs;
.super Ljava/lang/Object;
.source "Ahrs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x7f
    description = "Status of DCM attitude estimator."
    id = 0xa3
.end annotation


# instance fields
.field private final accelWeight:F

.field private final errorRp:F

.field private final errorYaw:F

.field private final omegaix:F

.field private final omegaiy:F

.field private final omegaiz:F

.field private final renormVal:F


# direct methods
.method private constructor <init>(FFFFFFF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    .line 39
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    .line 40
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    .line 41
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    .line 42
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    .line 43
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    .line 44
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    return-void
.end method

.method synthetic constructor <init>(FFFFFFFLio/dronefleet/mavlink/ardupilotmega/Ahrs$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;-><init>(FFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/Ahrs;
    .locals 8

    .line 179
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 180
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 181
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 182
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 183
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 184
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 185
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 186
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;-><init>(FFFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/Ahrs;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x1c

    .line 190
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 191
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 195
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 196
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 197
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final accelWeight()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average accel_weight."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 100
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 143
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;

    .line 144
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 145
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 146
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 147
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 148
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 149
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 150
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public final errorRp()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average error_roll_pitch value."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    return v0
.end method

.method public final errorYaw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average error_yaw value."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final omegaix()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X gyro drift estimate."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 64
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    return v0
.end method

.method public final omegaiy()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y gyro drift estimate."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 76
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    return v0
.end method

.method public final omegaiz()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z gyro drift estimate."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 88
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    return v0
.end method

.method public final renormVal()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average renormalisation value."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ahrs{omegaix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaix:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", omegaiy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", omegaiz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->omegaiz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accelWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->accelWeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", renormVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->renormVal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", errorRp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorRp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", errorYaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;->errorYaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method