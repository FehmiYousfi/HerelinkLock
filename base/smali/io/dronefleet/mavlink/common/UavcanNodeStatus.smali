.class public final Lio/dronefleet/mavlink/common/UavcanNodeStatus;
.super Ljava/lang/Object;
.source "UavcanNodeStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x1c
    description = "General status information of an UAVCAN node. Please refer to the\n                definition of the UAVCAN message \"uavcan.protocol.NodeStatus\" for the background\n                information. The UAVCAN specification is available at http://uavcan.org."
    id = 0x136
.end annotation


# instance fields
.field private final health:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeHealth;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeMode;",
            ">;"
        }
    .end annotation
.end field

.field private final subMode:I

.field private final timeUsec:Ljava/math/BigInteger;

.field private final uptimeSec:J

.field private final vendorSpecificStatusCode:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeHealth;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeMode;",
            ">;II)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    .line 46
    iput-wide p2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    .line 47
    iput-object p4, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    .line 48
    iput-object p5, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    .line 49
    iput p6, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    .line 50
    iput p7, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/common/UavcanNodeStatus$1;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/common/UavcanNodeStatus;-><init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;II)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/UavcanNodeStatus;
    .locals 9

    .line 178
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 179
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 180
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 181
    const-class v0, Lio/dronefleet/mavlink/common/UavcanNodeHealth;

    const/4 v4, 0x1

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 182
    const-class v0, Lio/dronefleet/mavlink/common/UavcanNodeMode;

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 183
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 184
    new-instance v8, Lio/dronefleet/mavlink/common/UavcanNodeStatus;

    move-object v0, v8

    move-object v4, v5

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/UavcanNodeStatus;-><init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;II)V

    return-object v8
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/UavcanNodeStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x11

    .line 188
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    const-class v1, Lio/dronefleet/mavlink/common/UavcanNodeHealth;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    const-class v1, Lio/dronefleet/mavlink/common/UavcanNodeMode;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget p0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;

    .line 146
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 147
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 148
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 149
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 150
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 151
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 158
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final health()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeHealth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generalized node health\n                status."
        enumType = Lio/dronefleet/mavlink/common/UavcanNodeHealth;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 100
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final mode()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeMode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generalized operating mode."
        enumType = Lio/dronefleet/mavlink/common/UavcanNodeMode;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 113
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final subMode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Not used currently."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    return v0
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 73
    iget-object v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavcanNodeStatus{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->health:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->subMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorSpecificStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uptimeSec()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the start-up of the\n                node."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 86
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->uptimeSec:J

    return-wide v0
.end method

.method public final vendorSpecificStatusCode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vendor-specific status\n                information."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus;->vendorSpecificStatusCode:I

    return v0
.end method
