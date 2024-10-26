.class public final Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;
.super Ljava/lang/Object;
.source "GimbalControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xcd
    description = "Control message for rate gimbal."
    id = 0xc9
.end annotation


# instance fields
.field private final demandedRateX:F

.field private final demandedRateY:F

.field private final demandedRateZ:F

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IIFFF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    .line 35
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    .line 36
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    .line 37
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    .line 38
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

    return-void
.end method

.method synthetic constructor <init>(IIFFFLio/dronefleet/mavlink/ardupilotmega/GimbalControl$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;-><init>(IIFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;
    .locals 6

    .line 143
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 144
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 145
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 146
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 147
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 148
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;-><init>(IIFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xe

    .line 152
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 155
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final demandedRateX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Demanded angular rate X."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 82
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    return v0
.end method

.method public final demandedRateY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Demanded angular rate Y."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    return v0
.end method

.method public final demandedRateZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Demanded angular rate Z."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

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

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;

    .line 114
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 115
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 116
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 117
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 118
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 127
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 129
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 70
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 58
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GimbalControl{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", demandedRateX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", demandedRateY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", demandedRateZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GimbalControl;->demandedRateZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
