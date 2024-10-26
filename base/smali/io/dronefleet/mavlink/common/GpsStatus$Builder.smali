.class public final Lio/dronefleet/mavlink/common/GpsStatus$Builder;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private satelliteAzimuth:[B

.field private satelliteElevation:[B

.field private satellitePrn:[B

.field private satelliteSnr:[B

.field private satelliteUsed:[B

.field private satellitesVisible:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/GpsStatus;
    .locals 9

    .line 296
    new-instance v8, Lio/dronefleet/mavlink/common/GpsStatus;

    iget v1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satellitesVisible:I

    iget-object v2, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satellitePrn:[B

    iget-object v3, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteUsed:[B

    iget-object v4, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteElevation:[B

    iget-object v5, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteAzimuth:[B

    iget-object v6, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteSnr:[B

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/GpsStatus;-><init>(I[B[B[B[B[BLio/dronefleet/mavlink/common/GpsStatus$1;)V

    return-object v8
.end method

.method public final satelliteAzimuth([B)Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Direction of satellite,\n                0: 0 deg, 255: 360 deg."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 276
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteAzimuth:[B

    return-object p0
.end method

.method public final satelliteElevation([B)Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Elevation (0: right on\n                top of receiver, 90: on the horizon) of satellite"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 261
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteElevation:[B

    return-object p0
.end method

.method public final satellitePrn([B)Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Global satellite ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 231
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satellitePrn:[B

    return-object p0
.end method

.method public final satelliteSnr([B)Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Signal to noise ratio of\n                satellite"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 291
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteSnr:[B

    return-object p0
.end method

.method public final satelliteUsed([B)Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "0: Satellite not used, 1: used for\n                localization"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 246
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satelliteUsed:[B

    return-object p0
.end method

.method public final satellitesVisible(I)Lio/dronefleet/mavlink/common/GpsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 217
    iput p1, p0, Lio/dronefleet/mavlink/common/GpsStatus$Builder;->satellitesVisible:I

    return-object p0
.end method
