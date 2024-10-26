.class public final Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;
.super Ljava/lang/Object;
.source "UalbertaSysStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mode:I

.field private navMode:I

.field private pilot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;
    .locals 5

    .line 167
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;->mode:I

    iget v2, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;->navMode:I

    iget v3, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;->pilot:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;-><init>(IIILio/dronefleet/mavlink/ualberta/UalbertaSysStatus$1;)V

    return-object v0
.end method

.method public final mode(I)Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System mode, see UALBERTA_AUTOPILOT_MODE ENUM"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 136
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;->mode:I

    return-object p0
.end method

.method public final navMode(I)Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Navigation mode, see UALBERTA_NAV_MODE ENUM"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 149
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;->navMode:I

    return-object p0
.end method

.method public final pilot(I)Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pilot mode, see UALBERTA_PILOT_MODE"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 162
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;->pilot:I

    return-object p0
.end method
