.class public final Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;
.super Ljava/lang/Object;
.source "MidLvlCmds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/MidLvlCmds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hcommand:F

.field private rcommand:F

.field private target:I

.field private ucommand:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/MidLvlCmds;
    .locals 7

    .line 204
    new-instance v6, Lio/dronefleet/mavlink/slugs/MidLvlCmds;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->hcommand:F

    iget v3, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->ucommand:F

    iget v4, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->rcommand:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/slugs/MidLvlCmds;-><init>(IFFFLio/dronefleet/mavlink/slugs/MidLvlCmds$1;)V

    return-object v6
.end method

.method public final hcommand(F)Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded altitude (MSL)"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 173
    iput p1, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->hcommand:F

    return-object p0
.end method

.method public final rcommand(F)Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded Turnrate"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 199
    iput p1, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->rcommand:F

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the commands"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 160
    iput p1, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->target:I

    return-object p0
.end method

.method public final ucommand(F)Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Commanded Airspeed"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 186
    iput p1, p0, Lio/dronefleet/mavlink/slugs/MidLvlCmds$Builder;->ucommand:F

    return-object p0
.end method
