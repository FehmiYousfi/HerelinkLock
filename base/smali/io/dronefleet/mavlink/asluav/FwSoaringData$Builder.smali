.class public final Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
.super Ljava/lang/Object;
.source "FwSoaringData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/FwSoaringData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private controlmode:I

.field private debugvar1:F

.field private debugvar2:F

.field private disttosoarpoint:F

.field private loiterdirection:F

.field private loiterradius:F

.field private thermalgseast:F

.field private thermalgsnorth:F

.field private timestamp:Ljava/math/BigInteger;

.field private timestampmodechanged:Ljava/math/BigInteger;

.field private tseDot:F

.field private valid:I

.field private varlat:F

.field private varlon:F

.field private varr:F

.field private varw:F

.field private vsinkexp:F

.field private xlat:F

.field private xlon:F

.field private xr:F

.field private xw:F

.field private z1Exp:F

.field private z1Localupdraftspeed:F

.field private z2Deltaroll:F

.field private z2Exp:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/FwSoaringData;
    .locals 30

    move-object/from16 v0, p0

    .line 955
    new-instance v28, Lio/dronefleet/mavlink/asluav/FwSoaringData;

    move-object/from16 v1, v28

    iget-object v2, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->timestamp:Ljava/math/BigInteger;

    iget-object v3, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->timestampmodechanged:Ljava/math/BigInteger;

    iget v4, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xw:F

    iget v5, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xr:F

    iget v6, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xlat:F

    iget v7, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xlon:F

    iget v8, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varw:F

    iget v9, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varr:F

    iget v10, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varlat:F

    iget v11, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varlon:F

    iget v12, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->loiterradius:F

    iget v13, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->loiterdirection:F

    iget v14, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->disttosoarpoint:F

    iget v15, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->vsinkexp:F

    move-object/from16 v29, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z1Localupdraftspeed:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z2Deltaroll:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z1Exp:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z2Exp:F

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->thermalgsnorth:F

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->thermalgseast:F

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->tseDot:F

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->debugvar1:F

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->debugvar2:F

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->controlmode:I

    move/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->valid:I

    move/from16 v26, v1

    const/16 v27, 0x0

    move-object/from16 v1, v29

    invoke-direct/range {v1 .. v27}, Lio/dronefleet/mavlink/asluav/FwSoaringData;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;FFFFFFFFFFFFFFFFFFFFFIILio/dronefleet/mavlink/asluav/FwSoaringData$1;)V

    return-object v28
.end method

.method public final controlmode(I)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control Mode [-]"
        position = 0x18
        unitSize = 0x1
    .end annotation

    .line 937
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->controlmode:I

    return-object p0
.end method

.method public final debugvar1(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug variable 1"
        position = 0x16
        unitSize = 0x4
    .end annotation

    .line 911
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->debugvar1:F

    return-object p0
.end method

.method public final debugvar2(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Debug variable 2"
        position = 0x17
        unitSize = 0x4
    .end annotation

    .line 924
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->debugvar2:F

    return-object p0
.end method

.method public final disttosoarpoint(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to soar point"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 789
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->disttosoarpoint:F

    return-object p0
.end method

.method public final loiterdirection(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Suggested loiter direction"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 776
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->loiterdirection:F

    return-object p0
.end method

.method public final loiterradius(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Suggested loiter radius"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 763
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->loiterradius:F

    return-object p0
.end method

.method public final thermalgseast(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal drift (from estimator\n                prediction step only)"
        position = 0x14
        unitSize = 0x4
    .end annotation

    .line 885
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->thermalgseast:F

    return-object p0
.end method

.method public final thermalgsnorth(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal drift (from estimator\n                prediction step only)"
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 871
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->thermalgsnorth:F

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 632
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final timestampmodechanged(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp since last mode\n                change"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 646
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->timestampmodechanged:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final tseDot(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total specific energy change (filtered)"
        position = 0x15
        unitSize = 0x4
    .end annotation

    .line 898
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->tseDot:F

    return-object p0
.end method

.method public final valid(I)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Data valid [-]"
        position = 0x19
        unitSize = 0x1
    .end annotation

    .line 950
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->valid:I

    return-object p0
.end method

.method public final varlat(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance Lat"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 737
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varlat:F

    return-object p0
.end method

.method public final varlon(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance Lon"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 750
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varlon:F

    return-object p0
.end method

.method public final varr(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance R"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 724
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varr:F

    return-object p0
.end method

.method public final varw(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Variance W"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 711
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->varw:F

    return-object p0
.end method

.method public final vsinkexp(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Expected sink rate at current airspeed,\n                roll and throttle"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 803
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->vsinkexp:F

    return-object p0
.end method

.method public final xlat(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal center latitude"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 685
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xlat:F

    return-object p0
.end method

.method public final xlon(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal center longitude"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 698
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xlon:F

    return-object p0
.end method

.method public final xr(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal radius"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 672
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xr:F

    return-object p0
.end method

.method public final xw(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Thermal core updraft strength"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 659
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->xw:F

    return-object p0
.end method

.method public final z1Exp(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Expected measurement 1"
        position = 0x11
        unitSize = 0x4
    .end annotation

    .line 844
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z1Exp:F

    return-object p0
.end method

.method public final z1Localupdraftspeed(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measurement / updraft speed\n                at current/local airplane position"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 817
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z1Localupdraftspeed:F

    return-object p0
.end method

.method public final z2Deltaroll(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measurement / roll angle tracking\n                error"
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 831
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z2Deltaroll:F

    return-object p0
.end method

.method public final z2Exp(F)Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Expected measurement 2"
        position = 0x12
        unitSize = 0x4
    .end annotation

    .line 857
    iput p1, p0, Lio/dronefleet/mavlink/asluav/FwSoaringData$Builder;->z2Exp:F

    return-object p0
.end method
