.class public final Lio/dronefleet/mavlink/common/AdsbVehicle;
.super Ljava/lang/Object;
.source "AdsbVehicle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb8
    description = "The location and information of an ADSB vehicle"
    id = 0xf6
.end annotation


# instance fields
.field private final altitude:I

.field private final altitudeType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbAltitudeType;",
            ">;"
        }
    .end annotation
.end field

.field private final callsign:Ljava/lang/String;

.field private final emitterType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final heading:I

.field private final horVelocity:I

.field private final icaoAddress:J

.field private final lat:I

.field private final lon:I

.field private final squawk:I

.field private final tslc:I

.field private final verVelocity:I


# direct methods
.method private constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbAltitudeType;",
            ">;IIII",
            "Ljava/lang/String;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbFlags;",
            ">;I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    .line 56
    iput p3, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    .line 57
    iput p4, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    .line 58
    iput-object p5, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 59
    iput p6, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    .line 60
    iput p7, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    .line 61
    iput p8, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    .line 62
    iput p9, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    .line 63
    iput-object p10, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 65
    iput p12, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    .line 66
    iput-object p13, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    .line 67
    iput p14, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    return-void
.end method

.method synthetic constructor <init>(JIILio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/common/AdsbVehicle$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p14}, Lio/dronefleet/mavlink/common/AdsbVehicle;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/AdsbVehicle;
    .locals 17

    move-object/from16 v0, p0

    .line 303
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 304
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 305
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 306
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 307
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 308
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 309
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 310
    const-class v5, Lio/dronefleet/mavlink/common/AdsbFlags;

    const/4 v10, 0x2

    invoke-static {v5, v0, v10}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v13

    .line 311
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 312
    const-class v5, Lio/dronefleet/mavlink/common/AdsbAltitudeType;

    const/4 v10, 0x1

    invoke-static {v5, v0, v10}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    const/16 v11, 0x9

    .line 313
    invoke-static {v0, v11}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v11

    .line 314
    const-class v12, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    invoke-static {v12, v0, v10}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v12

    .line 315
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 316
    new-instance v16, Lio/dronefleet/mavlink/common/AdsbVehicle;

    move-object/from16 v0, v16

    move-object v10, v11

    move-object v11, v12

    move v12, v15

    invoke-direct/range {v0 .. v14}, Lio/dronefleet/mavlink/common/AdsbVehicle;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;I)V

    return-object v16
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/AdsbVehicle;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x26

    .line 320
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 321
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 323
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 324
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 325
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 326
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 328
    const-class v1, Lio/dronefleet/mavlink/common/AdsbFlags;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    const-class v1, Lio/dronefleet/mavlink/common/AdsbAltitudeType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 331
    iget-object v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    const-class v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    iget p0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final altitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude(ASL)"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    return v0
.end method

.method public final altitudeType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbAltitudeType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADSB altitude\n                type."
        enumType = Lio/dronefleet/mavlink/common/AdsbAltitudeType;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 127
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final callsign()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "The callsign, 8+null"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 191
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    return-object v0
.end method

.method public final emitterType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADSB emitter type."
        enumType = Lio/dronefleet/mavlink/common/AdsbEmitterType;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 204
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 249
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/AdsbVehicle;

    .line 250
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 251
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 252
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 253
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 254
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 255
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 256
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 257
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 258
    :cond_9
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 259
    :cond_a
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 260
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 261
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 262
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public final flags()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbFlags;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to\n                indicate various statuses including valid data fields"
        enumType = Lio/dronefleet/mavlink/common/AdsbFlags;
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 230
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 269
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 270
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 271
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 272
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 273
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 274
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 275
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 276
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 277
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 278
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 279
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 280
    iget-object v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 281
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final heading()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    return v0
.end method

.method public final horVelocity()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The horizontal velocity"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    return v0
.end method

.method public final icaoAddress()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ICAO address"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 87
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    return-wide v0
.end method

.method public final lat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 100
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    return v0
.end method

.method public final lon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    return v0
.end method

.method public final squawk()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Squawk code"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 242
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdsbVehicle{icaoAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->icaoAddress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitudeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->heading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", horVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->horVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callsign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->callsign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emitterType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tslc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", squawk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->squawk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tslc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since last communication in seconds"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->tslc:I

    return v0
.end method

.method public final verVelocity()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The vertical velocity. Positive\n                is up"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 178
    iget v0, p0, Lio/dronefleet/mavlink/common/AdsbVehicle;->verVelocity:I

    return v0
.end method
