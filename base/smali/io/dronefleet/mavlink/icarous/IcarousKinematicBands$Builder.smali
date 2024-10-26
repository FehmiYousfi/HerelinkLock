.class public final Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
.super Ljava/lang/Object;
.source "IcarousKinematicBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private max1:F

.field private max2:F

.field private max3:F

.field private max4:F

.field private max5:F

.field private min1:F

.field private min2:F

.field private min3:F

.field private min4:F

.field private min5:F

.field private numbands:I

.field private type1:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private type2:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private type3:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private type4:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field

.field private type5:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;
    .locals 21

    move-object/from16 v0, p0

    .line 756
    new-instance v19, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;

    move-object/from16 v1, v19

    iget v2, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->numbands:I

    iget-object v3, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min1:F

    iget v5, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max1:F

    iget-object v6, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    iget v7, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min2:F

    iget v8, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max2:F

    iget-object v9, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    iget v10, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min3:F

    iget v11, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max3:F

    iget-object v12, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    iget v13, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min4:F

    iget v14, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max4:F

    iget-object v15, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min5:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max5:F

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands;-><init>(ILio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/icarous/IcarousKinematicBands$1;)V

    return-object v19
.end method

.method public final max1(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 503
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max1:F

    return-object p0
.end method

.method public final max2(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 565
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max2:F

    return-object p0
.end method

.method public final max3(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 627
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max3:F

    return-object p0
.end method

.method public final max4(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 689
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max4:F

    return-object p0
.end method

.method public final max5(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "max angle (degrees)"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 751
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->max5:F

    return-object p0
.end method

.method public final min1(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 490
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min1:F

    return-object p0
.end method

.method public final min2(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 552
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min2:F

    return-object p0
.end method

.method public final min3(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 614
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min3:F

    return-object p0
.end method

.method public final min4(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 676
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min4:F

    return-object p0
.end method

.method public final min5(F)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "min angle (degrees)"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 738
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->min5:F

    return-object p0
.end method

.method public final numbands(I)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of track bands"
        position = 0x1
        signed = true
        unitSize = 0x1
    .end annotation

    .line 441
    iput p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->numbands:I

    return-object p0
.end method

.method public final type1(Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 464
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type1(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type1(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 456
    iput-object p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type1:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type1(Ljava/util/Collection;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .line 478
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type1(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type1([Ljava/lang/Enum;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 471
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type1(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type2(Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 526
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type2(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type2(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 518
    iput-object p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type2:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type2(Ljava/util/Collection;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .line 540
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type2(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type2([Ljava/lang/Enum;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 533
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type2(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type3(Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 588
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type3(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type3(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 580
    iput-object p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type3:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type3(Ljava/util/Collection;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .line 602
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type3(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type3([Ljava/lang/Enum;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 595
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type3(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type4(Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 650
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type4(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type4(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 642
    iput-object p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type4:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type4(Ljava/util/Collection;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .line 664
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type4(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type4([Ljava/lang/Enum;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 657
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type4(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type5(Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 712
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type5(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type5(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the\n                TRACK_BAND_TYPES enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousTrackBandTypes;
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 704
    iput-object p1, p0, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type5:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type5(Ljava/util/Collection;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;"
        }
    .end annotation

    .line 726
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type5(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type5([Ljava/lang/Enum;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;
    .locals 0

    .line 719
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;->type5(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousKinematicBands$Builder;

    move-result-object p1

    return-object p1
.end method
