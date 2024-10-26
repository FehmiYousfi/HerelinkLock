.class public final Lio/dronefleet/mavlink/common/HilGps$Builder;
.super Ljava/lang/Object;
.source "HilGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private cog:I

.field private eph:I

.field private epv:I

.field private fixType:I

.field private id:I

.field private lat:I

.field private lon:I

.field private satellitesVisible:I

.field private timeUsec:Ljava/math/BigInteger;

.field private vd:I

.field private ve:I

.field private vel:I

.field private vn:I

.field private yaw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 492
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->alt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HilGps;
    .locals 20

    move-object/from16 v0, p0

    .line 642
    new-instance v18, Lio/dronefleet/mavlink/common/HilGps;

    move-object/from16 v1, v18

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->fixType:I

    iget v4, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->lat:I

    iget v5, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->lon:I

    iget v6, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->alt:I

    iget v7, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->eph:I

    iget v8, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->epv:I

    iget v9, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->vel:I

    iget v10, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->vn:I

    iget v11, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->ve:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->vd:I

    iget v13, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->cog:I

    iget v14, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->satellitesVisible:I

    iget v15, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->id:I

    move-object/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HilGps$Builder;->yaw:I

    move/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/common/HilGps;-><init>(Ljava/math/BigInteger;IIIIIIIIIIIIIILio/dronefleet/mavlink/common/HilGps$1;)V

    return-object v18
.end method

.method public final cog(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground (NOT heading, but\n                direction of movement), 0.0..359.99 degrees. If unknown, set to: 65535"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 594
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->cog:I

    return-object p0
.end method

.method public final eph(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS HDOP horizontal dilution of position (unitless).\n                If unknown, set to: UINT16_MAX"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 506
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->eph:I

    return-object p0
.end method

.method public final epv(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS VDOP vertical dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 520
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->epv:I

    return-object p0
.end method

.method public final fixType(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0-1: no fix, 2: 2D fix, 3: 3D fix. Some\n                applications will not use the value of this field unless it is at least two, so\n                always correctly fill in the fix."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 450
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->fixType:I

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS ID (zero indexed). Used for multiple GPS inputs"
        extension = true
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 622
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->id:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 464
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 478
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->lon:I

    return-object p0
.end method

.method public final satellitesVisible(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If\n                unknown, set to 255"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 608
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->satellitesVisible:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 434
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vd(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in down direction in\n                earth-fixed NED frame"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 579
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->vd:I

    return-object p0
.end method

.method public final ve(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in east direction in\n                earth-fixed NED frame"
        position = 0xa
        signed = true
        unitSize = 0x2
    .end annotation

    .line 564
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->ve:I

    return-object p0
.end method

.method public final vel(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS ground speed. If unknown, set to:\n                65535"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 534
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->vel:I

    return-object p0
.end method

.method public final vn(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in north direction in\n                earth-fixed NED frame"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 549
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->vn:I

    return-object p0
.end method

.method public final yaw(I)Lio/dronefleet/mavlink/common/HilGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw of vehicle relative to Earth\'s North,\n                zero means not available, use 36000 for north"
        extension = true
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 637
    iput p1, p0, Lio/dronefleet/mavlink/common/HilGps$Builder;->yaw:I

    return-object p0
.end method
