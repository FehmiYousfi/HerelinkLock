.class public final Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
.super Ljava/lang/Object;
.source "VisionPositionDelta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private angleDelta:[F

.field private confidence:F

.field private positionDelta:[F

.field private timeDeltaUsec:Ljava/math/BigInteger;

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final angleDelta([F)Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Defines a rotation vector [roll,\n                pitch, yaw] to the current MAV_FRAME_BODY_FRD from the previous MAV_FRAME_BODY_FRD."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 223
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->angleDelta:[F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;
    .locals 8

    .line 259
    new-instance v7, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->timeDeltaUsec:Ljava/math/BigInteger;

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->angleDelta:[F

    iget-object v4, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->positionDelta:[F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->confidence:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[F[FFLio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$1;)V

    return-object v7
.end method

.method public final confidence(F)Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Normalised confidence value from 0 to\n                100."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->confidence:F

    return-object p0
.end method

.method public final positionDelta([F)Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Change in position to the current\n                MAV_FRAME_BODY_FRD from the previous FRAME_BODY_FRD rotated to the current\n                MAV_FRAME_BODY_FRD."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 240
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->positionDelta:[F

    return-object p0
.end method

.method public final timeDeltaUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the last reported\n                camera frame."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 207
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->timeDeltaUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (synced to UNIX time or\n                since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 193
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/VisionPositionDelta$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
