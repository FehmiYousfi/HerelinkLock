.class public final Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
.super Ljava/lang/Object;
.source "Gps2Raw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Gps2Raw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private altEllipsoid:I

.field private cog:I

.field private dgpsAge:J

.field private dgpsNumch:I

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

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 576
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->alt:I

    return-object p0
.end method

.method public final altEllipsoid(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (above WGS84, EGM96\n                ellipsoid). Positive for up."
        extension = true
        position = 0xf
        signed = true
        unitSize = 0x4
    .end annotation

    .line 706
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->altEllipsoid:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/Gps2Raw;
    .locals 29

    move-object/from16 v0, p0

    .line 767
    new-instance v26, Lio/dronefleet/mavlink/common/Gps2Raw;

    move-object/from16 v1, v26

    iget-object v2, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->fixType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->lat:I

    iget v5, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->lon:I

    iget v6, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->alt:I

    iget v7, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->eph:I

    iget v8, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->epv:I

    iget v9, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->vel:I

    iget v10, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->cog:I

    iget v11, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->satellitesVisible:I

    iget v12, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->dgpsNumch:I

    iget-wide v13, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->dgpsAge:J

    iget v15, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->yaw:I

    move-object/from16 v27, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->altEllipsoid:I

    move/from16 v16, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->hAcc:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->vAcc:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->velAcc:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->hdgAcc:J

    move-wide/from16 v23, v1

    const/16 v25, 0x0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lio/dronefleet/mavlink/common/Gps2Raw;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIJIIJJJJLio/dronefleet/mavlink/common/Gps2Raw$1;)V

    return-object v26
.end method

.method public final cog(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground (NOT heading, but\n                direction of movement): 0.0..359.99 degrees. If unknown, set to: UINT16_MAX"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 633
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->cog:I

    return-object p0
.end method

.method public final dgpsAge(J)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Age of DGPS info"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 673
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->dgpsAge:J

    return-object p0
.end method

.method public final dgpsNumch(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of DGPS satellites"
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 660
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->dgpsNumch:I

    return-object p0
.end method

.method public final eph(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS HDOP horizontal dilution of position (unitless).\n                If unknown, set to: UINT16_MAX"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 590
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->eph:I

    return-object p0
.end method

.method public final epv(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS VDOP vertical dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 604
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->epv:I

    return-object p0
.end method

.method public final fixType(Lio/dronefleet/mavlink/common/GpsFixType;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0

    .line 521
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Gps2Raw$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS fix type."
        enumType = Lio/dronefleet/mavlink/common/GpsFixType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 513
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->fixType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final fixType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Gps2Raw$Builder;"
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs fixType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0

    .line 528
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->fixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final hAcc(J)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Position uncertainty."
        extension = true
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 720
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->hAcc:J

    return-object p0
.end method

.method public final hdgAcc(J)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heading / track uncertainty"
        extension = true
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 762
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->hdgAcc:J

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 548
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 562
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->lon:I

    return-object p0
.end method

.method public final satellitesVisible(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If\n                unknown, set to 255"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 647
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->satellitesVisible:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 499
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vAcc(J)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude uncertainty."
        extension = true
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 734
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->vAcc:J

    return-object p0
.end method

.method public final vel(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS ground speed. If unknown, set to:\n                UINT16_MAX"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 618
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->vel:I

    return-object p0
.end method

.method public final velAcc(J)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed uncertainty."
        extension = true
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 748
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->velAcc:J

    return-object p0
.end method

.method public final yaw(I)Lio/dronefleet/mavlink/common/Gps2Raw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw in earth frame from north. Use 0 if\n                this GPS does not provide yaw. Use 65535 if this GPS is configured to provide yaw\n                and is currently unable to provide it. Use 36000 for north."
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 690
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Raw$Builder;->yaw:I

    return-object p0
.end method
