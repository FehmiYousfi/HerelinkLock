.class public final Lio/dronefleet/mavlink/common/AisVessel$Builder;
.super Ljava/lang/Object;
.source "AisVessel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AisVessel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callsign:Ljava/lang/String;

.field private cog:I

.field private dimensionBow:I

.field private dimensionPort:I

.field private dimensionStarboard:I

.field private dimensionStern:I

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisFlags;",
            ">;"
        }
    .end annotation
.end field

.field private heading:I

.field private lat:I

.field private lon:I

.field private mmsi:J

.field private name:Ljava/lang/String;

.field private navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisNavStatus;",
            ">;"
        }
    .end annotation
.end field

.field private tslc:I

.field private turnRate:I

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisType;",
            ">;"
        }
    .end annotation
.end field

.field private velocity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/AisVessel;
    .locals 23

    move-object/from16 v0, p0

    .line 761
    new-instance v21, Lio/dronefleet/mavlink/common/AisVessel;

    move-object/from16 v1, v21

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->mmsi:J

    iget v4, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->lat:I

    iget v5, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->lon:I

    iget v6, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->cog:I

    iget v7, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->heading:I

    iget v8, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->velocity:I

    iget v9, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->turnRate:I

    iget-object v10, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v11, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget v12, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionBow:I

    iget v13, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionStern:I

    iget v14, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionPort:I

    iget v15, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionStarboard:I

    move-object/from16 v22, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->callsign:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->name:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->tslc:I

    move/from16 v18, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/AisVessel;-><init>(JIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILjava/lang/String;Ljava/lang/String;ILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/AisVessel$1;)V

    return-object v21
.end method

.method public final callsign(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x7
        description = "The vessel callsign"
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 693
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->callsign:Ljava/lang/String;

    return-object p0
.end method

.method public final cog(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course over ground"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 512
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->cog:I

    return-object p0
.end method

.method public final dimensionBow(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon location to\n                bow"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 637
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionBow:I

    return-object p0
.end method

.method public final dimensionPort(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon location to\n                port side"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 665
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionPort:I

    return-object p0
.end method

.method public final dimensionStarboard(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon\n                location to starboard side"
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 679
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionStarboard:I

    return-object p0
.end method

.method public final dimensionStern(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance from lat/lon location\n                to stern"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 651
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->dimensionStern:I

    return-object p0
.end method

.method public final flags(Lio/dronefleet/mavlink/common/AisFlags;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0

    .line 743
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AisVessel$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask to\n                indicate various statuses including valid data fields"
        enumType = Lio/dronefleet/mavlink/common/AisFlags;
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 735
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AisVessel$Builder;"
        }
    .end annotation

    .line 757
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0

    .line 750
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final heading(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "True heading"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 525
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->heading:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 499
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->lon:I

    return-object p0
.end method

.method public final mmsi(J)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mobile Marine Service Identifier, 9 decimal digits"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 471
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->mmsi:J

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "The vessel name"
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 707
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final navigationalStatus(Lio/dronefleet/mavlink/common/AisNavStatus;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0

    .line 575
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->navigationalStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final navigationalStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisNavStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AisVessel$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Navigational\n                status"
        enumType = Lio/dronefleet/mavlink/common/AisNavStatus;
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 567
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->navigationalStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final navigationalStatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AisVessel$Builder;"
        }
    .end annotation

    .line 589
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->navigationalStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs navigationalStatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0

    .line 582
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->navigationalStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final tslc(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since last communication in seconds"
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 720
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->tslc:I

    return-object p0
.end method

.method public final turnRate(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Turn rate"
        position = 0x8
        signed = true
        unitSize = 0x1
    .end annotation

    .line 552
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->turnRate:I

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/AisType;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0

    .line 610
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/AisType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AisVessel$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of vessels"
        enumType = Lio/dronefleet/mavlink/common/AisType;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 602
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AisVessel$Builder;"
        }
    .end annotation

    .line 624
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0

    .line 617
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AisVessel$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AisVessel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final velocity(I)Lio/dronefleet/mavlink/common/AisVessel$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed over ground"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 538
    iput p1, p0, Lio/dronefleet/mavlink/common/AisVessel$Builder;->velocity:I

    return-object p0
.end method
