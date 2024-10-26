.class public final Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;
.super Ljava/lang/Object;
.source "Meminfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Meminfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private brkval:I

.field private freemem:I

.field private freemem32:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final brkval(I)Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heap top."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 137
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;->brkval:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Meminfo;
    .locals 7

    .line 169
    new-instance v6, Lio/dronefleet/mavlink/ardupilotmega/Meminfo;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;->brkval:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;->freemem:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;->freemem32:J

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/ardupilotmega/Meminfo;-><init>(IIJLio/dronefleet/mavlink/ardupilotmega/Meminfo$1;)V

    return-object v6
.end method

.method public final freemem(I)Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Free memory."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 150
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;->freemem:I

    return-object p0
.end method

.method public final freemem32(J)Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Free memory (32 bit)."
        extension = true
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 164
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Meminfo$Builder;->freemem32:J

    return-object p0
.end method
