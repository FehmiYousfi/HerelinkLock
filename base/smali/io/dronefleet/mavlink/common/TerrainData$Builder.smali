.class public final Lio/dronefleet/mavlink/common/TerrainData$Builder;
.super Ljava/lang/Object;
.source "TerrainData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/TerrainData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[I

.field private gridSpacing:I

.field private gridbit:I

.field private lat:I

.field private lon:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/TerrainData;
    .locals 8

    .line 249
    new-instance v7, Lio/dronefleet/mavlink/common/TerrainData;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->lat:I

    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->lon:I

    iget v3, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->gridSpacing:I

    iget v4, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->gridbit:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->data:[I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/TerrainData;-><init>(IIII[ILio/dronefleet/mavlink/common/TerrainData$1;)V

    return-object v7
.end method

.method public final data([I)Lio/dronefleet/mavlink/common/TerrainData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Terrain data MSL"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 244
    iput-object p1, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->data:[I

    return-object p0
.end method

.method public final gridSpacing(I)Lio/dronefleet/mavlink/common/TerrainData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Grid spacing"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->gridSpacing:I

    return-object p0
.end method

.method public final gridbit(I)Lio/dronefleet/mavlink/common/TerrainData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "bit within the terrain request mask"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->gridbit:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/TerrainData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of SW corner of first grid"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 189
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/TerrainData$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of SW corner of first grid"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 203
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainData$Builder;->lon:I

    return-object p0
.end method
