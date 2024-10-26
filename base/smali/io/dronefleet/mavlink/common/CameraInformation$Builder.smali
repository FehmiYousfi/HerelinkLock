.class public final Lio/dronefleet/mavlink/common/CameraInformation$Builder;
.super Ljava/lang/Object;
.source "CameraInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CameraInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private camDefinitionUri:Ljava/lang/String;

.field private camDefinitionVersion:I

.field private firmwareVersion:J

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraCapFlags;",
            ">;"
        }
    .end annotation
.end field

.field private focalLength:F

.field private lensId:I

.field private modelName:[B

.field private resolutionH:I

.field private resolutionV:I

.field private sensorSizeH:F

.field private sensorSizeV:F

.field private timeBootMs:J

.field private vendorName:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CameraInformation;
    .locals 20

    move-object/from16 v0, p0

    .line 575
    new-instance v18, Lio/dronefleet/mavlink/common/CameraInformation;

    move-object/from16 v1, v18

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->timeBootMs:J

    iget-object v4, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->vendorName:[B

    iget-object v5, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->modelName:[B

    iget-wide v6, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->firmwareVersion:J

    iget v8, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->focalLength:F

    iget v9, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->sensorSizeH:F

    iget v10, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->sensorSizeV:F

    iget v11, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->resolutionH:I

    iget v12, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->resolutionV:I

    iget v13, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->lensId:I

    iget-object v14, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v15, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->camDefinitionVersion:I

    move-object/from16 v19, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->camDefinitionUri:Ljava/lang/String;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/common/CameraInformation;-><init>(J[B[BJFFFIIILio/dronefleet/mavlink/util/EnumValue;ILjava/lang/String;Lio/dronefleet/mavlink/common/CameraInformation$1;)V

    return-object v18
.end method

.method public final camDefinitionUri(Ljava/lang/String;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8c
        description = "Camera definition URI (if any,\n                otherwise only basic functions will be available). HTTP- (http://) and MAVLink FTP-\n                (mavlinkftp://) formatted URIs are allowed (and both must be supported by any GCS\n                that implements the Camera Protocol)."
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 570
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->camDefinitionUri:Ljava/lang/String;

    return-object p0
.end method

.method public final camDefinitionVersion(I)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera definition version\n                (iteration)"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 551
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->camDefinitionVersion:I

    return-object p0
.end method

.method public final firmwareVersion(J)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version of the camera firmware, encoded\n                as: (Dev & 0xff) << 24 | (Patch & 0xff) << 16 | (Minor &\n                0xff) << 8 | (Major & 0xff)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 423
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->firmwareVersion:J

    return-object p0
.end method

.method public final flags(Lio/dronefleet/mavlink/common/CameraCapFlags;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0

    .line 524
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraCapFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CameraInformation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of\n                camera capability flags."
        enumType = Lio/dronefleet/mavlink/common/CameraCapFlags;
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 516
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CameraInformation$Builder;"
        }
    .end annotation

    .line 538
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0

    .line 531
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final focalLength(F)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Focal length"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 436
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->focalLength:F

    return-object p0
.end method

.method public final lensId(I)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Reserved for a lens ID"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 501
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->lensId:I

    return-object p0
.end method

.method public final modelName([B)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the camera model"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 407
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->modelName:[B

    return-object p0
.end method

.method public final resolutionH(I)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal image resolution"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 475
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->resolutionH:I

    return-object p0
.end method

.method public final resolutionV(I)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical image resolution"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 488
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->resolutionV:I

    return-object p0
.end method

.method public final sensorSizeH(F)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image sensor size horizontal"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 449
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->sensorSizeH:F

    return-object p0
.end method

.method public final sensorSizeV(F)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image sensor size vertical"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 462
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->sensorSizeV:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 379
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final vendorName([B)Lio/dronefleet/mavlink/common/CameraInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the camera vendor"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 393
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraInformation$Builder;->vendorName:[B

    return-object p0
.end method
