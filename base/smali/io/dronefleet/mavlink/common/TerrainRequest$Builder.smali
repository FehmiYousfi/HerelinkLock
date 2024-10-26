.class public final Lio/dronefleet/mavlink/common/TerrainRequest$Builder;
.super Ljava/lang/Object;
.source "TerrainRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/TerrainRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private gridSpacing:I

.field private lat:I

.field private lon:I

.field private mask:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/TerrainRequest;
    .locals 7

    .line 211
    new-instance v6, Lio/dronefleet/mavlink/common/TerrainRequest;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->lat:I

    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->lon:I

    iget v3, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->gridSpacing:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->mask:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/TerrainRequest;-><init>(IIILjava/math/BigInteger;Lio/dronefleet/mavlink/common/TerrainRequest$1;)V

    return-object v6
.end method

.method public final gridSpacing(I)Lio/dronefleet/mavlink/common/TerrainRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Grid spacing"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 192
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->gridSpacing:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/TerrainRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of SW corner of first grid"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 165
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/TerrainRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of SW corner of first grid"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 179
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->lon:I

    return-object p0
.end method

.method public final mask(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/TerrainRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask of\n                requested 4x4 grids (row major 8x7 array of grids, 56 bits)"
        position = 0x4
        unitSize = 0x8
    .end annotation

    .line 206
    iput-object p1, p0, Lio/dronefleet/mavlink/common/TerrainRequest$Builder;->mask:Ljava/math/BigInteger;

    return-object p0
.end method
