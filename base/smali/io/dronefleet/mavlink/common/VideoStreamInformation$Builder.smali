.class public final Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
.super Ljava/lang/Object;
.source "VideoStreamInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/VideoStreamInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:J

.field private count:I

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private framerate:F

.field private hfov:I

.field private name:Ljava/lang/String;

.field private resolutionH:I

.field private resolutionV:I

.field private rotation:I

.field private streamId:I

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamType;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitrate(J)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bit rate."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 487
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->bitrate:J

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/VideoStreamInformation;
    .locals 17

    move-object/from16 v0, p0

    .line 548
    new-instance v16, Lio/dronefleet/mavlink/common/VideoStreamInformation;

    iget v2, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->streamId:I

    iget v3, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->count:I

    iget-object v4, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->framerate:F

    iget v7, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->resolutionH:I

    iget v8, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->resolutionV:I

    iget-wide v9, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->bitrate:J

    iget v11, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->rotation:I

    iget v12, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->hfov:I

    iget-object v13, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->name:Ljava/lang/String;

    iget-object v14, v0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->uri:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/common/VideoStreamInformation;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FIIJIILjava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/common/VideoStreamInformation$1;)V

    return-object v16
.end method

.method public final count(I)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of streams available."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 364
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->count:I

    return-object p0
.end method

.method public final flags(Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0

    .line 422
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of stream\n                status flags."
        enumType = Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 414
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;"
        }
    .end annotation

    .line 436
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0

    .line 429
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final framerate(F)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame rate."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 448
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->framerate:F

    return-object p0
.end method

.method public final hfov(I)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal Field of view."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 513
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->hfov:I

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Stream name."
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 527
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final resolutionH(I)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal resolution."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 461
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->resolutionH:I

    return-object p0
.end method

.method public final resolutionV(I)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical resolution."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 474
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->resolutionV:I

    return-object p0
.end method

.method public final rotation(I)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video image rotation clockwise."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 500
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->rotation:I

    return-object p0
.end method

.method public final streamId(I)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video Stream ID (1 for first, 2\n                for second, etc.)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 351
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->streamId:I

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/common/VideoStreamType;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0

    .line 386
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of stream."
        enumType = Lio/dronefleet/mavlink/common/VideoStreamType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 378
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;"
        }
    .end annotation

    .line 400
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0

    .line 393
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final uri(Ljava/lang/String;)Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa0
        description = "Video stream URI (TCP or RTSP URI ground station\n                should connect to) or port number (UDP port ground station should listen to)."
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 543
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VideoStreamInformation$Builder;->uri:Ljava/lang/String;

    return-object p0
.end method
