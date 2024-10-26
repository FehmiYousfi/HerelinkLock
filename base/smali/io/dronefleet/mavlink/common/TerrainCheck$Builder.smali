.class public final Lio/dronefleet/mavlink/common/TerrainCheck$Builder;
.super Ljava/lang/Object;
.source "TerrainCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/TerrainCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private lat:I

.field private lon:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/TerrainCheck;
    .locals 4

    .line 139
    new-instance v0, Lio/dronefleet/mavlink/common/TerrainCheck;

    iget v1, p0, Lio/dronefleet/mavlink/common/TerrainCheck$Builder;->lat:I

    iget v2, p0, Lio/dronefleet/mavlink/common/TerrainCheck$Builder;->lon:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/TerrainCheck;-><init>(IILio/dronefleet/mavlink/common/TerrainCheck$1;)V

    return-object v0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/common/TerrainCheck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 120
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainCheck$Builder;->lat:I

    return-object p0
.end method

.method public final lon(I)Lio/dronefleet/mavlink/common/TerrainCheck$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 134
    iput p1, p0, Lio/dronefleet/mavlink/common/TerrainCheck$Builder;->lon:I

    return-object p0
.end method
