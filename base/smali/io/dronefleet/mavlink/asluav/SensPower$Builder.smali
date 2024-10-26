.class public final Lio/dronefleet/mavlink/asluav/SensPower$Builder;
.super Ljava/lang/Object;
.source "SensPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/SensPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adc121Cs1Amp:F

.field private adc121Cs2Amp:F

.field private adc121CspbAmp:F

.field private adc121VspbVolt:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adc121Cs1Amp(F)Lio/dronefleet/mavlink/asluav/SensPower$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board current sensor 1 reading"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 189
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121Cs1Amp:F

    return-object p0
.end method

.method public final adc121Cs2Amp(F)Lio/dronefleet/mavlink/asluav/SensPower$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board current sensor 2 reading"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121Cs2Amp:F

    return-object p0
.end method

.method public final adc121CspbAmp(F)Lio/dronefleet/mavlink/asluav/SensPower$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board current sensor\n                reading"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 176
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121CspbAmp:F

    return-object p0
.end method

.method public final adc121VspbVolt(F)Lio/dronefleet/mavlink/asluav/SensPower$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Power board voltage sensor\n                reading"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 162
    iput p1, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121VspbVolt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/asluav/SensPower;
    .locals 7

    .line 207
    new-instance v6, Lio/dronefleet/mavlink/asluav/SensPower;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121VspbVolt:F

    iget v2, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121CspbAmp:F

    iget v3, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121Cs1Amp:F

    iget v4, p0, Lio/dronefleet/mavlink/asluav/SensPower$Builder;->adc121Cs2Amp:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/asluav/SensPower;-><init>(FFFFLio/dronefleet/mavlink/asluav/SensPower$1;)V

    return-object v6
.end method
