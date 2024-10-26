.class public final Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;
.super Ljava/lang/Object;
.source "SlugsMobileLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private latitude:F

.field private longitude:F

.field private target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;->latitude:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;->longitude:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;-><init>(IFFLio/dronefleet/mavlink/slugs/SlugsMobileLocation$1;)V

    return-object v0
.end method

.method public final latitude(F)Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mobile Latitude"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 151
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;->latitude:F

    return-object p0
.end method

.method public final longitude(F)Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mobile Longitude"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;->longitude:F

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system reporting the action"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 138
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation$Builder;->target:I

    return-object p0
.end method
