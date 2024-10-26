.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;
.super Ljava/lang/Object;
.source "UavionixAdsbOutControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x47
    description = "Control message with all data sent in UCP control message."
    id = 0x2717
.end annotation


# instance fields
.field private final baroaltmsl:I

.field private final emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final flightId:Ljava/lang/String;

.field private final squawk:I

.field private final state:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;",
            ">;"
        }
    .end annotation
.end field

.field private final xBit:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;",
            ">;II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;",
            "Ljava/lang/String;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

    .line 41
    iput p2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    .line 42
    iput p3, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    .line 43
    iput-object p4, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    .line 44
    iput-object p5, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;-><init>(Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 53
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;
    .locals 8

    .line 177
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 178
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 179
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 180
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    const/16 v0, 0x8

    .line 181
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v6

    .line 182
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 183
    new-instance v7, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;

    move-object v0, v7

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;-><init>(Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object v7
.end method

.method public static serialize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x11

    .line 187
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 191
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;

    iget-object p0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final baroaltmsl()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Barometric pressure altitude (MSL)\n                relative to a standard atmosphere of 1013.2 mBar and NOT bar corrected altitude (m *\n                1E-3). (up +ve). If unknown set to INT32_MAX"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 82
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    return v0
.end method

.method public final emergencystatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Emergency status"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 107
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;

    .line 145
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 146
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 147
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 148
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 149
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 150
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

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

.method public final flightId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Flight Identification: 8 ASCII characters, \'0\'\n                through \'9\', \'A\' through \'Z\' or space. Spaces (0x20) used as a trailing pad\n                character, or when call sign is unavailable."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 123
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final squawk()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mode A code (typically 1200 [0x04B0] for VFR)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    return v0
.end method

.method public final state()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder control state flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 66
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavionixAdsbOutControl{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->state:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baroaltmsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->baroaltmsl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", squawk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->squawk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergencystatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flightId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->flightId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xBit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xBit()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X-Bit\n                enable (military transponders only)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 137
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method
