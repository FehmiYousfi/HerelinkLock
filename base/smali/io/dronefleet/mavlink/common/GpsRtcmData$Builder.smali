.class public final Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;
.super Ljava/lang/Object;
.source "GpsRtcmData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GpsRtcmData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[B

.field private flags:I

.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/GpsRtcmData;
    .locals 5

    .line 199
    new-instance v0, Lio/dronefleet/mavlink/common/GpsRtcmData;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;->flags:I

    iget v2, p0, Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;->len:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;->data:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/GpsRtcmData;-><init>(II[BLio/dronefleet/mavlink/common/GpsRtcmData$1;)V

    return-object v0
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xb4
        description = "RTCM message (may be fragmented)"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 194
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;->data:[B

    return-object p0
.end method

.method public final flags(I)Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "LSB: 1 means message is fragmented, next 2 bits are\n                the fragment ID, the remaining 5 bits are used for the sequence ID. Messages are\n                only to be flushed to the GPS when the entire message has been reconstructed on the\n                autopilot. The fragment ID specifies which order the fragments should be assembled\n                into a buffer, while the sequence ID is used to detect a mismatch between different\n                buffers. The buffer is considered fully reconstructed when either all 4 fragments\n                are present, or all the fragments before the first fragment with a non full payload\n                is received. This management is used to ensure that normal GPS operation doesn\'t\n                corrupt RTCM data, and to recover from a unreliable transport delivery order."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 167
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;->flags:I

    return-object p0
.end method

.method public final len(I)Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "data length"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 180
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsRtcmData$Builder;->len:I

    return-object p0
.end method
