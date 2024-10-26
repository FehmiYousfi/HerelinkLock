.class public final Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
.super Ljava/lang/Object;
.source "HerelinkTelem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/offspec/HerelinkTelem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private boardTemp:I

.field private cpuTemp:I

.field private linkBw:J

.field private linkRate:J

.field private rfFreq:J

.field private rssi:I

.field private snr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final boardTemp(I)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 294
    iput p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->boardTemp:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/offspec/HerelinkTelem;
    .locals 13

    .line 299
    new-instance v12, Lio/dronefleet/mavlink/offspec/HerelinkTelem;

    iget v1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->rssi:I

    iget v2, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->snr:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->rfFreq:J

    iget-wide v5, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->linkBw:J

    iget-wide v7, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->linkRate:J

    iget v9, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->cpuTemp:I

    iget v10, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->boardTemp:I

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/offspec/HerelinkTelem;-><init>(IIJJJIILio/dronefleet/mavlink/offspec/HerelinkTelem$1;)V

    return-object v12
.end method

.method public final cpuTemp(I)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 281
    iput p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->cpuTemp:I

    return-object p0
.end method

.method public final linkBw(J)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 256
    iput-wide p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->linkBw:J

    return-object p0
.end method

.method public final linkRate(J)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 268
    iput-wide p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->linkRate:J

    return-object p0
.end method

.method public final rfFreq(J)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 244
    iput-wide p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->rfFreq:J

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x0
        unitSize = 0x1
    .end annotation

    .line 219
    iput p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->rssi:I

    return-object p0
.end method

.method public final snr(I)Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        position = 0x1
        signed = true
        unitSize = 0x2
    .end annotation

    .line 232
    iput p1, p0, Lio/dronefleet/mavlink/offspec/HerelinkTelem$Builder;->snr:I

    return-object p0
.end method
