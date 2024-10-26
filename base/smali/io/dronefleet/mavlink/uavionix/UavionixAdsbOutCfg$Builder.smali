.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbOutCfg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;",
            ">;"
        }
    .end annotation
.end field

.field private callsign:Ljava/lang/String;

.field private emittertype:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;"
        }
    .end annotation
.end field

.field private gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;",
            ">;"
        }
    .end annotation
.end field

.field private gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;",
            ">;"
        }
    .end annotation
.end field

.field private icao:J

.field private rfselect:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;",
            ">;"
        }
    .end annotation
.end field

.field private stallspeed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aircraftsize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 339
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->aircraftsize(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final aircraftsize(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aircraft length and width encoding (table 2-35 of DO-282B)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgAircraftSize;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 331
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final aircraftsize(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .line 353
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->aircraftsize(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs aircraftsize([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 346
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->aircraftsize(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;
    .locals 12

    .line 480
    new-instance v11, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;

    iget-wide v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->icao:J

    iget-object v3, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->callsign:Ljava/lang/String;

    iget-object v4, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->aircraftsize:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v7, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    iget v8, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->stallspeed:I

    iget-object v9, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg;-><init>(JLjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$1;)V

    return-object v11
.end method

.method public final callsign(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Vehicle identifier (8 characters, null terminated,\n                valid characters are A-Z, 0-9, \" \" only)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 281
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->callsign:Ljava/lang/String;

    return-object p0
.end method

.method public final emittertype(Lio/dronefleet/mavlink/common/AdsbEmitterType;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 304
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->emittertype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final emittertype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Transmitting vehicle\n                type. See ADSB_EMITTER_TYPE enum"
        enumType = Lio/dronefleet/mavlink/common/AdsbEmitterType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 296
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->emittertype:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final emittertype(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .line 318
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->emittertype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs emittertype([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 311
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->emittertype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsoffsetlat(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 374
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlat(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsoffsetlat(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS antenna lateral offset (table 2-36 of DO-282B)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLat;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 366
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlat:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final gpsoffsetlat(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .line 388
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlat(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs gpsoffsetlat([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 381
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlat(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsoffsetlon(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 412
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlon(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsoffsetlon(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS antenna longitudinal offset from nose [if non-zero, take position (in meters)\n                divide by 2 and add one] (table 2-37 DO-282B)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgGpsOffsetLon;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 403
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlon:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final gpsoffsetlon(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .line 428
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlon(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs gpsoffsetlon([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 420
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->gpsoffsetlon(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final icao(J)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vehicle address (24 bit)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 266
    iput-wide p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->icao:J

    return-object p0
.end method

.method public final rfselect(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 462
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->rfselect(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final rfselect(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder reciever and transmit enable flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutRfSelect;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 454
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->rfselect:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final rfselect(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;"
        }
    .end annotation

    .line 476
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->rfselect(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs rfselect([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0

    .line 469
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->rfselect(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final stallspeed(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Aircraft stall speed in cm/s"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 440
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfg$Builder;->stallspeed:I

    return-object p0
.end method
