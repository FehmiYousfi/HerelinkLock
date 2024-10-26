.class public final Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;
.super Ljava/lang/Object;
.source "Rangefinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private distance:F

.field private voltage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;
    .locals 4

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;->distance:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;->voltage:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;-><init>(FFLio/dronefleet/mavlink/ardupilotmega/Rangefinder$1;)V

    return-object v0
.end method

.method public final distance(F)Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 114
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;->distance:F

    return-object p0
.end method

.method public final voltage(F)Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Raw voltage if available, zero otherwise."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 127
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;->voltage:F

    return-object p0
.end method
