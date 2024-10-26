.class public final Lio/dronefleet/mavlink/common/TerrainReport$Builder;
.super Ljava/lang/Object;
.source "TerrainReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/TerrainReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currentHeight:F

.field private lat:I

.field private loaded:I

.field private lon:I

.field private pending:I

.field private spacing:I

.field private terrainHeight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/TerrainReport;
    .locals 10

    .line 322
    new-instance v9, Lio/dronefleet/mavlink/common/TerrainReport;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->lat:I

    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->lon:I

    iget v3, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->spacing:I

    iget v4, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->terrainHeight:F

    iget v5, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->currentHeight:F

    iget v6, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->pending:I

    iget v7, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->loaded:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/TerrainReport;-><init>(IIIFFIILio/dronefleet/mavlink/common/TerrainReport$1;)V

    return-object v9
.end method

.method public final currentHeight(F)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current vehicle height above lat/lon\n                terrain height"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->currentHeight:F

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 235
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->lat:I

    return-object p0
.end method

.method public final loaded(I)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of 4x4 terrain blocks in memory"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 317
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->loaded:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 249
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->lon:I

    return-object p0
.end method

.method public final pending(I)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of 4x4 terrain blocks waiting to be\n                received or read from disk"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 304
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->pending:I

    return-object p0
.end method

.method public final spacing(I)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "grid spacing (zero if terrain at this location\n                unavailable)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 263
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->spacing:I

    return-object p0
.end method

.method public final terrainHeight(F)Lio/dronefleet/mavlink/common/TerrainReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Terrain height MSL"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 276
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainReport$Builder;->terrainHeight:F

    return-object p0
.end method
