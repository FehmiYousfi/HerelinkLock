.class public final Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;
.super Ljava/lang/Object;
.source "Rpm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Rpm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private rpm1:F

.field private rpm2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Rpm;
    .locals 4

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Rpm;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;->rpm1:F

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;->rpm2:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/ardupilotmega/Rpm;-><init>(FFLio/dronefleet/mavlink/ardupilotmega/Rpm$1;)V

    return-object v0
.end method

.method public final rpm1(F)Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RPM Sensor1."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 114
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;->rpm1:F

    return-object p0
.end method

.method public final rpm2(F)Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RPM Sensor2."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 127
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rpm$Builder;->rpm2:F

    return-object p0
.end method
