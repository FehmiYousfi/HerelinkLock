.class public final Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
.super Ljava/lang/Object;
.source "SensorBias.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/SensorBias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private axbias:F

.field private aybias:F

.field private azbias:F

.field private gxbias:F

.field private gybias:F

.field private gzbias:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final axbias(F)Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Accelerometer X bias"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 203
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->axbias:F

    return-object p0
.end method

.method public final aybias(F)Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Accelerometer Y bias"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->aybias:F

    return-object p0
.end method

.method public final azbias(F)Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Accelerometer Z bias"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->azbias:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/slugs/SensorBias;
    .locals 9

    .line 273
    new-instance v8, Lio/dronefleet/mavlink/slugs/SensorBias;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->axbias:F

    iget v2, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->aybias:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->azbias:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->gxbias:F

    iget v5, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->gybias:F

    iget v6, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->gzbias:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/slugs/SensorBias;-><init>(FFFFFFLio/dronefleet/mavlink/slugs/SensorBias$1;)V

    return-object v8
.end method

.method public final gxbias(F)Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gyro X bias"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->gxbias:F

    return-object p0
.end method

.method public final gybias(F)Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gyro Y bias"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->gybias:F

    return-object p0
.end method

.method public final gzbias(F)Lio/dronefleet/mavlink/slugs/SensorBias$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Gyro Z bias"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorBias$Builder;->gzbias:F

    return-object p0
.end method
