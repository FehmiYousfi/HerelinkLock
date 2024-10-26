.class public final Lio/dronefleet/mavlink/common/NavControllerOutput;
.super Ljava/lang/Object;
.source "NavControllerOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb7
    description = "The state of the fixed wing navigation and position controller."
    id = 0x3e
.end annotation


# instance fields
.field private final altError:F

.field private final aspdError:F

.field private final navBearing:I

.field private final navPitch:F

.field private final navRoll:F

.field private final targetBearing:I

.field private final wpDist:I

.field private final xtrackError:F


# direct methods
.method private constructor <init>(FFIIIFFF)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    .line 41
    iput p2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    .line 42
    iput p3, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    .line 43
    iput p4, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    .line 44
    iput p5, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    .line 45
    iput p6, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    .line 46
    iput p7, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    .line 47
    iput p8, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    return-void
.end method

.method synthetic constructor <init>(FFIIIFFFLio/dronefleet/mavlink/common/NavControllerOutput$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/common/NavControllerOutput;-><init>(FFIIIFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 55
    new-instance v0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/NavControllerOutput;
    .locals 9

    .line 201
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 202
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 203
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 204
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 205
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 206
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 207
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 208
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 209
    new-instance p0, Lio/dronefleet/mavlink/common/NavControllerOutput;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/NavControllerOutput;-><init>(FFIIIFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/NavControllerOutput;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x1a

    .line 213
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 220
    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    iget p0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final altError()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current altitude error"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 130
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    return v0
.end method

.method public final aspdError()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current airspeed error"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 142
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 162
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/NavControllerOutput;

    .line 163
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 164
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 165
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 166
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 167
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 168
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 169
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 170
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 177
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 182
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 184
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final navBearing()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current desired heading"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    return v0
.end method

.method public final navPitch()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current desired pitch"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 79
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    return v0
.end method

.method public final navRoll()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current desired roll"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 67
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    return v0
.end method

.method public final targetBearing()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bearing to current\n                waypoint/target"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavControllerOutput{navRoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navRoll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", navPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navPitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", navBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->navBearing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->targetBearing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wpDist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->altError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aspdError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->aspdError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xtrackError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wpDist()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to active waypoint"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->wpDist:I

    return v0
.end method

.method public final xtrackError()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current crosstrack error on x-y\n                plane"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 155
    iget v0, p0, Lio/dronefleet/mavlink/common/NavControllerOutput;->xtrackError:F

    return v0
.end method
