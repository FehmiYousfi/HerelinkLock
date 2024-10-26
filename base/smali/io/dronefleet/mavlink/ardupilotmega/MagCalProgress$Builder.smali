.class public final Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
.super Ljava/lang/Object;
.source "MagCalProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attempt:I

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

.field private completionMask:[B

.field private completionPct:I

.field private directionX:F

.field private directionY:F

.field private directionZ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attempt(I)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Attempt number."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 340
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->attempt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;
    .locals 12

    .line 412
    new-instance v11, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->compassId:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calMask:I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->attempt:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->completionPct:I

    iget-object v6, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->completionMask:[B

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->directionX:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->directionY:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->directionZ:F

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;-><init>(IILio/dronefleet/mavlink/util/EnumValue;II[BFFFLio/dronefleet/mavlink/ardupilotmega/MagCalProgress$1;)V

    return-object v11
.end method

.method public final calMask(I)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask of compasses being\n                calibrated."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 292
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calMask:I

    return-object p0
.end method

.method public final calStatus(Lio/dronefleet/mavlink/common/MagCalStatus;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0

    .line 314
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Calibration Status."
        enumType = Lio/dronefleet/mavlink/common/MagCalStatus;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 306
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final calStatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;"
        }
    .end annotation

    .line 328
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs calStatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0

    .line 321
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->calStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final compassId(I)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Compass being calibrated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 278
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->compassId:I

    return-object p0
.end method

.method public final completionMask([B)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Bitmask of sphere sections (see\n                http://en.wikipedia.org/wiki/Geodesic_grid)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 368
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->completionMask:[B

    return-object p0
.end method

.method public final completionPct(I)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Completion percentage."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 353
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->completionPct:I

    return-object p0
.end method

.method public final directionX(F)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame direction vector for display."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 381
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->directionX:F

    return-object p0
.end method

.method public final directionY(F)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame direction vector for display."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 394
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->directionY:F

    return-object p0
.end method

.method public final directionZ(F)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame direction vector for display."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 407
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;->directionZ:F

    return-object p0
.end method
