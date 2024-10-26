.class public final Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
.super Ljava/lang/Object;
.source "SlugsCameraOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private movehome:I

.field private pan:I

.field private target:I

.field private tilt:I

.field private zoom:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;
    .locals 8

    .line 253
    new-instance v7, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->pan:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->tilt:I

    iget v4, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->zoom:I

    iget v5, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->movehome:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;-><init>(IIIIILio/dronefleet/mavlink/slugs/SlugsCameraOrder$1;)V

    return-object v7
.end method

.method public final movehome(I)Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Orders the camera mount to move home. The other\n                fields are ignored when this field is set. 1: move home, 0 ignored"
        position = 0x5
        signed = true
        unitSize = 0x1
    .end annotation

    .line 248
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->movehome:I

    return-object p0
.end method

.method public final pan(I)Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order the mount to pan: -1 left, 0 No pan motion, +1\n                right"
        position = 0x2
        signed = true
        unitSize = 0x1
    .end annotation

    .line 203
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->pan:I

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system reporting the action"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 188
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->target:I

    return-object p0
.end method

.method public final tilt(I)Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order the mount to tilt: -1 down, 0 No tilt motion, +1\n                up"
        position = 0x3
        signed = true
        unitSize = 0x1
    .end annotation

    .line 218
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->tilt:I

    return-object p0
.end method

.method public final zoom(I)Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order the zoom values 0 to 10"
        position = 0x4
        signed = true
        unitSize = 0x1
    .end annotation

    .line 232
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder$Builder;->zoom:I

    return-object p0
.end method
