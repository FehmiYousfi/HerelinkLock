.class public final Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
.super Ljava/lang/Object;
.source "DistanceSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/DistanceSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private covariance:I

.field private currentDistance:I

.field private horizontalFov:F

.field private id:I

.field private maxDistance:I

.field private minDistance:I

.field private orientation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private quaternion:[F

.field private signalQuality:I

.field private timeBootMs:J

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;"
        }
    .end annotation
.end field

.field private verticalFov:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/DistanceSensor;
    .locals 17

    move-object/from16 v0, p0

    .line 600
    new-instance v16, Lio/dronefleet/mavlink/common/DistanceSensor;

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->timeBootMs:J

    iget v4, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->minDistance:I

    iget v5, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->maxDistance:I

    iget v6, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->currentDistance:I

    iget-object v7, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget v8, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->id:I

    iget-object v9, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    iget v10, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->covariance:I

    iget v11, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->horizontalFov:F

    iget v12, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->verticalFov:F

    iget-object v13, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->quaternion:[F

    iget v14, v0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->signalQuality:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/common/DistanceSensor;-><init>(JIIILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;IFF[FILio/dronefleet/mavlink/common/DistanceSensor$1;)V

    return-object v16
.end method

.method public final covariance(I)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measurement variance. Max standard\n                deviation is 6cm. 255 if unknown."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 522
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->covariance:I

    return-object p0
.end method

.method public final currentDistance(I)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current distance reading"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 414
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->currentDistance:I

    return-object p0
.end method

.method public final horizontalFov(F)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal Field of View (angle)\n                where the distance measurement is valid and the field of view is known. Otherwise\n                this is set to 0."
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 539
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->horizontalFov:F

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard ID of the sensor"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 462
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->id:I

    return-object p0
.end method

.method public final maxDistance(I)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum distance the sensor can\n                measure"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 401
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->maxDistance:I

    return-object p0
.end method

.method public final minDistance(I)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum distance the sensor can\n                measure"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->minDistance:I

    return-object p0
.end method

.method public final orientation(Lio/dronefleet/mavlink/common/MavSensorOrientation;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0

    .line 491
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->orientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final orientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSensorOrientation;",
            ">;)",
            "Lio/dronefleet/mavlink/common/DistanceSensor$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Direction the\n                sensor faces. downward-facing: ROTATION_PITCH_270, upward-facing: ROTATION_PITCH_90,\n                backward-facing: ROTATION_PITCH_180, forward-facing: ROTATION_NONE, left-facing:\n                ROTATION_YAW_90, right-facing: ROTATION_YAW_270"
        enumType = Lio/dronefleet/mavlink/common/MavSensorOrientation;
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 481
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->orientation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final orientation(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/DistanceSensor$Builder;"
        }
    .end annotation

    .line 509
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->orientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs orientation([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0

    .line 500
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->orientation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final quaternion([F)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion of the sensor orientation in vehicle\n                body frame (w, x, y, z order, zero-rotation is 1, 0, 0, 0). Zero-rotation is along\n                the vehicle body x-axis. This field is required if the orientation is set to\n                MAV_SENSOR_ROTATION_CUSTOM. Set it to 0 if invalid.\""
        extension = true
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 576
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->quaternion:[F

    return-object p0
.end method

.method public final signalQuality(I)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Signal quality of the sensor.\n                Specific to each sensor type, representing the relation of the signal strength with\n                the target reflectivity, distance, size or aspect, but normalised as a percentage. 0\n                = unknown/unset signal quality, 1 = invalid signal, 100 = perfect signal."
        extension = true
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 595
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->signalQuality:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 373
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/MavDistanceSensor;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0

    .line 436
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;)",
            "Lio/dronefleet/mavlink/common/DistanceSensor$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of distance sensor."
        enumType = Lio/dronefleet/mavlink/common/MavDistanceSensor;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 428
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/DistanceSensor$Builder;"
        }
    .end annotation

    .line 450
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0

    .line 443
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final verticalFov(F)Lio/dronefleet/mavlink/common/DistanceSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical Field of View (angle) where\n                the distance measurement is valid and the field of view is known. Otherwise this is\n                set to 0."
        extension = true
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 556
    iput p1, p0, Lio/dronefleet/mavlink/common/DistanceSensor$Builder;->verticalFov:F

    return-object p0
.end method
