.class public final Lio/dronefleet/mavlink/common/ButtonChange$Builder;
.super Ljava/lang/Object;
.source "ButtonChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ButtonChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private lastChangeMs:J

.field private state:I

.field private timeBootMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ButtonChange;
    .locals 8

    .line 171
    new-instance v7, Lio/dronefleet/mavlink/common/ButtonChange;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/ButtonChange$Builder;->timeBootMs:J

    iget-wide v3, p0, Lio/dronefleet/mavlink/common/ButtonChange$Builder;->lastChangeMs:J

    iget v5, p0, Lio/dronefleet/mavlink/common/ButtonChange$Builder;->state:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/ButtonChange;-><init>(JJILio/dronefleet/mavlink/common/ButtonChange$1;)V

    return-object v7
.end method

.method public final lastChangeMs(J)Lio/dronefleet/mavlink/common/ButtonChange$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time of last change of button\n                state."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 153
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ButtonChange$Builder;->lastChangeMs:J

    return-object p0
.end method

.method public final state(I)Lio/dronefleet/mavlink/common/ButtonChange$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap for state of buttons."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 166
    iput p1, p0, Lio/dronefleet/mavlink/common/ButtonChange$Builder;->state:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/ButtonChange$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 139
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ButtonChange$Builder;->timeBootMs:J

    return-object p0
.end method
