.class public final Lio/dronefleet/mavlink/common/LandingTarget$Builder;
.super Ljava/lang/Object;
.source "LandingTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LandingTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private angleX:F

.field private angleY:F

.field private distance:F

.field private frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private positionValid:I

.field private q:[F

.field private sizeX:F

.field private sizeY:F

.field private targetNum:I

.field private timeUsec:Ljava/math/BigInteger;

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/LandingTargetType;",
            ">;"
        }
    .end annotation
.end field

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final angleX(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X-axis angular offset of the target from\n                the center of the image"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->angleX:F

    return-object p0
.end method

.method public final angleY(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y-axis angular offset of the target from\n                the center of the image"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 487
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->angleY:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/LandingTarget;
    .locals 18

    move-object/from16 v0, p0

    .line 642
    new-instance v17, Lio/dronefleet/mavlink/common/LandingTarget;

    iget-object v2, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->targetNum:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->angleX:F

    iget v6, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->angleY:F

    iget v7, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->distance:F

    iget v8, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->sizeX:F

    iget v9, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->sizeY:F

    iget v10, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->x:F

    iget v11, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->y:F

    iget v12, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->z:F

    iget-object v13, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->q:[F

    iget-object v14, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget v15, v0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->positionValid:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/common/LandingTarget;-><init>(Ljava/math/BigInteger;ILio/dronefleet/mavlink/util/EnumValue;FFFFFFFF[FLio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/common/LandingTarget$1;)V

    return-object v17
.end method

.method public final distance(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to the target from the vehicle"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 500
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->distance:F

    return-object p0
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0

    .line 446
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/LandingTarget$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame used for following\n                fields."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 438
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/LandingTarget$Builder;"
        }
    .end annotation

    .line 460
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0

    .line 453
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final positionValid(I)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Boolean indicating whether the position\n                fields (x, y, z, q, type) contain valid target position information (valid: 1,\n                invalid: 0). Default is 0 (invalid)."
        extension = true
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 637
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->positionValid:I

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion of landing target orientation (w, x, y, z\n                order, zero-rotation is 1, 0, 0, 0)"
        extension = true
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 584
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->q:[F

    return-object p0
.end method

.method public final sizeX(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Size of target along x-axis"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 513
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->sizeX:F

    return-object p0
.end method

.method public final sizeY(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Size of target along y-axis"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 526
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->sizeY:F

    return-object p0
.end method

.method public final targetNum(I)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID of the target if multiple targets are\n                present"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 423
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->targetNum:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 409
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/LandingTargetType;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0

    .line 607
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/LandingTargetType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/LandingTarget$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of landing target"
        enumType = Lio/dronefleet/mavlink/common/LandingTargetType;
        extension = true
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 599
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/LandingTarget$Builder;"
        }
    .end annotation

    .line 621
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0

    .line 614
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/LandingTarget$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position of the landing target in MAV_FRAME"
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 540
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position of the landing target in MAV_FRAME"
        extension = true
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 554
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/LandingTarget$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position of the landing target in MAV_FRAME"
        extension = true
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 568
    iput p1, p0, Lio/dronefleet/mavlink/common/LandingTarget$Builder;->z:F

    return-object p0
.end method
