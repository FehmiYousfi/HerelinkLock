.class public final Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
.super Ljava/lang/Object;
.source "Gps2Rtk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Gps2Rtk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accuracy:J

.field private baselineAMm:I

.field private baselineBMm:I

.field private baselineCMm:I

.field private baselineCoordsType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/RtkBaselineCoordinateSystem;",
            ">;"
        }
    .end annotation
.end field

.field private iarNumHypotheses:I

.field private nsats:I

.field private rtkHealth:I

.field private rtkRate:I

.field private rtkReceiverId:I

.field private timeLastBaselineMs:J

.field private tow:J

.field private wn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accuracy(J)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current estimate of baseline accuracy."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 548
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->accuracy:J

    return-object p0
.end method

.method public final baselineAMm(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current baseline in ECEF x or NED\n                north component."
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 505
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineAMm:I

    return-object p0
.end method

.method public final baselineBMm(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current baseline in ECEF y or NED\n                east component."
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 520
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineBMm:I

    return-object p0
.end method

.method public final baselineCMm(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current baseline in ECEF z or NED\n                down component."
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 535
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCMm:I

    return-object p0
.end method

.method public final baselineCoordsType(Lio/dronefleet/mavlink/common/RtkBaselineCoordinateSystem;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0

    .line 477
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCoordsType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final baselineCoordsType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/RtkBaselineCoordinateSystem;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate system of baseline"
        enumType = Lio/dronefleet/mavlink/common/RtkBaselineCoordinateSystem;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 469
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCoordsType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final baselineCoordsType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;"
        }
    .end annotation

    .line 491
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCoordsType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs baselineCoordsType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0

    .line 484
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCoordsType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/Gps2Rtk;
    .locals 23

    move-object/from16 v0, p0

    .line 568
    new-instance v19, Lio/dronefleet/mavlink/common/Gps2Rtk;

    move-object/from16 v1, v19

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->timeLastBaselineMs:J

    iget v4, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->rtkReceiverId:I

    iget v5, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->wn:I

    iget-wide v6, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->tow:J

    iget v8, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->rtkHealth:I

    iget v9, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->rtkRate:I

    iget v10, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->nsats:I

    iget-object v11, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCoordsType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v12, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineAMm:I

    iget v13, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineBMm:I

    iget v14, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->baselineCMm:I

    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->accuracy:J

    move-wide v15, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->iarNumHypotheses:I

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/Gps2Rtk;-><init>(JIIJIIILio/dronefleet/mavlink/util/EnumValue;IIIJILio/dronefleet/mavlink/common/Gps2Rtk$1;)V

    return-object v19
.end method

.method public final iarNumHypotheses(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current number of integer ambiguity\n                hypotheses."
        position = 0xd
        signed = true
        unitSize = 0x4
    .end annotation

    .line 563
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->iarNumHypotheses:I

    return-object p0
.end method

.method public final nsats(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current number of sats used for RTK calculation."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 454
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->nsats:I

    return-object p0
.end method

.method public final rtkHealth(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS-specific health report for RTK data."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 427
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->rtkHealth:I

    return-object p0
.end method

.method public final rtkRate(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Rate of baseline messages being\n                received by GPS"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 441
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->rtkRate:I

    return-object p0
.end method

.method public final rtkReceiverId(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Identification of connected RTK receiver."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 388
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->rtkReceiverId:I

    return-object p0
.end method

.method public final timeLastBaselineMs(J)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since boot of last\n                baseline message received."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 375
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->timeLastBaselineMs:J

    return-object p0
.end method

.method public final tow(J)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS Time of Week of last baseline"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 414
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->tow:J

    return-object p0
.end method

.method public final wn(I)Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS Week Number of last baseline"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/common/Gps2Rtk$Builder;->wn:I

    return-object p0
.end method
