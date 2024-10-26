.class public final Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
.super Ljava/lang/Object;
.source "Ahrs2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Ahrs2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:F

.field private lat:I

.field private lng:I

.field private pitch:F

.field private roll:F

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 243
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->altitude:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Ahrs2;
    .locals 9

    .line 276
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->roll:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->pitch:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->yaw:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->altitude:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->lat:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->lng:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2;-><init>(FFFFIILio/dronefleet/mavlink/ardupilotmega/Ahrs2$1;)V

    return-object v8
.end method

.method public final lat(I)Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 257
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->lat:I

    return-object p0
.end method

.method public final lng(I)Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 271
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->lng:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 217
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 204
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->roll:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 230
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs2$Builder;->yaw:F

    return-object p0
.end method
