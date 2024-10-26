.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;
.super Ljava/lang/Object;
.source "UavionixAdsbOutCfg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xd1
    description = "Static data to configure the ADS-B transponder (send within 10 sec of a POR\n                and every 10 sec thereafter)"
    id = 0x2711
.end annotation


# instance fields
.field private final aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;",
            ">;"
        }
    .end annotation
.end field

.field private final callsign:Ljava/lang/String;

.field private final emittertype:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;",
            ">;"
        }
    .end annotation
.end field

.field private final icao:J

.field private final rfselect:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;",
            ">;"
        }
    .end annotation
.end field

.field private final stallspeed:I


# direct methods
.method private constructor <init>(JLjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;",
            ">;I",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    .line 50
    iput-object p3, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    .line 52
    iput-object p5, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    .line 53
    iput-object p6, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    .line 54
    iput-object p7, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    .line 55
    iput p8, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    .line 56
    iput-object p9, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p9}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;-><init>(JLjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;
    .locals 11

    .line 216
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 217
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/16 v0, 0x9

    .line 218
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v3

    .line 219
    const-class v0, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    const/4 v4, 0x1

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 220
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 221
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v7

    .line 222
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v9

    .line 223
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;

    invoke-static {v0, p0, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 224
    new-instance v10, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;

    move-object v0, v10

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;-><init>(JLjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;)V

    return-object v10
.end method

.method public static serialize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x14

    .line 228
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 229
    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 231
    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 232
    const-class v1, Lio/dronefleet/mavlink/common/AdsbEmitterType;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 233
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 234
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_2
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 235
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;

    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_3
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 236
    const-class v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;

    iget-object p0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_4
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final aircraftsize()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aircraft length and width encoding (table 2-35 of DO-282B)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 117
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final callsign()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Vehicle identifier (8 characters, null terminated,\n                valid characters are A-Z, 0-9, \" \" only)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 90
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    return-object v0
.end method

.method public final emittertype()Lio/dronefleet/mavlink/util/EnumValue;
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
        description = "Transmitting vehicle\n                type. See ADSB_EMITTER_TYPE enum"
        enumType = Lio/dronefleet/mavlink/common/AdsbEmitterType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;

    .line 178
    iget-wide v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 179
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 180
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 181
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 182
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 183
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 184
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 185
    :cond_8
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

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

.method public final gpsoffsetlat()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS antenna lateral offset (table 2-36 of DO-282B)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 130
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final gpsoffsetlon()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS antenna longitudinal offset from nose [if non-zero, take position (in meters)\n                divide by 2 and add one] (table 2-37 DO-282B)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 145
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 192
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 193
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 194
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 195
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 196
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 197
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 198
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 199
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final icao()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vehicle address (24 bit)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 76
    iget-wide v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    return-wide v0
.end method

.method public final rfselect()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder reciever and transmit enable flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 170
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final stallspeed()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aircraft stall speed in cm/s"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavionixAdsbOutCfg{icao="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->icao:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callsign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->callsign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emittertype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aircraftsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsoffsetlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsoffsetlon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stallspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->stallspeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rfselect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
