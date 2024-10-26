.class public final Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
.super Ljava/lang/Object;
.source "CameraFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altMsl:F

.field private altRel:F

.field private camIdx:I

.field private completedCaptures:I

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraFeedbackFlags;",
            ">;"
        }
    .end annotation
.end field

.field private focLen:F

.field private imgIdx:I

.field private lat:I

.field private lng:I

.field private pitch:F

.field private roll:F

.field private targetSystem:I

.field private timeUsec:Ljava/math/BigInteger;

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altMsl(F)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL)."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 472
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->altMsl:F

    return-object p0
.end method

.method public final altRel(F)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (Relative to HOME location)."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->altRel:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback;
    .locals 18

    move-object/from16 v0, p0

    .line 591
    new-instance v17, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback;

    iget-object v2, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->targetSystem:I

    iget v4, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->camIdx:I

    iget v5, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->imgIdx:I

    iget v6, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->lat:I

    iget v7, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->lng:I

    iget v8, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->altMsl:F

    iget v9, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->altRel:F

    iget v10, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->roll:F

    iget v11, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->pitch:F

    iget v12, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->yaw:F

    iget v13, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->focLen:F

    iget-object v14, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v15, v0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->completedCaptures:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback;-><init>(Ljava/math/BigInteger;IIIIIFFFFFFLio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/ardupilotmega/CameraFeedback$1;)V

    return-object v17
.end method

.method public final camIdx(I)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera ID."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 418
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->camIdx:I

    return-object p0
.end method

.method public final completedCaptures(I)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Completed image captures."
        extension = true
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 586
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->completedCaptures:I

    return-object p0
.end method

.method public final flags(Lio/dronefleet/mavlink/ardupilotmega/CameraFeedbackFlags;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0

    .line 559
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraFeedbackFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Feedback flags."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/CameraFeedbackFlags;
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 551
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;"
        }
    .end annotation

    .line 573
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0

    .line 566
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final focLen(F)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Focal Length."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 537
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->focLen:F

    return-object p0
.end method

.method public final imgIdx(I)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image index."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 431
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->imgIdx:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 445
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->lat:I

    return-object p0
.end method

.method public final lng(I)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 459
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->lng:I

    return-object p0
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera Pitch angle (earth frame, +-180)."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 511
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera Roll angle (earth frame, +-180)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 498
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->roll:F

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 405
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image timestamp (since UNIX epoch),\n                as passed in by CAMERA_STATUS message (or autopilot if no CCB)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 392
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera Yaw (earth frame, 0-360, true)."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 524
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraFeedback$Builder;->yaw:F

    return-object p0
.end method
