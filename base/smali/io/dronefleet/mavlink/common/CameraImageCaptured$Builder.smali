.class public final Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
.super Ljava/lang/Object;
.source "CameraImageCaptured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CameraImageCaptured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private cameraId:I

.field private captureResult:I

.field private fileUrl:Ljava/lang/String;

.field private imageIndex:I

.field private lat:I

.field private lon:I

.field private q:[F

.field private relativeAlt:I

.field private timeBootMs:J

.field private timeUtc:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (MSL) where image was taken"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 407
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->alt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/CameraImageCaptured;
    .locals 15

    .line 488
    new-instance v14, Lio/dronefleet/mavlink/common/CameraImageCaptured;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->timeUtc:Ljava/math/BigInteger;

    iget v4, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->cameraId:I

    iget v5, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->lat:I

    iget v6, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->lon:I

    iget v7, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->alt:I

    iget v8, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->relativeAlt:I

    iget-object v9, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->q:[F

    iget v10, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->imageIndex:I

    iget v11, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->captureResult:I

    iget-object v12, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->fileUrl:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/CameraImageCaptured;-><init>(JLjava/math/BigInteger;IIIII[FIILjava/lang/String;Lio/dronefleet/mavlink/common/CameraImageCaptured$1;)V

    return-object v14
.end method

.method public final cameraId(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Deprecated/unused. Component IDs are used to\n                differentiate multiple cameras."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 365
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->cameraId:I

    return-object p0
.end method

.method public final captureResult(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Boolean indicating success (1) or failure (0)\n                while capturing this image."
        position = 0xa
        signed = true
        unitSize = 0x1
    .end annotation

    .line 467
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->captureResult:I

    return-object p0
.end method

.method public final fileUrl(Ljava/lang/String;)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xcd
        description = "URL of image taken. Either local storage or\n                http://foo.jpg if camera provides an HTTP interface."
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 483
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->fileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final imageIndex(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Zero based index of this image (i.e. a new\n                image will have index CAMERA_CAPTURE_STATUS.image count -1)"
        position = 0x9
        signed = true
        unitSize = 0x4
    .end annotation

    .line 452
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->imageIndex:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude where image was taken"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 379
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude where capture was taken"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 393
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->lon:I

    return-object p0
.end method

.method public final q([F)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Quaternion of camera orientation (w, x, y, z order,\n                zero-rotation is 1, 0, 0, 0)"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 436
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->q:[F

    return-object p0
.end method

.method public final relativeAlt(I)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above ground"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 421
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->relativeAlt:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 337
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final timeUtc(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since UNIX epoch) in\n                UTC. 0 for unknown."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 351
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraImageCaptured$Builder;->timeUtc:Ljava/math/BigInteger;

    return-object p0
.end method
