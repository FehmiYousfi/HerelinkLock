.class public final Lio/dronefleet/mavlink/common/SerialControl;
.super Ljava/lang/Object;
.source "SerialControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SerialControl$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xdc
    description = "Control a serial port. This can be used for raw access to an onboard serial\n                peripheral such as a GPS or telemetry radio. It is designed to make it possible to\n                update the devices firmware via MAVLink messages or change the devices settings. A\n                message with zero bytes can be used to change just the baudrate."
    id = 0x7e
.end annotation


# instance fields
.field private final baudrate:J

.field private final count:I

.field private final data:[B

.field private final device:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlDev;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final timeout:I


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IJI[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlDev;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlFlag;",
            ">;IJI[B)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

    .line 46
    iput-object p2, p0, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 47
    iput p3, p0, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    .line 48
    iput-wide p4, p0, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    .line 49
    iput p6, p0, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    .line 50
    iput-object p7, p0, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IJI[BLio/dronefleet/mavlink/common/SerialControl$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p7}, Lio/dronefleet/mavlink/common/SerialControl;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IJI[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/SerialControl$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SerialControl$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SerialControl;
    .locals 9

    .line 176
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 177
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 178
    const-class v0, Lio/dronefleet/mavlink/common/SerialControlDev;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v2

    .line 179
    const-class v0, Lio/dronefleet/mavlink/common/SerialControlFlag;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 180
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/16 v0, 0x46

    .line 181
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 182
    new-instance v8, Lio/dronefleet/mavlink/common/SerialControl;

    move-object v0, v8

    move-object v1, v2

    move-object v2, v6

    move v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/SerialControl;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IJI[B)V

    return-object v8
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SerialControl;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x4f

    .line 186
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    const-class v1, Lio/dronefleet/mavlink/common/SerialControlDev;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 190
    const-class v1, Lio/dronefleet/mavlink/common/SerialControlFlag;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    iget v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 192
    iget-object p0, p0, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

    const/16 v1, 0x46

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final baudrate()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Baudrate of transfer. Zero means\n                no change."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 111
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    return-wide v0
.end method

.method public final count()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "how many bytes in this transfer"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    return v0
.end method

.method public final data()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x46
        description = "serial data"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

    return-object v0
.end method

.method public final device()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlDev;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial control device\n                type."
        enumType = Lio/dronefleet/mavlink/common/SerialControlDev;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 72
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SerialControl;

    .line 144
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 145
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 146
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 147
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 148
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 149
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

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

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap\n                of serial control flags."
        enumType = Lio/dronefleet/mavlink/common/SerialControlFlag;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 86
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 156
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 157
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final timeout()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timeout for reply data"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialControl{device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->device:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baudrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->baudrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SerialControl;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
