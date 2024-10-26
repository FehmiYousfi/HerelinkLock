.class public final Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;
.super Ljava/lang/Object;
.source "CpuLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/CpuLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batvolt:I

.field private ctrlload:I

.field private sensload:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final batvolt(I)Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery Voltage"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 162
    iput p1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;->batvolt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/slugs/CpuLoad;
    .locals 5

    .line 167
    new-instance v0, Lio/dronefleet/mavlink/slugs/CpuLoad;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;->sensload:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;->ctrlload:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;->batvolt:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/slugs/CpuLoad;-><init>(IIILio/dronefleet/mavlink/slugs/CpuLoad$1;)V

    return-object v0
.end method

.method public final ctrlload(I)Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Control DSC Load"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 149
    iput p1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;->ctrlload:I

    return-object p0
.end method

.method public final sensload(I)Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor DSC Load"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 136
    iput p1, p0, Lio/dronefleet/mavlink/slugs/CpuLoad$Builder;->sensload:I

    return-object p0
.end method
