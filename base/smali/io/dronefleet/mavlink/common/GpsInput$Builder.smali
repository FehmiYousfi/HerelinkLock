.class public final Lio/dronefleet/mavlink/common/GpsInput$Builder;
.super Ljava/lang/Object;
.source "GpsInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GpsInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:F

.field private fixType:I

.field private gpsId:I

.field private hdop:F

.field private horizAccuracy:F

.field private ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;",
            ">;"
        }
    .end annotation
.end field

.field private lat:I

.field private lon:I

.field private satellitesVisible:I

.field private speedAccuracy:F

.field private timeUsec:Ljava/math/BigInteger;

.field private timeWeek:I

.field private timeWeekMs:J

.field private vd:F

.field private vdop:F

.field private ve:F

.field private vertAccuracy:F

.field private vn:F

.field private yaw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL). Positive for up."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 649
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->alt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/GpsInput;
    .locals 25

    move-object/from16 v0, p0

    .line 791
    new-instance v23, Lio/dronefleet/mavlink/common/GpsInput;

    move-object/from16 v1, v23

    iget-object v2, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->gpsId:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v5, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->timeWeekMs:J

    iget v7, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->timeWeek:I

    iget v8, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->fixType:I

    iget v9, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->lat:I

    iget v10, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->lon:I

    iget v11, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->alt:F

    iget v12, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->hdop:F

    iget v13, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vdop:F

    iget v14, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vn:F

    iget v15, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ve:F

    move-object/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vd:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->speedAccuracy:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->horizAccuracy:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vertAccuracy:F

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->satellitesVisible:I

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->yaw:I

    move/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lio/dronefleet/mavlink/common/GpsInput;-><init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;JIIIIFFFFFFFFFIILio/dronefleet/mavlink/common/GpsInput$1;)V

    return-object v23
.end method

.method public final fixType(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0-1: no fix, 2: 2D fix, 3: 3D fix. 4: 3D with\n                DGPS. 5: 3D with RTK"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 608
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->fixType:I

    return-object p0
.end method

.method public final gpsId(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the GPS for multiple GPS\n                inputs"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 531
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->gpsId:I

    return-object p0
.end method

.method public final hdop(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS HDOP horizontal dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 663
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->hdop:F

    return-object p0
.end method

.method public final horizAccuracy(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS horizontal accuracy"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 745
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->horizAccuracy:F

    return-object p0
.end method

.method public final ignoreFlags(Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0

    .line 554
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ignoreFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final ignoreFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GpsInput$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap indicating which GPS input flags fields to ignore. All\n                other fields must be provided."
        enumType = Lio/dronefleet/mavlink/common/GpsInputIgnoreFlags;
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 546
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ignoreFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final ignoreFlags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GpsInput$Builder;"
        }
    .end annotation

    .line 568
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ignoreFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs ignoreFlags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0

    .line 561
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ignoreFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GpsInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 622
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 636
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->lon:I

    return-object p0
.end method

.method public final satellitesVisible(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible."
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 771
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->satellitesVisible:I

    return-object p0
.end method

.method public final speedAccuracy(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS speed accuracy"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 732
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->speedAccuracy:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 517
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final timeWeek(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS week number"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 594
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->timeWeek:I

    return-object p0
.end method

.method public final timeWeekMs(J)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS time (from start of GPS\n                week)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 581
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->timeWeekMs:J

    return-object p0
.end method

.method public final vd(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in down direction in earth-fixed\n                NED frame"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 719
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vd:F

    return-object p0
.end method

.method public final vdop(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS VDOP vertical dilution of position (unitless). If\n                unknown, set to: UINT16_MAX"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 677
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vdop:F

    return-object p0
.end method

.method public final ve(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in east direction in earth-fixed\n                NED frame"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 705
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->ve:F

    return-object p0
.end method

.method public final vertAccuracy(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS vertical accuracy"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 758
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vertAccuracy:F

    return-object p0
.end method

.method public final vn(F)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS velocity in north direction in earth-fixed\n                NED frame"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 691
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->vn:F

    return-object p0
.end method

.method public final yaw(I)Lio/dronefleet/mavlink/common/GpsInput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw of vehicle relative to Earth\'s North,\n                zero means not available, use 36000 for north"
        extension = true
        position = 0x14
        unitSize = 0x2
    .end annotation

    .line 786
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsInput$Builder;->yaw:I

    return-object p0
.end method
