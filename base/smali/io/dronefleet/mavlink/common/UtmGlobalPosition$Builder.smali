.class public final Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
.super Ljava/lang/Object;
.source "UtmGlobalPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/UtmGlobalPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmDataAvailFlags;",
            ">;"
        }
    .end annotation
.end field

.field private flightState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmFlightState;",
            ">;"
        }
    .end annotation
.end field

.field private hAcc:I

.field private lat:I

.field private lon:I

.field private nextAlt:I

.field private nextLat:I

.field private nextLon:I

.field private relativeAlt:I

.field private time:Ljava/math/BigInteger;

.field private uasId:[B

.field private updateRate:I

.field private vAcc:I

.field private velAcc:I

.field private vx:I

.field private vy:I

.field private vz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (WGS84)"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 549
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->alt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/UtmGlobalPosition;
    .locals 23

    move-object/from16 v0, p0

    .line 779
    new-instance v21, Lio/dronefleet/mavlink/common/UtmGlobalPosition;

    move-object/from16 v1, v21

    iget-object v2, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->time:Ljava/math/BigInteger;

    iget-object v3, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->uasId:[B

    iget v4, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->lat:I

    iget v5, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->lon:I

    iget v6, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->alt:I

    iget v7, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->relativeAlt:I

    iget v8, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vx:I

    iget v9, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vy:I

    iget v10, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vz:I

    iget v11, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->hAcc:I

    iget v12, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vAcc:I

    iget v13, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->velAcc:I

    iget v14, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->nextLat:I

    iget v15, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->nextLon:I

    move-object/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->nextAlt:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->updateRate:I

    move/from16 v17, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v18, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/UtmGlobalPosition;-><init>(Ljava/math/BigInteger;[BIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/UtmGlobalPosition$1;)V

    return-object v21
.end method

.method public final flags(Lio/dronefleet/mavlink/common/UtmDataAvailFlags;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0

    .line 761
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmDataAvailFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitwise\n                OR combination of the data available flags."
        enumType = Lio/dronefleet/mavlink/common/UtmDataAvailFlags;
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 753
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;"
        }
    .end annotation

    .line 775
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0

    .line 768
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flightState(Lio/dronefleet/mavlink/common/UtmFlightState;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0

    .line 725
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flightState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flightState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UtmFlightState;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flight state"
        enumType = Lio/dronefleet/mavlink/common/UtmFlightState;
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 717
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flightState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flightState(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;"
        }
    .end annotation

    .line 739
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flightState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flightState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0

    .line 732
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->flightState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final hAcc(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal position uncertainty (standard\n                deviation)"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 619
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->hAcc:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude (WGS84)"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 521
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude (WGS84)"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 535
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->lon:I

    return-object p0
.end method

.method public final nextAlt(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Next waypoint, altitude (WGS84)"
        position = 0xf
        signed = true
        unitSize = 0x4
    .end annotation

    .line 689
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->nextAlt:I

    return-object p0
.end method

.method public final nextLat(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Next waypoint, latitude (WGS84)"
        position = 0xd
        signed = true
        unitSize = 0x4
    .end annotation

    .line 661
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->nextLat:I

    return-object p0
.end method

.method public final nextLon(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Next waypoint, longitude (WGS84)"
        position = 0xe
        signed = true
        unitSize = 0x4
    .end annotation

    .line 675
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->nextLon:I

    return-object p0
.end method

.method public final relativeAlt(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above ground"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 563
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->relativeAlt:I

    return-object p0
.end method

.method public final time(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time of applicability of position\n                (microseconds since UNIX epoch)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 493
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->time:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final uasId([B)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x12
        description = "Unique UAS ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 507
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->uasId:[B

    return-object p0
.end method

.method public final updateRate(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time until next update. Set to 0 if\n                unknown or in data driven mode."
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 703
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->updateRate:I

    return-object p0
.end method

.method public final vAcc(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude uncertainty (standard\n                deviation)"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 633
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vAcc:I

    return-object p0
.end method

.method public final velAcc(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed uncertainty (standard\n                deviation)"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 647
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->velAcc:I

    return-object p0
.end method

.method public final vx(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground X speed (latitude, positive north)"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 577
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vx:I

    return-object p0
.end method

.method public final vy(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Y speed (longitude, positive east)"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 591
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vy:I

    return-object p0
.end method

.method public final vz(I)Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground Z speed (altitude, positive down)"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 605
    iput p1, p0, Lio/dronefleet/mavlink/common/UtmGlobalPosition$Builder;->vz:I

    return-object p0
.end method
