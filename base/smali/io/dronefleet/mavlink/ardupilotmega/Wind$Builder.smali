.class public final Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;
.super Ljava/lang/Object;
.source "Wind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Wind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private direction:F

.field private speed:F

.field private speedZ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Wind;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Wind;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;->direction:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;->speed:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;->speedZ:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/Wind;-><init>(FFFLio/dronefleet/mavlink/ardupilotmega/Wind$1;)V

    return-object v0
.end method

.method public final direction(F)Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind direction (that wind is coming\n                from)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 138
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;->direction:F

    return-object p0
.end method

.method public final speed(F)Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind speed in ground plane."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 151
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;->speed:F

    return-object p0
.end method

.method public final speedZ(F)Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical wind speed."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Wind$Builder;->speedZ:F

    return-object p0
.end method
