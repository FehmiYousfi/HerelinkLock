.class public final Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
.super Ljava/lang/Object;
.source "AdsbVehicle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AdsbVehicle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:I

.field private altitudeType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbAltitudeType;",
            ">;"
        }
    .end annotation
.end field

.field private callsign:Ljava/lang/String;

.field private emitterType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;"
        }
    .end annotation
.end field

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbFlags;",
            ">;"
        }
    .end annotation
.end field

.field private heading:I

.field private horVelocity:I

.field private icaoAddress:J

.field private lat:I

.field private lon:I

.field private squawk:I

.field private tslc:I

.field private verVelocity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude(ASL)"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 451
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitude:I

    return-object p0
.end method

.method public final altitudeType(Lio/dronefleet/mavlink/common/AdsbAltitudeType;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0

    .line 424
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitudeType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final altitudeType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbAltitudeType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADSB altitude\n                type."
        enumType = Lio/dronefleet/mavlink/common/AdsbAltitudeType;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 416
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final altitudeType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;"
        }
    .end annotation

    .line 438
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitudeType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs altitudeType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0

    .line 431
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitudeType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/AdsbVehicle;
    .locals 18

    move-object/from16 v0, p0

    .line 608
    new-instance v17, Lio/dronefleet/mavlink/common/AdsbVehicle;

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->icaoAddress:J

    iget v4, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->lat:I

    iget v5, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->lon:I

    iget-object v6, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitudeType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v7, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->altitude:I

    iget v8, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->heading:I

    iget v9, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->horVelocity:I

    iget v10, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->verVelocity:I

    iget-object v11, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->callsign:Ljava/lang/String;

    iget-object v12, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v13, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->tslc:I

    iget-object v14, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v15, v0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->squawk:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/common/AdsbVehicle;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/common/AdsbVehicle$1;)V

    return-object v17
.end method

.method public final callsign(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "The callsign, 8+null"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 506
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->callsign:Ljava/lang/String;

    return-object p0
.end method

.method public final emitterType(Lio/dronefleet/mavlink/common/AdsbEmitterType;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0

    .line 528
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->emitterType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final emitterType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbEmitterType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADSB emitter type."
        enumType = Lio/dronefleet/mavlink/common/AdsbEmitterType;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 520
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->emitterType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final emitterType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;"
        }
    .end annotation

    .line 542
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->emitterType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs emitterType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0

    .line 535
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->emitterType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/common/AdsbFlags;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0

    .line 577
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AdsbFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap to\n                indicate various statuses including valid data fields"
        enumType = Lio/dronefleet/mavlink/common/AdsbFlags;
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 569
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;"
        }
    .end annotation

    .line 591
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0

    .line 584
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final heading(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 464
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->heading:I

    return-object p0
.end method

.method public final horVelocity(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The horizontal velocity"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 477
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->horVelocity:I

    return-object p0
.end method

.method public final icaoAddress(J)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ICAO address"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 373
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->icaoAddress:J

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->lon:I

    return-object p0
.end method

.method public final squawk(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Squawk code"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 603
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->squawk:I

    return-object p0
.end method

.method public final tslc(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since last communication in seconds"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 554
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->tslc:I

    return-object p0
.end method

.method public final verVelocity(I)Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The vertical velocity. Positive\n                is up"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 492
    iput p1, p0, Lio/dronefleet/mavlink/common/AdsbVehicle$Builder;->verVelocity:I

    return-object p0
.end method
