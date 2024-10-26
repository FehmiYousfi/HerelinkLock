.class public final Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
.super Ljava/lang/Object;
.source "Ahrs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Ahrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accelWeight:F

.field private errorRp:F

.field private errorYaw:F

.field private omegaix:F

.field private omegaiy:F

.field private omegaiz:F

.field private renormVal:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accelWeight(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average accel_weight."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 264
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->accelWeight:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Ahrs;
    .locals 10

    .line 308
    new-instance v9, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->omegaix:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->omegaiy:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->omegaiz:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->accelWeight:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->renormVal:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->errorRp:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->errorYaw:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs;-><init>(FFFFFFFLio/dronefleet/mavlink/ardupilotmega/Ahrs$1;)V

    return-object v9
.end method

.method public final errorRp(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average error_roll_pitch value."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->errorRp:F

    return-object p0
.end method

.method public final errorYaw(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average error_yaw value."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 303
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->errorYaw:F

    return-object p0
.end method

.method public final omegaix(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X gyro drift estimate."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 225
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->omegaix:F

    return-object p0
.end method

.method public final omegaiy(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y gyro drift estimate."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 238
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->omegaiy:F

    return-object p0
.end method

.method public final omegaiz(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z gyro drift estimate."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 251
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->omegaiz:F

    return-object p0
.end method

.method public final renormVal(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Average renormalisation value."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 277
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs$Builder;->renormVal:F

    return-object p0
.end method
