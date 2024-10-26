.class public final Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
.super Ljava/lang/Object;
.source "SlugsNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/SlugsNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ayBody:F

.field private dist2go:F

.field private fromwp:I

.field private hC:I

.field private phiC:F

.field private psidotC:F

.field private thetaC:F

.field private totaldist:F

.field private towp:I

.field private uM:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ayBody(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y component of the body acceleration"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 343
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->ayBody:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/slugs/SlugsNavigation;
    .locals 13

    .line 413
    new-instance v12, Lio/dronefleet/mavlink/slugs/SlugsNavigation;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->uM:F

    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->phiC:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->thetaC:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->psidotC:F

    iget v5, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->ayBody:F

    iget v6, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->totaldist:F

    iget v7, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->dist2go:F

    iget v8, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->fromwp:I

    iget v9, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->towp:I

    iget v10, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->hC:I

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/slugs/SlugsNavigation;-><init>(FFFFFFFIIILio/dronefleet/mavlink/slugs/SlugsNavigation$1;)V

    return-object v12
.end method

.method public final dist2go(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining distance to Run on this leg of Navigation"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 369
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->dist2go:F

    return-object p0
.end method

.method public final fromwp(I)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Origin WP"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 382
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->fromwp:I

    return-object p0
.end method

.method public final hC(I)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded altitude (MSL)"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 408
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->hC:I

    return-object p0
.end method

.method public final phiC(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded Roll"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 304
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->phiC:F

    return-object p0
.end method

.method public final psidotC(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded Turn rate"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 330
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->psidotC:F

    return-object p0
.end method

.method public final thetaC(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded Pitch"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 317
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->thetaC:F

    return-object p0
.end method

.method public final totaldist(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total Distance to Run on this leg of Navigation"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 356
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->totaldist:F

    return-object p0
.end method

.method public final towp(I)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Destination WP"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 395
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->towp:I

    return-object p0
.end method

.method public final uM(F)Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Measured Airspeed prior to the nav filter"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 291
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsNavigation$Builder;->uM:F

    return-object p0
.end method
