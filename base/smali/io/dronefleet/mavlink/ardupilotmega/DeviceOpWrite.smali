.class public final Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;
.super Ljava/lang/Object;
.source "DeviceOpWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xea
    description = "Write registers for a device."
    id = 0x2afa
.end annotation


# instance fields
.field private final address:I

.field private final bank:I

.field private final bus:I

.field private final busname:Ljava/lang/String;

.field private final bustype:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;",
            ">;"
        }
    .end annotation
.end field

.field private final count:I

.field private final data:[B

.field private final regstart:I

.field private final requestId:J

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IIJLio/dronefleet/mavlink/util/EnumValue;IILjava/lang/String;II[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;",
            ">;II",
            "Ljava/lang/String;",
            "II[BI)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    .line 51
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    .line 52
    iput-wide p3, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    .line 53
    iput-object p5, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    .line 54
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    .line 55
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    .line 56
    iput-object p8, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    .line 57
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    .line 58
    iput p10, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    .line 59
    iput-object p11, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    .line 60
    iput p12, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

    return-void
.end method

.method synthetic constructor <init>(IIJLio/dronefleet/mavlink/util/EnumValue;IILjava/lang/String;II[BILio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p12}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;IILjava/lang/String;II[BI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;
    .locals 13

    .line 259
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 260
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 261
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 262
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;

    const/4 v5, 0x1

    invoke-static {v0, p0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 263
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 264
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/16 v0, 0x28

    .line 265
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .line 266
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 267
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v10

    const/16 v0, 0x80

    .line 268
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v11

    .line 269
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 270
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;IILjava/lang/String;II[BI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0xb4

    .line 274
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 275
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 276
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 277
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 278
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 280
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 281
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 283
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 284
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 285
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final address()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bus address."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    return v0
.end method

.method public final bank()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bank number."
        extension = true
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 204
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

    return v0
.end method

.method public final bus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bus number."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 129
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    return v0
.end method

.method public final busname()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x28
        description = "Name of device on bus (for SPI)."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 154
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    return-object v0
.end method

.method public final bustype()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The bus type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 117
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final count()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of registers to write."
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    return v0
.end method

.method public final data()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Write data."
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 191
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 211
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;

    .line 212
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 213
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 214
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 215
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 216
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 217
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 218
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 219
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 220
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 221
    :cond_a
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 222
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

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

.method public hashCode()I
    .locals 4

    .line 229
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 230
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 231
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 232
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 233
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 234
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 235
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 236
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 237
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 238
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 239
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final regstart()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "First register to write."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 166
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    return v0
.end method

.method public final requestId()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied to reply."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 104
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    return-wide v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOpWrite{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bustype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->address:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", busname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->busname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->regstart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWrite;->bank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method