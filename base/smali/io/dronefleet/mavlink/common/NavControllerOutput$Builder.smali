.class public final Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
.super Ljava/lang/Object;
.source "NavControllerOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/NavControllerOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altError:F

.field private aspdError:F

.field private navBearing:I

.field private navPitch:F

.field private navRoll:F

.field private targetBearing:I

.field private wpDist:I

.field private xtrackError:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altError(F)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current altitude error"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 319
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->altError:F

    return-object p0
.end method

.method public final aspdError(F)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current airspeed error"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 332
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->aspdError:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/NavControllerOutput;
    .locals 11

    .line 351
    new-instance v10, Lio/dronefleet/mavlink/common/NavControllerOutput;

    iget v1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->navRoll:F

    iget v2, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->navPitch:F

    iget v3, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->navBearing:I

    iget v4, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->targetBearing:I

    iget v5, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->wpDist:I

    iget v6, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->altError:F

    iget v7, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->aspdError:F

    iget v8, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->xtrackError:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/NavControllerOutput;-><init>(FFIIIFFFLio/dronefleet/mavlink/common/NavControllerOutput$1;)V

    return-object v10
.end method

.method public final navBearing(I)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current desired heading"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 278
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->navBearing:I

    return-object p0
.end method

.method public final navPitch(F)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current desired pitch"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 264
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->navPitch:F

    return-object p0
.end method

.method public final navRoll(F)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current desired roll"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 251
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->navRoll:F

    return-object p0
.end method

.method public final targetBearing(I)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bearing to current\n                waypoint/target"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 293
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->targetBearing:I

    return-object p0
.end method

.method public final wpDist(I)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to active waypoint"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 306
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->wpDist:I

    return-object p0
.end method

.method public final xtrackError(F)Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current crosstrack error on x-y\n                plane"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 346
    iput p1, p0, Lio/dronefleet/mavlink/common/NavControllerOutput$Builder;->xtrackError:F

    return-object p0
.end method
