.class public final Lio/dronefleet/mavlink/common/VfrHud$Builder;
.super Ljava/lang/Object;
.source "VfrHud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/VfrHud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeed:F

.field private alt:F

.field private climb:F

.field private groundspeed:F

.field private heading:I

.field private throttle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeed(F)Lio/dronefleet/mavlink/common/VfrHud$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vehicle speed in form appropriate for\n                vehicle type. For standard aircraft this is typically calibrated airspeed (CAS) or\n                indicated airspeed (IAS) - either of which can be used by a pilot to estimate stall\n                speed."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->airspeed:F

    return-object p0
.end method

.method public final alt(F)Lio/dronefleet/mavlink/common/VfrHud$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current altitude (MSL)."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 269
    iput p1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->alt:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/VfrHud;
    .locals 9

    .line 287
    new-instance v8, Lio/dronefleet/mavlink/common/VfrHud;

    iget v1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->airspeed:F

    iget v2, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->groundspeed:F

    iget v3, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->heading:I

    iget v4, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->throttle:I

    iget v5, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->alt:F

    iget v6, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->climb:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/VfrHud;-><init>(FFIIFFLio/dronefleet/mavlink/common/VfrHud$1;)V

    return-object v8
.end method

.method public final climb(F)Lio/dronefleet/mavlink/common/VfrHud$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current climb rate."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 282
    iput p1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->climb:F

    return-object p0
.end method

.method public final groundspeed(F)Lio/dronefleet/mavlink/common/VfrHud$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current ground speed."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->groundspeed:F

    return-object p0
.end method

.method public final heading(I)Lio/dronefleet/mavlink/common/VfrHud$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current heading in compass units\n                (0-360, 0=north)."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 243
    iput p1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->heading:I

    return-object p0
.end method

.method public final throttle(I)Lio/dronefleet/mavlink/common/VfrHud$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current throttle setting (0 to 100)."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 256
    iput p1, p0, Lio/dronefleet/mavlink/common/VfrHud$Builder;->throttle:I

    return-object p0
.end method
