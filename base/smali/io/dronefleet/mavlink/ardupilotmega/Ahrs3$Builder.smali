.class public final Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
.super Ljava/lang/Object;
.source "Ahrs3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;
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

.field private v1:F

.field private v2:F

.field private v3:F

.field private v4:F

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 333
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->altitude:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;
    .locals 13

    .line 418
    new-instance v12, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->roll:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->pitch:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->yaw:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->altitude:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->lat:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->lng:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v1:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v2:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v3:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v4:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3;-><init>(FFFFIIFFFFLio/dronefleet/mavlink/ardupilotmega/Ahrs3$1;)V

    return-object v12
.end method

.method public final lat(I)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 347
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->lat:I

    return-object p0
.end method

.method public final lng(I)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 361
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->lng:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 307
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 294
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->roll:F

    return-object p0
.end method

.method public final v1(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable1."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 374
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v1:F

    return-object p0
.end method

.method public final v2(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable2."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 387
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v2:F

    return-object p0
.end method

.method public final v3(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable3."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 400
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v3:F

    return-object p0
.end method

.method public final v4(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Test variable4."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 413
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->v4:F

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 320
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Ahrs3$Builder;->yaw:F

    return-object p0
.end method
