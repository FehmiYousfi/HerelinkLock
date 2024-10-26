.class public final Lio/dronefleet/mavlink/asluav/GsmLinkStatus;
.super Ljava/lang/Object;
.source "GsmLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc8
    description = "Status of GSM modem (connected to onboard computer)"
    id = 0xd5
.end annotation


# instance fields
.field private final gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmLinkType;",
            ">;"
        }
    .end annotation
.end field

.field private final gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmModemType;",
            ">;"
        }
    .end annotation
.end field

.field private final rsrpRscp:I

.field private final rsrq:I

.field private final rssi:I

.field private final sinrEcio:I

.field private final timestamp:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmModemType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmLinkType;",
            ">;IIII)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    .line 43
    iput-object p2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 44
    iput-object p3, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 45
    iput p4, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    .line 46
    iput p5, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    .line 47
    iput p6, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    .line 48
    iput p7, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILio/dronefleet/mavlink/asluav/GsmLinkStatus$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus;
    .locals 9

    .line 187
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    .line 188
    const-class v0, Lio/dronefleet/mavlink/asluav/GsmModemType;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 189
    const-class v0, Lio/dronefleet/mavlink/asluav/GsmLinkType;

    invoke-static {v0, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 190
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 191
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 192
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 193
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 194
    new-instance v8, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;

    move-object v0, v8

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIII)V

    return-object v8
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/GsmLinkStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0xe

    .line 198
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    const-class v1, Lio/dronefleet/mavlink/asluav/GsmModemType;

    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 201
    const-class v1, Lio/dronefleet/mavlink/asluav/GsmLinkType;

    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 203
    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 204
    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 205
    iget p0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

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

    if-eqz p1, :cond_9

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;

    .line 152
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 153
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 154
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 155
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 156
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 157
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 158
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public final gsmLinkType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmLinkType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GSM link type"
        enumType = Lio/dronefleet/mavlink/asluav/GsmLinkType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 94
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final gsmModemType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmModemType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GSM modem used"
        enumType = Lio/dronefleet/mavlink/asluav/GsmModemType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 81
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 165
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 166
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final rsrpRscp()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RSRP (LTE) or RSCP (WCDMA) as reported by modem\n                (unconverted)"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 119
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    return v0
.end method

.method public final rsrq()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RSRQ (LTE only) as reported by modem (unconverted)"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 144
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

    return v0
.end method

.method public final rssi()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RSSI as reported by modem (unconverted)"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    return v0
.end method

.method public final sinrEcio()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SINR (LTE) or ECIO (WCDMA) as reported by modem\n                (unconverted)"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    return v0
.end method

.method public final timestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (of OBC)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 68
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GsmLinkStatus{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->timestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gsmModemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gsmLinkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrpRscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrpRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sinrEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->sinrEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;->rsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
