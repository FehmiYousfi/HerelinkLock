.class public final Lio/dronefleet/mavlink/asluav/AslObctrl;
.super Ljava/lang/Object;
.source "AslObctrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xea
    description = "Off-board controls/commands for ASLUAVs"
    id = 0xcf
.end annotation


# instance fields
.field private final obctrlStatus:I

.field private final timestamp:Ljava/math/BigInteger;

.field private final uaill:F

.field private final uailr:F

.field private final uelev:F

.field private final urud:F

.field private final uthrot:F

.field private final uthrot2:F


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;FFFFFFI)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    .line 42
    iput p2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    .line 43
    iput p3, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    .line 44
    iput p4, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    .line 45
    iput p5, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    .line 46
    iput p6, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    .line 47
    iput p7, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    .line 48
    iput p8, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;FFFFFFILio/dronefleet/mavlink/asluav/AslObctrl$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/asluav/AslObctrl;-><init>(Ljava/math/BigInteger;FFFFFFI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/AslObctrl$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/AslObctrl;
    .locals 9

    .line 198
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 199
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 200
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 201
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 202
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 203
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 204
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 205
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 206
    new-instance p0, Lio/dronefleet/mavlink/asluav/AslObctrl;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/asluav/AslObctrl;-><init>(Ljava/math/BigInteger;FFFFFFI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/AslObctrl;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x21

    .line 210
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 212
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 213
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    iget p0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

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

    if-eqz p1, :cond_a

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 159
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/AslObctrl;

    .line 160
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 161
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 162
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 163
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 164
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 165
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 166
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 167
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 174
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 177
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 179
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 181
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final obctrlStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Off-board computer status"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since system start"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 68
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AslObctrl{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uelev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", uthrot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", uthrot2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", uaill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", uailr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", urud="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", obctrlStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->obctrlStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uaill()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Left aileron command [~]"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 116
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uaill:F

    return v0
.end method

.method public final uailr()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Right aileron command [~]"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uailr:F

    return v0
.end method

.method public final uelev()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Elevator command [~]"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uelev:F

    return v0
.end method

.method public final urud()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rudder command [~]"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->urud:F

    return v0
.end method

.method public final uthrot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle command [~]"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot:F

    return v0
.end method

.method public final uthrot2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle 2 command [~]"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 104
    iget v0, p0, Lio/dronefleet/mavlink/asluav/AslObctrl;->uthrot2:F

    return v0
.end method
