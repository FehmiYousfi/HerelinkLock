.class public final Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
.super Ljava/lang/Object;
.source "OpticalFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpticalFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private flowCompMX:F

.field private flowCompMY:F

.field private flowRateX:F

.field private flowRateY:F

.field private flowX:I

.field private flowY:I

.field private groundDistance:F

.field private quality:I

.field private sensorId:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/OpticalFlow;
    .locals 13

    .line 436
    new-instance v12, Lio/dronefleet/mavlink/common/OpticalFlow;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->sensorId:I

    iget v3, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowX:I

    iget v4, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowY:I

    iget v5, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowCompMX:F

    iget v6, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowCompMY:F

    iget v7, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->quality:I

    iget v8, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->groundDistance:F

    iget v9, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowRateX:F

    iget v10, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowRateY:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/common/OpticalFlow;-><init>(Ljava/math/BigInteger;IIIFFIFFFLio/dronefleet/mavlink/common/OpticalFlow$1;)V

    return-object v12
.end method

.method public final flowCompMX(F)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in x-sensor direction,\n                angular-speed compensated"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 361
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowCompMX:F

    return-object p0
.end method

.method public final flowCompMY(F)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in y-sensor direction,\n                angular-speed compensated"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 375
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowCompMY:F

    return-object p0
.end method

.method public final flowRateX(F)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow rate about X axis"
        extension = true
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 417
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowRateX:F

    return-object p0
.end method

.method public final flowRateY(F)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow rate about Y axis"
        extension = true
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 431
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowRateY:F

    return-object p0
.end method

.method public final flowX(I)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in x-sensor direction"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 333
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowX:I

    return-object p0
.end method

.method public final flowY(I)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in y-sensor direction"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 347
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->flowY:I

    return-object p0
.end method

.method public final groundDistance(F)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Ground distance. Positive value:\n                distance known. Negative value: Unknown distance"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 403
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->groundDistance:F

    return-object p0
.end method

.method public final quality(I)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Optical flow quality / confidence. 0: bad, 255:\n                maximum quality"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 389
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->quality:I

    return-object p0
.end method

.method public final sensorId(I)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 319
    iput p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->sensorId:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/OpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 306
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpticalFlow$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
