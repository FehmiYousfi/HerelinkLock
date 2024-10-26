.class public final Lio/dronefleet/mavlink/common/Attitude$Builder;
.super Ljava/lang/Object;
.source "Attitude.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Attitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pitch:F

.field private pitchspeed:F

.field private roll:F

.field private rollspeed:F

.field private timeBootMs:J

.field private yaw:F

.field private yawspeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Attitude;
    .locals 11

    .line 311
    new-instance v10, Lio/dronefleet/mavlink/common/Attitude;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->roll:F

    iget v4, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->pitch:F

    iget v5, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->yaw:F

    iget v6, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->rollspeed:F

    iget v7, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->pitchspeed:F

    iget v8, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->yawspeed:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/Attitude;-><init>(JFFFFFFLio/dronefleet/mavlink/common/Attitude$1;)V

    return-object v10
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angle (-pi..+pi)"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->pitch:F

    return-object p0
.end method

.method public final pitchspeed(F)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch angular speed"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 293
    iput p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->pitchspeed:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angle (-pi..+pi)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->roll:F

    return-object p0
.end method

.method public final rollspeed(F)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll angular speed"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 280
    iput p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->rollspeed:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 228
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angle (-pi..+pi)"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->yaw:F

    return-object p0
.end method

.method public final yawspeed(F)Lio/dronefleet/mavlink/common/Attitude$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw angular speed"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 306
    iput p1, p0, Lio/dronefleet/mavlink/common/Attitude$Builder;->yawspeed:F

    return-object p0
.end method
