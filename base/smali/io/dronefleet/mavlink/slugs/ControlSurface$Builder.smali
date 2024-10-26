.class public final Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
.super Ljava/lang/Object;
.source "ControlSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/ControlSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bcontrol:F

.field private idsurface:I

.field private mcontrol:F

.field private target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bcontrol(F)Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order to origin"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 199
    iput p1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->bcontrol:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/slugs/ControlSurface;
    .locals 7

    .line 204
    new-instance v6, Lio/dronefleet/mavlink/slugs/ControlSurface;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->idsurface:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->mcontrol:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->bcontrol:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/slugs/ControlSurface;-><init>(IIFFLio/dronefleet/mavlink/slugs/ControlSurface$1;)V

    return-object v6
.end method

.method public final idsurface(I)Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID control surface send 0: throttle 1: aileron 2:\n                elevator 3: rudder"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 173
    iput p1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->idsurface:I

    return-object p0
.end method

.method public final mcontrol(F)Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pending"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 186
    iput p1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->mcontrol:F

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the commands"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 159
    iput p1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;->target:I

    return-object p0
.end method
