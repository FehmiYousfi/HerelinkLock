.class public final Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitudeBarometric:F

.field private altitudeGeodetic:F

.field private barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private height:F

.field private heightReference:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHeightRef;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHorAcc;",
            ">;"
        }
    .end annotation
.end field

.field private idOrMac:[B

.field private latitude:I

.field private longitude:I

.field private speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;",
            ">;"
        }
    .end annotation
.end field

.field private speedHorizontal:I

.field private speedVertical:I

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidStatus;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I

.field private timestamp:F

.field private timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidTimeAcc;",
            ">;"
        }
    .end annotation
.end field

.field private verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitudeBarometric(F)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The altitude\n                calculated from the barometric pressue. Reference is against 29.92inHg or 1013.2mb.\n                If unknown: -1000 m."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 710
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->altitudeBarometric:F

    return-object p0
.end method

.method public final altitudeGeodetic(F)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The geodetic\n                altitude as defined by WGS84. If unknown: -1000 m."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 724
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->altitudeGeodetic:F

    return-object p0
.end method

.method public final barometerAccuracy(Lio/dronefleet/mavlink/common/MavOdidVerAcc;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 871
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->barometerAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final barometerAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the barometric altitude."
        enumType = Lio/dronefleet/mavlink/common/MavOdidVerAcc;
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 863
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final barometerAccuracy(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 885
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->barometerAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs barometerAccuracy([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 878
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->barometerAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdLocation;
    .locals 24

    move-object/from16 v0, p0

    .line 979
    new-instance v22, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;

    move-object/from16 v1, v22

    iget v2, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->targetSystem:I

    iget v3, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->targetComponent:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->idOrMac:[B

    iget-object v5, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->direction:I

    iget v7, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedHorizontal:I

    iget v8, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedVertical:I

    iget v9, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->latitude:I

    iget v10, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->longitude:I

    iget v11, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->altitudeBarometric:F

    iget v12, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->altitudeGeodetic:F

    iget-object v13, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    iget v14, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->height:F

    iget-object v15, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v23, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->barometerAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestamp:F

    move/from16 v19, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v20, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;IIIIIFFLio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/OpenDroneIdLocation$1;)V

    return-object v22
.end method

.method public final direction(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Direction over\n                ground (not heading, but direction of movement) measured clockwise from true North:\n                0 - 35999 centi-degrees. If unknown: 36100 centi-degrees."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 632
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->direction:I

    return-object p0
.end method

.method public final height(F)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The current height of the\n                unmanned aircraft above the take-off location or the ground as indicated by\n                height_reference. If unknown: -1000 m."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 776
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->height:F

    return-object p0
.end method

.method public final heightReference(Lio/dronefleet/mavlink/common/MavOdidHeightRef;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 747
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->heightReference(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final heightReference(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHeightRef;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates the\n                reference point for the height field."
        enumType = Lio/dronefleet/mavlink/common/MavOdidHeightRef;
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 739
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->heightReference:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final heightReference(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 761
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->heightReference(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs heightReference([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 754
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->heightReference(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final horizontalAccuracy(Lio/dronefleet/mavlink/common/MavOdidHorAcc;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 799
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->horizontalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final horizontalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidHorAcc;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the horizontal position."
        enumType = Lio/dronefleet/mavlink/common/MavOdidHorAcc;
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 791
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->horizontalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final horizontalAccuracy(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 813
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->horizontalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs horizontalAccuracy([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 806
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->horizontalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final idOrMac([B)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 580
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->idOrMac:[B

    return-object p0
.end method

.method public final latitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current latitude of the\n                unmanned aircraft. If unknown: 0 (both Lat/Lon)."
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 679
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->latitude:I

    return-object p0
.end method

.method public final longitude(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current longitude of\n                the unmanned aircraft. If unknown: 0 (both Lat/Lon)."
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 694
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->longitude:I

    return-object p0
.end method

.method public final speedAccuracy(Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 907
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final speedAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the horizontal and vertical speed."
        enumType = Lio/dronefleet/mavlink/common/MavOdidSpeedAcc;
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 899
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final speedAccuracy(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 921
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs speedAccuracy([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 914
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final speedHorizontal(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground speed. Positive only.\n                If unknown: 25500 cm/s. If speed is larger than 25425 cm/s, use 25425 cm/s."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 647
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedHorizontal:I

    return-object p0
.end method

.method public final speedVertical(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The vertical speed. Up is\n                positive. If unknown: 6300 cm/s. If speed is larger than 6200 cm/s, use 6200 cm/s.\n                If lower than -6200 cm/s, use -6200 cm/s."
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 664
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->speedVertical:I

    return-object p0
.end method

.method public final status(Lio/dronefleet/mavlink/common/MavOdidStatus;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 603
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates whether the\n                unmanned aircraft is on the ground or in the air."
        enumType = Lio/dronefleet/mavlink/common/MavOdidStatus;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 595
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 617
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 610
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 563
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 550
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timestamp(F)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Seconds after the full\n                hour with reference to UTC time. Typically the GPS outputs a time-of-week value in\n                milliseconds. First convert that to UTC and then convert for this field using\n                ((float) (time_week_ms % (60*60*1000))) / 1000. If unknown: 0xFFFF."
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 938
    iput p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestamp:F

    return-object p0
.end method

.method public final timestampAccuracy(Lio/dronefleet/mavlink/common/MavOdidTimeAcc;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 961
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestampAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timestampAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidTimeAcc;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the timestamps."
        enumType = Lio/dronefleet/mavlink/common/MavOdidTimeAcc;
        position = 0x14
        unitSize = 0x1
    .end annotation

    .line 953
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestampAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final timestampAccuracy(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 975
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestampAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs timestampAccuracy([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 968
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->timestampAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final verticalAccuracy(Lio/dronefleet/mavlink/common/MavOdidVerAcc;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 835
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->verticalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final verticalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The accuracy of\n                the vertical position."
        enumType = Lio/dronefleet/mavlink/common/MavOdidVerAcc;
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 827
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->verticalAccuracy:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final verticalAccuracy(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;"
        }
    .end annotation

    .line 849
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->verticalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs verticalAccuracy([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;
    .locals 0

    .line 842
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;->verticalAccuracy(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdLocation$Builder;

    move-result-object p1

    return-object p1
.end method
