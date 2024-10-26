.class public final Lio/dronefleet/mavlink/common/MagCalReport$Builder;
.super Ljava/lang/Object;
.source "MagCalReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MagCalReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private autosaved:I

.field private calMask:I

.field private calStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;"
        }
    .end annotation
.end field

.field private compassId:I

.field private diagX:F

.field private diagY:F

.field private diagZ:F

.field private fitness:F

.field private newOrientation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private offdiagX:F

.field private offdiagY:F

.field private offdiagZ:F

.field private ofsX:F

.field private ofsY:F

.field private ofsZ:F

.field private oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private orientationConfidence:F

.field private scaleFactor:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autosaved(I)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0=requires a MAV_CMD_DO_ACCEPT_MAG_CAL, 1=saved\n                to parameters."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 549
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->autosaved:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/MagCalReport;
    .locals 23

    move-object/from16 v0, p0

    .line 787
    new-instance v21, Lio/dronefleet/mavlink/common/MagCalReport;

    move-object/from16 v1, v21

    iget v2, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->compassId:I

    iget v3, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calMask:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->autosaved:I

    iget v6, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->fitness:F

    iget v7, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->ofsX:F

    iget v8, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->ofsY:F

    iget v9, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->ofsZ:F

    iget v10, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->diagX:F

    iget v11, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->diagY:F

    iget v12, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->diagZ:F

    iget v13, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->offdiagX:F

    iget v14, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->offdiagY:F

    iget v15, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->offdiagZ:F

    move-object/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->orientationConfidence:F

    move/from16 v16, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->scaleFactor:F

    move/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/MagCalReport;-><init>(IILio/dronefleet/mavlink/util/EnumValue;IFFFFFFFFFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FLio/dronefleet/mavlink/common/MagCalReport$1;)V

    return-object v21
.end method

.method public final calMask(I)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask of compasses being\n                calibrated."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 500
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calMask:I

    return-object p0
.end method

.method public final calStatus(Lio/dronefleet/mavlink/common/MagCalStatus;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0

    .line 522
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MagCalReport$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Calibration Status."
        enumType = Lio/dronefleet/mavlink/common/MagCalStatus;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 514
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final calStatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MagCalReport$Builder;"
        }
    .end annotation

    .line 536
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs calStatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0

    .line 529
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final compassId(I)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Compass being calibrated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 486
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->compassId:I

    return-object p0
.end method

.method public final diagX(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X diagonal (matrix 11)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 614
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->diagX:F

    return-object p0
.end method

.method public final diagY(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y diagonal (matrix 22)."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 627
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->diagY:F

    return-object p0
.end method

.method public final diagZ(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z diagonal (matrix 33)."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 640
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->diagZ:F

    return-object p0
.end method

.method public final fitness(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RMS milligauss residuals."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 562
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->fitness:F

    return-object p0
.end method

.method public final newOrientation(Lio/dronefleet/mavlink/common/MavSensorOrientation;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0

    .line 755
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->newOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final newOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MagCalReport$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "orientation\n                after calibration."
        enumType = Lio/dronefleet/mavlink/common/MavSensorOrientation;
        extension = true
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 747
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->newOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final newOrientation(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MagCalReport$Builder;"
        }
    .end annotation

    .line 769
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->newOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs newOrientation([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0

    .line 762
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->newOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final offdiagX(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X off-diagonal (matrix 12 and 21)."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 653
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->offdiagX:F

    return-object p0
.end method

.method public final offdiagY(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y off-diagonal (matrix 13 and 31)."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 666
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->offdiagY:F

    return-object p0
.end method

.method public final offdiagZ(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z off-diagonal (matrix 32 and 23)."
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 679
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->offdiagZ:F

    return-object p0
.end method

.method public final ofsX(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X offset."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 575
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->ofsX:F

    return-object p0
.end method

.method public final ofsY(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y offset."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 588
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->ofsY:F

    return-object p0
.end method

.method public final ofsZ(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z offset."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 601
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->ofsZ:F

    return-object p0
.end method

.method public final oldOrientation(Lio/dronefleet/mavlink/common/MavSensorOrientation;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0

    .line 718
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->oldOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final oldOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MagCalReport$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "orientation\n                before calibration."
        enumType = Lio/dronefleet/mavlink/common/MavSensorOrientation;
        extension = true
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 710
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->oldOrientation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final oldOrientation(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/MagCalReport$Builder;"
        }
    .end annotation

    .line 732
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->oldOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs oldOrientation([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0

    .line 725
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->oldOrientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/MagCalReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final orientationConfidence(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Confidence in orientation (higher is\n                better)."
        extension = true
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 694
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->orientationConfidence:F

    return-object p0
.end method

.method public final scaleFactor(F)Lio/dronefleet/mavlink/common/MagCalReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "field radius correction factor"
        extension = true
        position = 0x13
        unitSize = 0x4
    .end annotation

    .line 782
    iput p1, p0, Lio/dronefleet/mavlink/common/MagCalReport$Builder;->scaleFactor:F

    return-object p0
.end method
