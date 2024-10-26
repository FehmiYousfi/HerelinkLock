.class public final Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
.super Ljava/lang/Object;
.source "CameraCaptureStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CameraCaptureStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private availableCapacity:F

.field private imageCount:I

.field private imageInterval:F

.field private imageStatus:I

.field private recordingTimeMs:J

.field private timeBootMs:J

.field private videoStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final availableCapacity(F)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Available storage capacity."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 307
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->availableCapacity:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/CameraCaptureStatus;
    .locals 12

    .line 328
    new-instance v11, Lio/dronefleet/mavlink/common/CameraCaptureStatus;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->imageStatus:I

    iget v4, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->videoStatus:I

    iget v5, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->imageInterval:F

    iget-wide v6, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->recordingTimeMs:J

    iget v8, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->availableCapacity:F

    iget v9, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->imageCount:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/CameraCaptureStatus;-><init>(JIIFJFILio/dronefleet/mavlink/common/CameraCaptureStatus$1;)V

    return-object v11
.end method

.method public final imageCount(I)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of images captured (\'forever\', or\n                until reset using MAV_CMD_STORAGE_FORMAT)."
        extension = true
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 323
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->imageCount:I

    return-object p0
.end method

.method public final imageInterval(F)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image capture interval"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 280
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->imageInterval:F

    return-object p0
.end method

.method public final imageStatus(I)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current status of image capturing (0: idle, 1:\n                capture in progress, 2: interval set but idle, 3: interval set and capture in\n                progress)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 253
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->imageStatus:I

    return-object p0
.end method

.method public final recordingTimeMs(J)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since recording\n                started"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 294
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->recordingTimeMs:J

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 237
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final videoStatus(I)Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current status of video capturing (0: idle, 1:\n                capture in progress)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraCaptureStatus$Builder;->videoStatus:I

    return-object p0
.end method
