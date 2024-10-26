.class public final Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
.super Ljava/lang/Object;
.source "EscTelemetry13To16.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:[I

.field private current:[I

.field private rpm:[I

.field private temperature:[B

.field private totalcurrent:[I

.field private voltage:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16;
    .locals 9

    .line 287
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->temperature:[B

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->voltage:[I

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->current:[I

    iget-object v4, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->totalcurrent:[I

    iget-object v5, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->rpm:[I

    iget-object v6, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->count:[I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16;-><init>([B[I[I[I[I[ILio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$1;)V

    return-object v8
.end method

.method public final count([I)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "count of telemetry packets received (wraps at\n                65535)."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 282
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->count:[I

    return-object p0
.end method

.method public final current([I)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Current."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 239
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->current:[I

    return-object p0
.end method

.method public final rpm([I)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "RPM (eRPM)."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 267
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->rpm:[I

    return-object p0
.end method

.method public final temperature([B)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Temperature."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 211
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->temperature:[B

    return-object p0
.end method

.method public final totalcurrent([I)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Total current."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 253
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->totalcurrent:[I

    return-object p0
.end method

.method public final voltage([I)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Voltage."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 225
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry13To16$Builder;->voltage:[I

    return-object p0
.end method
