.class public final Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;
.super Ljava/lang/Object;
.source "Battery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Battery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currentBattery:I

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Battery2;
    .locals 4

    .line 139
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Battery2;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;->voltage:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;->currentBattery:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/ardupilotmega/Battery2;-><init>(IILio/dronefleet/mavlink/ardupilotmega/Battery2$1;)V

    return-object v0
.end method

.method public final currentBattery(I)Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery current, -1: autopilot\n                does not measure the current."
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 134
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;->currentBattery:I

    return-object p0
.end method

.method public final voltage(I)Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Voltage."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 119
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Battery2$Builder;->voltage:I

    return-object p0
.end method
