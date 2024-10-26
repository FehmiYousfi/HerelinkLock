.class public final Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
.super Ljava/lang/Object;
.source "VideoStreamInformation99.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:J

.field private cameraId:I

.field private framerate:F

.field private resolutionH:I

.field private resolutionV:I

.field private rotation:I

.field private status:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitrate(J)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bit rate."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 324
    iput-wide p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->bitrate:J

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;
    .locals 12

    .line 358
    new-instance v11, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->cameraId:I

    iget v2, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->status:I

    iget v3, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->framerate:F

    iget v4, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->resolutionH:I

    iget v5, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->resolutionV:I

    iget-wide v6, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->bitrate:J

    iget v8, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->rotation:I

    iget-object v9, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->uri:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99;-><init>(IIFIIJILjava/lang/String;Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$1;)V

    return-object v11
.end method

.method public final cameraId(I)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video Stream ID (1 for first, 2 for second,\n                etc.)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 259
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->cameraId:I

    return-object p0
.end method

.method public final framerate(F)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame rate."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 285
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->framerate:F

    return-object p0
.end method

.method public final resolutionH(I)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal resolution."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 298
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->resolutionH:I

    return-object p0
.end method

.method public final resolutionV(I)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical resolution."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 311
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->resolutionV:I

    return-object p0
.end method

.method public final rotation(I)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video image rotation clockwise."
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 337
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->rotation:I

    return-object p0
.end method

.method public final status(I)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of streams available."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 272
    iput p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->status:I

    return-object p0
.end method

.method public final uri(Ljava/lang/String;)Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xe6
        description = "Video stream URI (TCP or RTSP URI ground station\n                should connect to) or port number (UDP port ground station should listen to)."
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 353
    iput-object p1, p0, Lio/dronefleet/mavlink/offspec/VideoStreamInformation99$Builder;->uri:Ljava/lang/String;

    return-object p0
.end method
