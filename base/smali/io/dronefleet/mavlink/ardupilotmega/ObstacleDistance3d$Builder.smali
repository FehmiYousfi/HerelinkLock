.class public final Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
.super Ljava/lang/Object;
.source "ObstacleDistance3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private maxDistance:F

.field private minDistance:F

.field private obstacleId:I

.field private sensorType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;"
        }
    .end annotation
.end field

.field private timeBootMs:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d;
    .locals 13

    .line 451
    new-instance v12, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->obstacleId:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->x:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->y:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->z:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->minDistance:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->maxDistance:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IFFFFFLio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$1;)V

    return-object v12
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0

    .line 350
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame of reference."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 342
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0

    .line 357
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final maxDistance(F)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum distance the sensor can\n                measure."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 446
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->maxDistance:F

    return-object p0
.end method

.method public final minDistance(F)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum distance the sensor can\n                measure."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 432
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->minDistance:F

    return-object p0
.end method

.method public final obstacleId(I)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique ID given to each\n                obstacle so that its movement can be tracked. Use UINT16_MAX if object ID is unknown\n                or cannot be determined."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 379
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->obstacleId:I

    return-object p0
.end method

.method public final sensorType(Lio/dronefleet/mavlink/common/MavDistanceSensor;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0

    .line 315
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavDistanceSensor;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Class id of the\n                distance sensor type."
        enumType = Lio/dronefleet/mavlink/common/MavDistanceSensor;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 307
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->sensorType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final sensorType(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;"
        }
    .end annotation

    .line 329
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs sensorType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0

    .line 322
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->sensorType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 292
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X position of the obstacle."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 392
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y position of the obstacle."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 405
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z position of the obstacle."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 418
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ObstacleDistance3d$Builder;->z:F

    return-object p0
.end method
