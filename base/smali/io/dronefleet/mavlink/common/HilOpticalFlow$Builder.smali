.class public final Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
.super Ljava/lang/Object;
.source "HilOpticalFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilOpticalFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private distance:F

.field private integratedX:F

.field private integratedXgyro:F

.field private integratedY:F

.field private integratedYgyro:F

.field private integratedZgyro:F

.field private integrationTimeUs:J

.field private quality:I

.field private sensorId:I

.field private temperature:I

.field private timeDeltaDistanceUs:J

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/HilOpticalFlow;
    .locals 18

    move-object/from16 v0, p0

    .line 521
    new-instance v17, Lio/dronefleet/mavlink/common/HilOpticalFlow;

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->sensorId:I

    iget-wide v4, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integrationTimeUs:J

    iget v6, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedX:F

    iget v7, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedY:F

    iget v8, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedXgyro:F

    iget v9, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedYgyro:F

    iget v10, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedZgyro:F

    iget v11, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->temperature:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->quality:I

    iget-wide v13, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->timeDeltaDistanceUs:J

    iget v15, v0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->distance:F

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/common/HilOpticalFlow;-><init>(Ljava/math/BigInteger;IJFFFFFIIJFLio/dronefleet/mavlink/common/HilOpticalFlow$1;)V

    return-object v17
.end method

.method public final distance(F)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to the center of the flow field.\n                Positive value (including zero): distance known. Negative value: Unknown distance."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 516
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->distance:F

    return-object p0
.end method

.method public final integratedX(F)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in radians around X axis\n                (Sensor RH rotation about the X axis induces a positive flow. Sensor linear motion\n                along the positive Y axis induces a negative flow.)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 404
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedX:F

    return-object p0
.end method

.method public final integratedXgyro(F)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RH rotation around X axis"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 433
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedXgyro:F

    return-object p0
.end method

.method public final integratedY(F)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flow in radians around Y axis\n                (Sensor RH rotation about the Y axis induces a positive flow. Sensor linear motion\n                along the positive X axis induces a positive flow.)"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 420
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedY:F

    return-object p0
.end method

.method public final integratedYgyro(F)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RH rotation around Y axis"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 446
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedYgyro:F

    return-object p0
.end method

.method public final integratedZgyro(F)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RH rotation around Z axis"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 459
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integratedZgyro:F

    return-object p0
.end method

.method public final integrationTimeUs(J)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Integration time. Divide\n                integrated_x and integrated_y by the integration time to obtain average flow. The\n                integration time also indicates the."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 388
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->integrationTimeUs:J

    return-object p0
.end method

.method public final quality(I)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Optical flow quality / confidence. 0: no valid\n                flow, 255: maximum quality"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 487
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->quality:I

    return-object p0
.end method

.method public final sensorId(I)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 372
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->sensorId:I

    return-object p0
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 473
    iput p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->temperature:I

    return-object p0
.end method

.method public final timeDeltaDistanceUs(J)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the distance\n                was sampled."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 501
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->timeDeltaDistanceUs:J

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 359
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilOpticalFlow$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
