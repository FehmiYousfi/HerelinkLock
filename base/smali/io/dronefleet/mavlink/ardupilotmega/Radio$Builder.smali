.class public final Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
.super Ljava/lang/Object;
.source "Radio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Radio;
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

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Radio;
    .locals 10

    .line 308
    new-instance v9, Lio/dronefleet/mavlink/ardupilotmega/Radio;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->rssi:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->remrssi:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->txbuf:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->noise:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->remnoise:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->rxerrors:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->fixed:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/ardupilotmega/Radio;-><init>(IIIIIIILio/dronefleet/mavlink/ardupilotmega/Radio$1;)V

    return-object v9
.end method

.method public final fixed(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of error corrected packets."
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 303
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->fixed:I

    return-object p0
.end method

.method public final noise(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Background noise level."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 264
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->noise:I

    return-object p0
.end method

.method public final remnoise(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remote background noise level."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 277
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->remnoise:I

    return-object p0
.end method

.method public final remrssi(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remote signal strength."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 238
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->remrssi:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Local signal strength."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 225
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->rssi:I

    return-object p0
.end method

.method public final rxerrors(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive errors."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->rxerrors:I

    return-object p0
.end method

.method public final txbuf(I)Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "How full the tx buffer is."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 251
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Radio$Builder;->txbuf:I

    return-object p0
.end method
