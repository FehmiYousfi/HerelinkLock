.class public final Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private areaCeiling:F

.field private areaCount:I

.field private areaFloor:F

.field private areaRadius:I

.field private categoryEu:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidCategoryEu;",
            ">;"
        }
    .end annotation
.end field

.field private classEu:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassEu;",
            ">;"
        }
    .end annotation
.end field

.field private classificationType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassificationType;",
            ">;"
        }
    .end annotation
.end field

.field private idOrMac:[B

.field private operatorAltitudeGeo:F

.field private operatorLatitude:I

.field private operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;",
            ">;"
        }
    .end annotation
.end field

.field private operatorLongitude:I

.field private targetComponent:I

.field private targetSystem:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final areaCeiling(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Area Operations\n                Ceiling relative to WGS84. If unknown: -1000 m."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 616
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaCeiling:F

    return-object p0
.end method

.method public final areaCount(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of aircraft in the area, group or\n                formation (default 1)."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 588
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaCount:I

    return-object p0
.end method

.method public final areaFloor(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Area Operations Floor\n                relative to WGS84. If unknown: -1000 m."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 630
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaFloor:F

    return-object p0
.end method

.method public final areaRadius(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Radius of the cylindrical area of\n                the group or formation (default 0)."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 602
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaRadius:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdSystem;
    .locals 22

    move-object/from16 v0, p0

    .line 744
    new-instance v19, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;

    move-object/from16 v1, v19

    iget v2, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->targetSystem:I

    iget v3, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->targetComponent:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->idOrMac:[B

    iget-object v5, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v7, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLatitude:I

    iget v8, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLongitude:I

    iget v9, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaCount:I

    iget v10, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaRadius:I

    iget v11, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaCeiling:F

    iget v12, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->areaFloor:F

    iget-object v13, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v14, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    iget v15, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorAltitudeGeo:F

    move-object/from16 v20, v1

    move/from16 v21, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->timestamp:J

    move-wide/from16 v16, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FJLio/dronefleet/mavlink/common/OpenDroneIdSystem$1;)V

    return-object v19
.end method

.method public final categoryEu(Lio/dronefleet/mavlink/common/MavOdidCategoryEu;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 656
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->categoryEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final categoryEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidCategoryEu;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "When\n                classification_type is MAV_ODID_CLASSIFICATION_TYPE_EU, specifies the category of\n                the UA."
        enumType = Lio/dronefleet/mavlink/common/MavOdidCategoryEu;
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 647
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final categoryEu(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .line 672
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->categoryEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs categoryEu([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 664
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->categoryEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final classEu(Lio/dronefleet/mavlink/common/MavOdidClassEu;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 696
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final classEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassEu;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "When classification_type\n                is MAV_ODID_CLASSIFICATION_TYPE_EU, specifies the class of the UA."
        enumType = Lio/dronefleet/mavlink/common/MavOdidClassEu;
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 687
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final classEu(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .line 712
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs classEu([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 704
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classEu(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final classificationType(Lio/dronefleet/mavlink/common/MavOdidClassificationType;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 531
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classificationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final classificationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassificationType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Specifies the classification type of the UA."
        enumType = Lio/dronefleet/mavlink/common/MavOdidClassificationType;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 523
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final classificationType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .line 545
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classificationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs classificationType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 538
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->classificationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final idOrMac([B)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 472
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->idOrMac:[B

    return-object p0
.end method

.method public final operatorAltitudeGeo(F)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Geodetic\n                altitude of the operator relative to WGS84. If unknown: -1000 m."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 725
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorAltitudeGeo:F

    return-object p0
.end method

.method public final operatorLatitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of the\n                operator. If unknown: 0 (both Lat/Lon)."
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 559
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLatitude:I

    return-object p0
.end method

.method public final operatorLocationType(Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 495
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLocationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final operatorLocationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Specifies the operator location type."
        enumType = Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 487
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final operatorLocationType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;"
        }
    .end annotation

    .line 509
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLocationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs operatorLocationType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0

    .line 502
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLocationType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final operatorLongitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of\n                the operator. If unknown: 0 (both Lat/Lon)."
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 574
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->operatorLongitude:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 455
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 442
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timestamp(J)Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "32 bit Unix Timestamp in seconds since\n                00:00:00 01/01/2019."
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 739
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;->timestamp:J

    return-object p0
.end method
