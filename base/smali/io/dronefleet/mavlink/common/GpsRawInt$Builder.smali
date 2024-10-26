.class public final Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
.super Ljava/lang/Object;
.source "GpsRawInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GpsRawInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private altEllipsoid:I

.field private cog:I

.field private eph:I

.field private epv:I

.field private fixType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;"
        }
    .end annotation
.end field

.field private hAcc:J

.field private hdgAcc:J

.field private lat:I

.field private lon:I

.field private satellitesVisible:I

.field private timeUsec:Ljava/math/BigInteger;

.field private vAcc:J

.field private vel:I

.field private velAcc:J

.field private yaw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up. Note that\n                virtually all GPS modules provide the MSL altitude in addition to the WGS84\n                altitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 544
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->alt:I

    return-object p0
.end method

.method public final altEllipsoid(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (above WGS84, EGM96\n                ellipsoid). Positive for up."
        extension = true
        position = 0xc
        signed = true
        unitSize = 0x4
    .end annotation

    .line 632
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->altEllipsoid:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GpsRawInt;
    .locals 26

    move-object/from16 v0, p0

    .line 710
    new-instance v23, Lio/dronefleet/mavlink/common/GpsRawInt;

    move-object/from16 v1, v23

    iget-object v2, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->fixType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->lat:I

    iget v5, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->lon:I

    iget v6, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->alt:I

    iget v7, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->eph:I

    iget v8, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->epv:I

    iget v9, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->vel:I

    iget v10, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->cog:I

    iget v11, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->satellitesVisible:I

    iget v12, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->altEllipsoid:I

    iget-wide v13, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->hAcc:J

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->vAcc:J

    move-wide v15, v1

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->velAcc:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->hdgAcc:J

    move-wide/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->yaw:I

    move/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v22}, Lio/dronefleet/mavlink/common/GpsRawInt;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIJJJJILio/dronefleet/mavlink/common/GpsRawInt$1;)V

    return-object v23
.end method

.method public final cog(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground (NOT heading, but\n                direction of movement) in degrees * 100, 0.0..359.99 degrees. If unknown, set to:\n                UINT16_MAX"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 602
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->cog:I

    return-object p0
.end method

.method public final eph(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS HDOP horizontal dilution of position (unitless).\n                If unknown, set to: UINT16_MAX"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 558
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->eph:I

    return-object p0
.end method

.method public final epv(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS VDOP vertical dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 572
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->epv:I

    return-object p0
.end method

.method public final fixType(Lio/dronefleet/mavlink/common/GpsFixType;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0

    .line 486
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GpsRawInt$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS fix type."
        enumType = Lio/dronefleet/mavlink/common/GpsFixType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 478
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->fixType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final fixType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GpsRawInt$Builder;"
        }
    .end annotation

    .line 500
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs fixType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0

    .line 493
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final hAcc(J)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Position uncertainty."
        extension = true
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 646
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->hAcc:J

    return-object p0
.end method

.method public final hdgAcc(J)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heading / track uncertainty"
        extension = true
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 688
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->hdgAcc:J

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84, EGM96 ellipsoid)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 513
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84, EGM96 ellipsoid)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 527
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->lon:I

    return-object p0
.end method

.method public final satellitesVisible(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If\n                unknown, set to 255"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 616
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->satellitesVisible:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 464
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vAcc(J)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude uncertainty."
        extension = true
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 660
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->vAcc:J

    return-object p0
.end method

.method public final vel(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS ground speed. If unknown, set to:\n                UINT16_MAX"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 586
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->vel:I

    return-object p0
.end method

.method public final velAcc(J)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed uncertainty."
        extension = true
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 674
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->velAcc:J

    return-object p0
.end method

.method public final yaw(I)Lio/dronefleet/mavlink/common/GpsRawInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw in earth frame from north. Use 0 if\n                this GPS does not provide yaw. Use 65535 if this GPS is configured to provide yaw\n                and is currently unable to provide it. Use 36000 for north."
        extension = true
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 705
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRawInt$Builder;->yaw:I

    return-object p0
.end method
