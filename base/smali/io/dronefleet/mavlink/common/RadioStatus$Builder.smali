.class public final Lio/dronefleet/mavlink/common/RadioStatus$Builder;
.super Ljava/lang/Object;
.source "RadioStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RadioStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fixed:I

.field private noise:I

.field private remnoise:I

.field private remrssi:I

.field private rssi:I

.field private rxerrors:I

.field private txbuf:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RadioStatus;
    .locals 10

    .line 332
    new-instance v9, Lio/dronefleet/mavlink/common/RadioStatus;

    iget v1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->rssi:I

    iget v2, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->remrssi:I

    iget v3, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->txbuf:I

    iget v4, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->noise:I

    iget v5, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->remnoise:I

    iget v6, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->rxerrors:I

    iget v7, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->fixed:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/RadioStatus;-><init>(IIIIIIILio/dronefleet/mavlink/common/RadioStatus$1;)V

    return-object v9
.end method

.method public final fixed(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of error corrected radio packets (since\n                boot)."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 327
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->fixed:I

    return-object p0
.end method

.method public final noise(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local background noise level. These are device\n                dependent RSSI values (scale as approx 2x dB on SiK radios). Values: [0-254], 255:\n                invalid/unknown."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 283
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->noise:I

    return-object p0
.end method

.method public final remnoise(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remote background noise level. These are device\n                dependent RSSI values (scale as approx 2x dB on SiK radios). Values: [0-254], 255:\n                invalid/unknown."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 299
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->remnoise:I

    return-object p0
.end method

.method public final remrssi(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remote (message receiver) signal strength\n                indication in device-dependent units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->remrssi:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local (message sender) recieved signal strength\n                indication in device-dependent units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 239
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->rssi:I

    return-object p0
.end method

.method public final rxerrors(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of radio packet receive errors (since\n                boot)."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 313
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->rxerrors:I

    return-object p0
.end method

.method public final txbuf(I)Lio/dronefleet/mavlink/common/RadioStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining free transmitter buffer space."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/common/RadioStatus$Builder;->txbuf:I

    return-object p0
.end method
