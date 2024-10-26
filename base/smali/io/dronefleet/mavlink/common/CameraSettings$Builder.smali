.class public final Lio/dronefleet/mavlink/common/CameraSettings$Builder;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private focuslevel:F

.field private modeId:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private timeBootMs:J

.field private zoomlevel:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CameraSettings;
    .locals 8

    .line 240
    new-instance v7, Lio/dronefleet/mavlink/common/CameraSettings;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->modeId:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->zoomlevel:F

    iget v5, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->focuslevel:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/CameraSettings;-><init>(JLio/dronefleet/mavlink/util/EnumValue;FFLio/dronefleet/mavlink/common/CameraSettings$1;)V

    return-object v7
.end method

.method public final focuslevel(F)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current focus level (0.0 to 100.0, NaN if not\n                known)"
        extension = true
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 235
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->focuslevel:F

    return-object p0
.end method

.method public final modeId(Lio/dronefleet/mavlink/common/CameraMode;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0

    .line 192
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->modeId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modeId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CameraMode;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CameraSettings$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera mode"
        enumType = Lio/dronefleet/mavlink/common/CameraMode;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 184
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->modeId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final modeId(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CameraSettings$Builder;"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->modeId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs modeId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0

    .line 199
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->modeId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CameraSettings$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 170
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final zoomlevel(F)Lio/dronefleet/mavlink/common/CameraSettings$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current zoom level (0.0 to 100.0, NaN if not\n                known)"
        extension = true
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 220
    iput p1, p0, Lio/dronefleet/mavlink/common/CameraSettings$Builder;->zoomlevel:F

    return-object p0
.end method
