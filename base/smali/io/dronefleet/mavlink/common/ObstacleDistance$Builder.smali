.class public final Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
.super Ljava/lang/Object;
.source "ObstacleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ObstacleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private angleOffset:F

.field private distances:[I

.field private frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private increment:I

.field private incrementF:F

.field private maxDistance:I

.field private minDistance:I

.field private sensorType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;"
        }
    .end annotation
.end field

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final angleOffset(F)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Relative angle offset of the 0-index\n                element in the distances array. Value of 0 corresponds to forward. Positive is\n                clockwise direction, negative is counter-clockwise."
        extension = true
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 451
    iput p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->angleOffset:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/ObstacleDistance;
    .locals 12

    .line 503
    new-instance v11, Lio/dronefleet/mavlink/common/ObstacleDistance;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->distances:[I

    iget v4, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->increment:I

    iget v5, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->minDistance:I

    iget v6, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->maxDistance:I

    iget v7, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->incrementF:F

    iget v8, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->angleOffset:F

    iget-object v9, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/ObstacleDistance;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;[IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ObstacleDistance$1;)V

    return-object v11
.end method

.method public final distances([I)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x48
        description = "Distance of obstacles around the\n                vehicle with index 0 corresponding to north + angle_offset, unless otherwise\n                specified in the frame. A value of 0 is valid and means that the obstacle is\n                practically touching the sensor. A value of max_distance +1 means no obstacle is\n                present. A value of UINT16_MAX for unknown/not used. In a array element, one unit\n                corresponds to 1cm."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 372
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->distances:[I

    return-object p0
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0

    .line 481
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame of reference for\n                the yaw rotation and offset of the sensor data. Defaults to MAV_FRAME_GLOBAL, which\n                is north aligned. For body-mounted sensors use MAV_FRAME_BODY_FRD, which is vehicle\n                front aligned."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        extension = true
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 471
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;"
        }
    .end annotation

    .line 499
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0

    .line 490
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final increment(I)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular width in degrees of each\n                array element. Increment direction is clockwise. This field is ignored if\n                increment_f is non-zero."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 388
    iput p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->increment:I

    return-object p0
.end method

.method public final incrementF(F)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular width in degrees of each\n                array element as a float. If non-zero then this value is used instead of the uint8_t\n                increment field. Positive is clockwise direction, negative is counter-clockwise."
        extension = true
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 434
    iput p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->incrementF:F

    return-object p0
.end method

.method public final maxDistance(I)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum distance the sensor can\n                measure."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 416
    iput p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->maxDistance:I

    return-object p0
.end method

.method public final minDistance(I)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum distance the sensor can\n                measure."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 402
    iput p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->minDistance:I

    return-object p0
.end method

.method public final sensorType(Lio/dronefleet/mavlink/common/MavDistanceSensor;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0

    .line 337
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Class id of the\n                distance sensor type."
        enumType = Lio/dronefleet/mavlink/common/MavDistanceSensor;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 329
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final sensorType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;"
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs sensorType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0

    .line 344
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 314
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ObstacleDistance$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
