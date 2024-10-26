.class public final Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
.super Ljava/lang/Object;
.source "StatusGps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/StatusGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private csfails:I

.field private gpsquality:I

.field private magdir:I

.field private magvar:F

.field private modeind:I

.field private msgstype:I

.field private posstatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/StatusGps;
    .locals 10

    .line 328
    new-instance v9, Lio/dronefleet/mavlink/slugs/StatusGps;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->csfails:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->gpsquality:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->msgstype:I

    iget v4, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->posstatus:I

    iget v5, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->magvar:F

    iget v6, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->magdir:I

    iget v7, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->modeind:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/slugs/StatusGps;-><init>(IIIIFIILio/dronefleet/mavlink/slugs/StatusGps$1;)V

    return-object v9
.end method

.method public final csfails(I)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of times checksum has failed"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 235
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->csfails:I

    return-object p0
.end method

.method public final gpsquality(I)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The quality indicator, 0=fix not available or\n                invalid, 1=GPS fix, 2=C/A differential GPS, 6=Dead reckoning mode, 7=Manual input\n                mode (fixed position), 8=Simulator mode, 9= WAAS a"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 251
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->gpsquality:I

    return-object p0
.end method

.method public final magdir(I)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetic variation direction E/W. Easterly variation\n                (E) subtracts from True course and Westerly variation (W) adds to True course"
        position = 0x6
        signed = true
        unitSize = 0x1
    .end annotation

    .line 307
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->magdir:I

    return-object p0
.end method

.method public final magvar(F)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Magnetic variation"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 291
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->magvar:F

    return-object p0
.end method

.method public final modeind(I)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Positioning system mode indicator. A -\n                Autonomous;D-Differential; E-Estimated (dead reckoning) mode;M-Manual input; N-Data\n                not valid"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 323
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->modeind:I

    return-object p0
.end method

.method public final msgstype(I)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicates if GN, GL or GP messages are being\n                received"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 265
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->msgstype:I

    return-object p0
.end method

.method public final posstatus(I)Lio/dronefleet/mavlink/slugs/StatusGps$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A = data valid, V = data invalid"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 278
    iput p1, p0, Lio/dronefleet/mavlink/slugs/StatusGps$Builder;->posstatus:I

    return-object p0
.end method
