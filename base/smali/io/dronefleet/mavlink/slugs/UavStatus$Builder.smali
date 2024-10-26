.class public final Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
.super Ljava/lang/Object;
.source "UavStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/UavStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:F

.field private course:F

.field private latitude:F

.field private longitude:F

.field private speed:F

.field private target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(F)Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude UAV"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->altitude:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/slugs/UavStatus;
    .locals 9

    .line 273
    new-instance v8, Lio/dronefleet/mavlink/slugs/UavStatus;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->latitude:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->longitude:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->altitude:F

    iget v5, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->speed:F

    iget v6, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->course:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/slugs/UavStatus;-><init>(IFFFFFLio/dronefleet/mavlink/slugs/UavStatus$1;)V

    return-object v8
.end method

.method public final course(F)Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Course UAV"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 268
    iput p1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->course:F

    return-object p0
.end method

.method public final latitude(F)Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude UAV"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->latitude:F

    return-object p0
.end method

.method public final longitude(F)Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude UAV"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->longitude:F

    return-object p0
.end method

.method public final speed(F)Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Speed UAV"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->speed:F

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/UavStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID system reporting the action"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 203
    iput p1, p0, Lio/dronefleet/mavlink/slugs/UavStatus$Builder;->target:I

    return-object p0
.end method
