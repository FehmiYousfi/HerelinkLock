.class public final Lio/dronefleet/mavlink/common/MountOrientation$Builder;
.super Ljava/lang/Object;
.source "MountOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MountOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pitch:F

.field private roll:F

.field private timeBootMs:J

.field private yaw:F

.field private yawAbsolute:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MountOrientation;
    .locals 9

    .line 250
    new-instance v8, Lio/dronefleet/mavlink/common/MountOrientation;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->roll:F

    iget v4, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->pitch:F

    iget v5, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->yaw:F

    iget v6, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->yawAbsolute:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/MountOrientation;-><init>(JFFFFLio/dronefleet/mavlink/common/MountOrientation$1;)V

    return-object v8
.end method

.method public final pitch(F)Lio/dronefleet/mavlink/common/MountOrientation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch in global frame (set to NaN for\n                invalid)."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->pitch:F

    return-object p0
.end method

.method public final roll(F)Lio/dronefleet/mavlink/common/MountOrientation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll in global frame (set to NaN for\n                invalid)."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->roll:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/MountOrientation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 188
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final yaw(F)Lio/dronefleet/mavlink/common/MountOrientation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw relative to vehicle (set to NaN for\n                invalid)."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 230
    iput p1, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->yaw:F

    return-object p0
.end method

.method public final yawAbsolute(F)Lio/dronefleet/mavlink/common/MountOrientation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw in absolute frame relative to\n                Earth\'s North, north is 0 (set to NaN for invalid)."
        extension = true
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/common/MountOrientation$Builder;->yawAbsolute:F

    return-object p0
.end method
