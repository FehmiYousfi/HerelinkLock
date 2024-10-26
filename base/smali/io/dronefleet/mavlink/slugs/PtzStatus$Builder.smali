.class public final Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;
.super Ljava/lang/Object;
.source "PtzStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/PtzStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pan:I

.field private tilt:I

.field private zoom:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/PtzStatus;
    .locals 5

    .line 171
    new-instance v0, Lio/dronefleet/mavlink/slugs/PtzStatus;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;->zoom:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;->pan:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;->tilt:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/slugs/PtzStatus;-><init>(IIILio/dronefleet/mavlink/slugs/PtzStatus$1;)V

    return-object v0
.end method

.method public final pan(I)Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Pan value in 10ths of degree"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 152
    iput p1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;->pan:I

    return-object p0
.end method

.method public final tilt(I)Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Tilt value in 10ths of degree"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 166
    iput p1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;->tilt:I

    return-object p0
.end method

.method public final zoom(I)Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The actual Zoom Value"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 138
    iput p1, p0, Lio/dronefleet/mavlink/slugs/PtzStatus$Builder;->zoom:I

    return-object p0
.end method
