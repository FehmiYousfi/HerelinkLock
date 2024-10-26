.class public final Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
.super Ljava/lang/Object;
.source "VideoStreamStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/VideoStreamStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:J

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

.field private resolutionH:I

.field private resolutionV:I

.field private rotation:I

.field private streamId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitrate(J)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bit rate"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 345
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->bitrate:J

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/VideoStreamStatus;
    .locals 12

    .line 376
    new-instance v11, Lio/dronefleet/mavlink/common/VideoStreamStatus;

    iget v1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->streamId:I

    iget-object v2, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->framerate:F

    iget v4, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->resolutionH:I

    iget v5, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->resolutionV:I

    iget-wide v6, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->bitrate:J

    iget v8, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->rotation:I

    iget v9, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->hfov:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/VideoStreamStatus;-><init>(ILio/dronefleet/mavlink/util/EnumValue;FIIJIILio/dronefleet/mavlink/common/VideoStreamStatus$1;)V

    return-object v11
.end method

.method public final flags(Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0

    .line 280
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of stream\n                status flags"
        enumType = Lio/dronefleet/mavlink/common/VideoStreamStatusFlags;
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 272
    iput-object p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;"
        }
    .end annotation

    .line 294
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0

    .line 287
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final framerate(F)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Frame rate"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 306
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->framerate:F

    return-object p0
.end method

.method public final hfov(I)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal Field of view"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 371
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->hfov:I

    return-object p0
.end method

.method public final resolutionH(I)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal resolution"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 319
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->resolutionH:I

    return-object p0
.end method

.method public final resolutionV(I)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical resolution"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 332
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->resolutionV:I

    return-object p0
.end method

.method public final rotation(I)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video image rotation clockwise"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 358
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->rotation:I

    return-object p0
.end method

.method public final streamId(I)Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Video Stream ID (1 for first, 2\n                for second, etc.)"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 257
    iput p1, p0, Lio/dronefleet/mavlink/common/VideoStreamStatus$Builder;->streamId:I

    return-object p0
.end method
